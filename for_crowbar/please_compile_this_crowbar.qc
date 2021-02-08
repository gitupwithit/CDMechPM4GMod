$modelname "sm/sm.mdl"

$model "sm" "reference.smd"

$cdmaterials "sm"

$includemodel "m_anm.mdl"
$includemodel "m_gst.mdl"
$includemodel "m_pst.mdl"
$includemodel "m_shd.mdl"
$includemodel "m_ss.mdl"

$surfaceprop "metal"

$contents "solid"

$eyeposition -0.000 -0.000 70.000
$illumposition -0.000 0.637 36.119
$sequence ragdoll "ragdoll" ACT_DIERAGDOLL 1 fps 30.00

$attachment "forward" "ValveBiped.forward" -0.00 0.00 0.00 rotate 0.00 -0.00 -0.00
$attachment "grenade0" "ValveBiped.Bip01_Pelvis" 7.45 4.24 -3.33 rotate -13.05 173.19 92.40
$attachment "grenade1" "ValveBiped.Bip01_Pelvis" 2.13 4.48 -6.15 rotate -81.11 178.93 91.12
$attachment "grenade2" "ValveBiped.Bip01_Pelvis" -7.50 3.33 2.16 rotate 22.39 2.47 -86.84
$attachment "grenade3" "ValveBiped.Bip01_Pelvis" -7.89 4.44 -4.03 rotate -33.13 -2.70 -87.60
$attachment "pistol" "ValveBiped.Bip01_R_Thigh" -0.93 3.33 -5.94 rotate 0.94 -1.57 80.10
$attachment "primary" "ValveBiped.Bip01_Spine2" 13.03 -3.98 -7.48 rotate -17.39 177.19 -4.18
$attachment "eholster" "ValveBiped.Bip01_L_Thigh" 5.15 -0.56 5.20 rotate 3.68 -91.56 99.67
$attachment "c4" "ValveBiped.Bip01_Spine2" 13.67 -7.55 0.95 rotate -29.12 65.25 22.32
$attachment "lfoot" "ValveBiped.Bip01_L_Foot" 0.00 5.20 0.00 rotate -0.00 0.00 -0.00
$attachment "rfoot" "ValveBiped.Bip01_R_Foot" -0.00 5.20 0.00 rotate 0.00 -0.00 0.00
$attachment "muzzle_flash" "ValveBiped.Bip01_L_Hand" -0.00 0.00 0.00 rotate -0.00 -0.00 0.00
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0

$ikchain rhand ValveBiped.Bip01_R_Hand knee  0.707 0.707 0.000
$ikchain lhand ValveBiped.Bip01_L_Hand knee  0.707 0.707 0.000
$ikchain rfoot ValveBiped.Bip01_R_Foot knee  0.707 -0.707 0.000
$ikchain lfoot ValveBiped.Bip01_L_Foot knee  0.707 -0.707 0.000

$collisionjoints "phymodel.smd" {

	$mass 100.0
	$inertia 10.00
	$damping 0.05
	$rotdamping 5.00
	$rootbone "valvebiped.bip01_pelvis"
	$jointrotdamping "valvebiped.bip01_pelvis" 3.00

	$jointmassbias "valvebiped.bip01_l_thigh" 7.00
	$jointrotdamping "valvebiped.bip01_l_thigh" 7.00
	$jointconstrain "valvebiped.bip01_l_thigh" x limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -10.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -55.00 25.00 0.00

	$jointmassbias "valvebiped.bip01_l_calf" 4.00
	$jointconstrain "valvebiped.bip01_l_calf" x limit -10.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit -5.00 5.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit -10.00 115.00 0.00

	$jointmassbias "valvebiped.bip01_l_foot" 2.00
	$jointconstrain "valvebiped.bip01_l_foot" x limit -1.00 -1.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -19.00 19.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -15.00 35.00 0.00

	$jointmassbias "valvebiped.bip01_r_thigh" 7.00
	$jointrotdamping "valvebiped.bip01_r_thigh" 7.00
	$jointconstrain "valvebiped.bip01_r_thigh" x limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -10.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -55.00 25.00 0.00

	$jointmassbias "valvebiped.bip01_r_calf" 4.00
	$jointconstrain "valvebiped.bip01_r_calf" x limit -10.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit -5.00 5.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit -10.00 115.00 0.00

	$jointmassbias "valvebiped.bip01_r_foot" 2.00
	$jointconstrain "valvebiped.bip01_r_foot" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -21.00 6.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -15.00 35.00 0.00

	$jointmassbias "valvebiped.bip01_r_toe0" 2.00
	$jointconstrain "valvebiped.bip01_r_toe0" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_toe0" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_toe0" z limit -40.00 0.00 0.00

	$jointmassbias "valvebiped.bip01_spine1" 8.00
	$jointconstrain "valvebiped.bip01_spine1" x limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine1" y limit -16.00 16.00 0.00
	$jointconstrain "valvebiped.bip01_spine1" z limit -20.00 30.00 0.00

	$jointmassbias "valvebiped.bip01_spine2" 9.00
	$jointconstrain "valvebiped.bip01_spine2" x limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" z limit -20.00 20.00 0.00

	$jointconstrain "valvebiped.bip01_l_clavicle" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_clavicle" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_clavicle" z limit 0.00 0.00 0.00

	$jointmassbias "valvebiped.bip01_l_upperarm" 5.00
	$jointrotdamping "valvebiped.bip01_l_upperarm" 2.00
	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -15.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -40.00 32.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -80.00 25.00 0.00

	$jointconstrain "valvebiped.bip01_r_clavicle" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_clavicle" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_clavicle" z limit 0.00 0.00 0.00

	$jointmassbias "valvebiped.bip01_r_upperarm" 5.00
	$jointrotdamping "valvebiped.bip01_r_upperarm" 2.00
	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -15.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -40.00 32.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -80.00 25.00 0.00

	$jointmassbias "valvebiped.bip01_r_forearm" 4.00
	$jointrotdamping "valvebiped.bip01_r_forearm" 4.00
	$jointconstrain "valvebiped.bip01_r_forearm" x limit -40.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -120.00 10.00 0.00

	$jointrotdamping "valvebiped.bip01_r_hand" 1.00
	$jointconstrain "valvebiped.bip01_r_hand" x limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit -35.00 35.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -50.00 50.00 0.00

	$jointmassbias "valvebiped.bip01_l_forearm" 4.00
	$jointrotdamping "valvebiped.bip01_l_forearm" 4.00
	$jointconstrain "valvebiped.bip01_l_forearm" x limit -40.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -120.00 10.00 0.00

	$jointrotdamping "valvebiped.bip01_l_hand" 1.00
	$jointconstrain "valvebiped.bip01_l_hand" x limit -25.00 25.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit -35.00 35.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -50.00 50.00 0.00

	$jointmassbias "valvebiped.bip01_l_toe0" 2.00
	$jointconstrain "valvebiped.bip01_l_toe0" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_toe0" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_toe0" z limit -40.00 0.00 0.00

	$jointconstrain "valvebiped.bip01_head1" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -30.00 30.00 0.00
}
