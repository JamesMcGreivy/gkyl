#include <PrimMomentsModDecl.h> 
 
using namespace Eigen; 
 
void GkBGKCrossPrimMoments2x2vMax_P1(binOpData_t *dataDiv, const double betaGreenep1, const double mSelf, const double nuSelf, const double *m0Self, const double *uSelf, const double *vtSqSelf, const double mOther, const double nuOther, const double *m0Other, const double *uOther, const double *vtSqOther, double *uCrossSelf, double *vtSqCrossSelf, double *uCrossOther, double *vtSqCrossOther) 
{ 
  // betaGreenep1:     free parameter beta+1. This has to be >0. 
  // m, nu:            mass and collisionality. 
  // m0:               zeroth moment of the distribution function. 
  // u,vtSq:           self primitive moments: mean flow velocity and thermal speed squared. 
  // uCross,vtSqCross: cross primitive moments: mean flow velocity and thermal speed squared. 
 
  // If a corner value is below zero, use cell average m0.
  bool cellAvg = false;
  if ((-0.8660254037844386*m0Self[2])-0.8660254037844386*m0Self[1]+0.5*m0Self[0] < 0) { 
    cellAvg = true;
  }
  if (0.8660254037844386*m0Self[2]-0.8660254037844386*m0Self[1]+0.5*m0Self[0] < 0) { 
    cellAvg = true;
  }
  if ((-0.8660254037844386*m0Self[2])+0.8660254037844386*m0Self[1]+0.5*m0Self[0] < 0) { 
    cellAvg = true;
  }
  if (0.8660254037844386*m0Self[2]+0.8660254037844386*m0Self[1]+0.5*m0Self[0] < 0) { 
    cellAvg = true;
  }
 
  double m0rSelf[3]; 
  if (cellAvg) { 
    m0rSelf[0] = m0Self[0]; 
    m0rSelf[1] = 0.0; 
    m0rSelf[2] = 0.0; 
  } else { 
    m0rSelf[0] = m0Self[0]; 
    m0rSelf[1] = m0Self[1]; 
    m0rSelf[2] = m0Self[2]; 
  } 
 
  if ((-0.8660254037844386*m0Other[2])-0.8660254037844386*m0Other[1]+0.5*m0Other[0] < 0) { 
    cellAvg = true;
  }
  if (0.8660254037844386*m0Other[2]-0.8660254037844386*m0Other[1]+0.5*m0Other[0] < 0) { 
    cellAvg = true;
  }
  if ((-0.8660254037844386*m0Other[2])+0.8660254037844386*m0Other[1]+0.5*m0Other[0] < 0) { 
    cellAvg = true;
  }
  if (0.8660254037844386*m0Other[2]+0.8660254037844386*m0Other[1]+0.5*m0Other[0] < 0) { 
    cellAvg = true;
  }
 
  double m0rOther[3]; 
  if (cellAvg) { 
    m0rOther[0] = m0Other[0]; 
    m0rOther[1] = 0.0; 
    m0rOther[2] = 0.0; 
  } else { 
    m0rOther[0] = m0Other[0]; 
    m0rOther[1] = m0Other[1]; 
    m0rOther[2] = m0Other[2]; 
  } 
 
  double mnuSelf  = mSelf*nuSelf; 
  double mnuOther = mOther*nuOther; 
 
  double uRelDmnu[3]; 
 
  // ... Divide (uSelfX-uOtherX)/(mnuSelf*m0Self+mnuOther*m0Other) ... // 
  // Compute (uSelf-uOther). 
  uRelDmnu[0] = uSelf[0]-1.0*uOther[0]; 
  uRelDmnu[1] = uSelf[1]-1.0*uOther[1]; 
  uRelDmnu[2] = uSelf[2]-1.0*uOther[2]; 
  // Fill AEM matrix. 
  dataDiv->AEM_S = Eigen::MatrixXd::Zero(3,3); 
  dataDiv->AEM_S(0,0) = 0.5*m0rSelf[0]*mnuSelf+0.5*m0rOther[0]*mnuOther; 
  dataDiv->AEM_S(0,1) = 0.5*m0rSelf[1]*mnuSelf+0.5*m0rOther[1]*mnuOther; 
  dataDiv->AEM_S(0,2) = 0.5*m0rSelf[2]*mnuSelf+0.5*m0rOther[2]*mnuOther; 
  dataDiv->AEM_S(1,0) = 0.5*m0rSelf[1]*mnuSelf+0.5*m0rOther[1]*mnuOther; 
  dataDiv->AEM_S(1,1) = 0.5*m0rSelf[0]*mnuSelf+0.5*m0rOther[0]*mnuOther; 
  dataDiv->AEM_S(2,0) = 0.5*m0rSelf[2]*mnuSelf+0.5*m0rOther[2]*mnuOther; 
  dataDiv->AEM_S(2,2) = 0.5*m0rSelf[0]*mnuSelf+0.5*m0rOther[0]*mnuOther; 
  // Fill BEV. 
  dataDiv->BEV_S << uRelDmnu[0],uRelDmnu[1],uRelDmnu[2]; 
  // Invert system of equations from weak division. 
  dataDiv->u_S = dataDiv->AEM_S.colPivHouseholderQr().solve(dataDiv->BEV_S); 
  // Copy data from Eigen vector. 
  Eigen::Map<VectorXd>(uRelDmnu+0,3,1) = dataDiv->u_S; 
 
  // ... Component 1 of cross-velocity of this species ... // 
  uCrossSelf[0] = ((-0.5*m0rOther[2]*uRelDmnu[2])-0.5*m0rOther[1]*uRelDmnu[1]-0.5*m0rOther[0]*uRelDmnu[0])*betaGreenep1*mnuOther+uSelf[0]; 
  uCrossSelf[1] = ((-0.5*m0rOther[0]*uRelDmnu[1])-0.5*uRelDmnu[0]*m0rOther[1])*betaGreenep1*mnuOther+uSelf[1]; 
  uCrossSelf[2] = ((-0.5*m0rOther[0]*uRelDmnu[2])-0.5*uRelDmnu[0]*m0rOther[2])*betaGreenep1*mnuOther+uSelf[2]; 
 
  // ... Component 1 of cross-velocity of the other species ... // 
  uCrossOther[0] = (0.5*m0rSelf[2]*uRelDmnu[2]+0.5*m0rSelf[1]*uRelDmnu[1]+0.5*m0rSelf[0]*uRelDmnu[0])*betaGreenep1*mnuSelf+uOther[0]; 
  uCrossOther[1] = (0.5*m0rSelf[0]*uRelDmnu[1]+0.5*uRelDmnu[0]*m0rSelf[1])*betaGreenep1*mnuSelf+uOther[1]; 
  uCrossOther[2] = (0.5*m0rSelf[0]*uRelDmnu[2]+0.5*uRelDmnu[0]*m0rSelf[2])*betaGreenep1*mnuSelf+uOther[2]; 
 
  double uRelSq[3]; 
  // Zero out array with dot product of uSelf-uOther with itself. 
  for (unsigned short int vd=0; vd<3; vd++) 
  { 
    uRelSq[vd] = 0.0; 
  } 
  for (unsigned short int vd=0; vd<1; vd++) 
  { 
    unsigned short int a0 = 3*vd; 
    // Contribution to dot-product from weak multiplication of vd component. 
    uRelSq[0] += 0.5*uSelf[a0+2]*uSelf[a0+2]-1.0*uOther[a0+2]*uSelf[a0+2]+0.5*uOther[a0+2]*uOther[a0+2]+0.5*uSelf[a0+1]*uSelf[a0+1]-1.0*uOther[a0+1]*uSelf[a0+1]+0.5*uOther[a0+1]*uOther[a0+1]+0.5*uSelf[a0]*uSelf[a0]-1.0*uOther[a0]*uSelf[a0]+0.5*uOther[a0]*uOther[a0]; 
    uRelSq[1] += uSelf[a0]*uSelf[a0+1]-1.0*uOther[a0]*uSelf[a0+1]-1.0*uSelf[a0]*uOther[a0+1]+uOther[a0]*uOther[a0+1]; 
    uRelSq[2] += uSelf[a0]*uSelf[a0+2]-1.0*uOther[a0]*uSelf[a0+2]-1.0*uSelf[a0]*uOther[a0+2]+uOther[a0]*uOther[a0+2]; 
  } 
 
  double relKinE[3]; 
  // Zero out array with ((beta+1)/2)*(mSelf+mOther)*(uSelf-uOther) . uRelDmnu. 
  for (unsigned short int vd=0; vd<3; vd++) 
  { 
    relKinE[vd] = 0.0; 
  } 
  for (unsigned short int vd=0; vd<1; vd++) 
  { 
    unsigned short int a0 = 3*vd; 
    // Contribution to dot-product from weak multiplication of vd component. 
    relKinE[0] += betaGreenep1*(0.25*uRelDmnu[a0+2]*uSelf[a0+2]*mSelf-0.25*uOther[a0+2]*uRelDmnu[a0+2]*mSelf+0.25*uRelDmnu[a0+1]*uSelf[a0+1]*mSelf-0.25*uOther[a0+1]*uRelDmnu[a0+1]*mSelf+0.25*uRelDmnu[a0]*uSelf[a0]*mSelf-0.25*uOther[a0]*uRelDmnu[a0]*mSelf+0.25*uRelDmnu[a0+2]*uSelf[a0+2]*mOther-0.25*uOther[a0+2]*uRelDmnu[a0+2]*mOther+0.25*uRelDmnu[a0+1]*uSelf[a0+1]*mOther-0.25*uOther[a0+1]*uRelDmnu[a0+1]*mOther+0.25*uRelDmnu[a0]*uSelf[a0]*mOther-0.25*uOther[a0]*uRelDmnu[a0]*mOther); 
    relKinE[1] += betaGreenep1*(0.25*uRelDmnu[a0]*uSelf[a0+1]*mSelf+0.25*uSelf[a0]*uRelDmnu[a0+1]*mSelf-0.25*uOther[a0]*uRelDmnu[a0+1]*mSelf-0.25*uRelDmnu[a0]*uOther[a0+1]*mSelf+0.25*uRelDmnu[a0]*uSelf[a0+1]*mOther+0.25*uSelf[a0]*uRelDmnu[a0+1]*mOther-0.25*uOther[a0]*uRelDmnu[a0+1]*mOther-0.25*uRelDmnu[a0]*uOther[a0+1]*mOther); 
    relKinE[2] += betaGreenep1*(0.25*uRelDmnu[a0]*uSelf[a0+2]*mSelf+0.25*uSelf[a0]*uRelDmnu[a0+2]*mSelf-0.25*uOther[a0]*uRelDmnu[a0+2]*mSelf-0.25*uRelDmnu[a0]*uOther[a0+2]*mSelf+0.25*uRelDmnu[a0]*uSelf[a0+2]*mOther+0.25*uSelf[a0]*uRelDmnu[a0+2]*mOther-0.25*uOther[a0]*uRelDmnu[a0+2]*mOther-0.25*uRelDmnu[a0]*uOther[a0+2]*mOther); 
  } 
 
  double Tdiff[3]; 
  Tdiff[0] = vtSqSelf[0]*mSelf-1.0*vtSqOther[0]*mOther; 
  Tdiff[1] = vtSqSelf[1]*mSelf-1.0*vtSqOther[1]*mOther; 
  Tdiff[2] = vtSqSelf[2]*mSelf-1.0*vtSqOther[2]*mOther; 
 
  double diffSelf[3]; 
  diffSelf[0] = (0.5*m0rOther[2]*relKinE[2]+0.5*m0rOther[1]*relKinE[1]+0.5*m0rOther[0]*relKinE[0])*mnuOther-1.0*uRelSq[0]*mOther+3.0*Tdiff[0]; 
  diffSelf[1] = (0.5*m0rOther[0]*relKinE[1]+0.5*relKinE[0]*m0rOther[1])*mnuOther-1.0*uRelSq[1]*mOther+3.0*Tdiff[1]; 
  diffSelf[2] = (0.5*m0rOther[0]*relKinE[2]+0.5*relKinE[0]*m0rOther[2])*mnuOther-1.0*uRelSq[2]*mOther+3.0*Tdiff[2]; 
 
  // Divide diffSelf by mnuSelf*m0Self+mnuOther*m0Other. 
  dataDiv->BEV_S << diffSelf[0],diffSelf[1],diffSelf[2]; 
  // Invert system of equations from weak division. dataDiv.AEM was filled earlier. 
  dataDiv->u_S = dataDiv->AEM_S.colPivHouseholderQr().solve(dataDiv->BEV_S); 
  // Copy data from Eigen vector. 
  double vtSqDeltaSelf[3]; 
  Eigen::Map<VectorXd>(vtSqDeltaSelf,3,1) = dataDiv->u_S; 
 
  double diffOther[3]; 
  diffOther[0] = (0.5*m0rSelf[2]*relKinE[2]+0.5*m0rSelf[1]*relKinE[1]+0.5*m0rSelf[0]*relKinE[0])*mnuSelf-1.0*uRelSq[0]*mSelf-3.0*Tdiff[0]; 
  diffOther[1] = (0.5*m0rSelf[0]*relKinE[1]+0.5*relKinE[0]*m0rSelf[1])*mnuSelf-1.0*uRelSq[1]*mSelf-3.0*Tdiff[1]; 
  diffOther[2] = (0.5*m0rSelf[0]*relKinE[2]+0.5*relKinE[0]*m0rSelf[2])*mnuSelf-1.0*uRelSq[2]*mSelf-3.0*Tdiff[2]; 
 
  // Divide diffOther by mnuSelf*m0Self+mnuOther*m0Other. 
  dataDiv->BEV_S << diffOther[0],diffOther[1],diffOther[2]; 
  // Invert system of equations from weak division. dataDiv.AEM was filled earlier. 
  dataDiv->u_S = dataDiv->AEM_S.colPivHouseholderQr().solve(dataDiv->BEV_S); 
  // Copy data from Eigen vector. 
  double vtSqDeltaOther[3]; 
  Eigen::Map<VectorXd>(vtSqDeltaOther,3,1) = dataDiv->u_S; 
 
  // ... Cross-thermal speeds (squared) ... // 
  double deltaFacOther = (0.6666666666666666*mnuOther)/(mSelf+mOther); 
  vtSqCrossSelf[0] = (-0.5*m0rOther[2]*vtSqDeltaSelf[2]*deltaFacOther)-0.5*m0rOther[1]*vtSqDeltaSelf[1]*deltaFacOther-0.5*m0rOther[0]*vtSqDeltaSelf[0]*deltaFacOther+vtSqSelf[0]; 
  vtSqCrossSelf[1] = (-0.5*m0rOther[0]*vtSqDeltaSelf[1]*deltaFacOther)-0.5*vtSqDeltaSelf[0]*m0rOther[1]*deltaFacOther+vtSqSelf[1]; 
  vtSqCrossSelf[2] = (-0.5*m0rOther[0]*vtSqDeltaSelf[2]*deltaFacOther)-0.5*vtSqDeltaSelf[0]*m0rOther[2]*deltaFacOther+vtSqSelf[2]; 
 
  double deltaFacSelf = (0.6666666666666666*mnuSelf)/(mSelf+mOther); 
  vtSqCrossOther[0] = (-0.5*m0rSelf[2]*vtSqDeltaOther[2]*deltaFacSelf)-0.5*m0rSelf[1]*vtSqDeltaOther[1]*deltaFacSelf-0.5*m0rSelf[0]*vtSqDeltaOther[0]*deltaFacSelf+vtSqOther[0]; 
  vtSqCrossOther[1] = (-0.5*m0rSelf[0]*vtSqDeltaOther[1]*deltaFacSelf)-0.5*vtSqDeltaOther[0]*m0rSelf[1]*deltaFacSelf+vtSqOther[1]; 
  vtSqCrossOther[2] = (-0.5*m0rSelf[0]*vtSqDeltaOther[2]*deltaFacSelf)-0.5*vtSqDeltaOther[0]*m0rSelf[2]*deltaFacSelf+vtSqOther[2]; 
 
} 
 
