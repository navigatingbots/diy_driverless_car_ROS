
;
cropping2d_1_inputPlaceholder*
dtype0*
shape: 
]
 cropping2d_1/strided_slice/stackConst*
dtype0*%
valueB"    2           
_
"cropping2d_1/strided_slice/stack_1Const*%
valueB"    ìÿÿÿ        *
dtype0
_
"cropping2d_1/strided_slice/stack_2Const*
dtype0*%
valueB"            
¢
cropping2d_1/strided_sliceStridedSlicecropping2d_1_input cropping2d_1/strided_slice/stack"cropping2d_1/strided_slice/stack_1"cropping2d_1/strided_slice/stack_2*
end_mask*

begin_mask	*
ellipsis_mask *
shrink_axis_mask *
new_axis_mask *
T0*
Index0
;
lambda_1/div/yConst*
valueB
 *  C*
dtype0
L
lambda_1/divRealDivcropping2d_1/strided_slicelambda_1/div/y*
T0
;
lambda_1/sub/yConst*
valueB
 *   ?*
dtype0
:
lambda_1/subSublambda_1/divlambda_1/sub/y*
T0
=
lambda_1/PlaceholderPlaceholder*
shape: *
dtype0
=
lambda_1/div_1/yConst*
dtype0*
valueB
 *  C
J
lambda_1/div_1RealDivlambda_1/Placeholderlambda_1/div_1/y*
T0
=
lambda_1/sub_1/yConst*
dtype0*
valueB
 *   ?
@
lambda_1/sub_1Sublambda_1/div_1lambda_1/sub_1/y*
T0
X
conv_1/random_uniform/shapeConst*%
valueB"            *
dtype0
F
conv_1/random_uniform/minConst*
dtype0*
valueB
 *YÁ½
F
conv_1/random_uniform/maxConst*
valueB
 *YÁ=*
dtype0

#conv_1/random_uniform/RandomUniformRandomUniformconv_1/random_uniform/shape*
seed2ÖÖ*
T0*
seed±ÿå)*
dtype0
_
conv_1/random_uniform/subSubconv_1/random_uniform/maxconv_1/random_uniform/min*
T0
i
conv_1/random_uniform/mulMul#conv_1/random_uniform/RandomUniformconv_1/random_uniform/sub*
T0
[
conv_1/random_uniformAddconv_1/random_uniform/mulconv_1/random_uniform/min*
T0
i
conv_1/kernel
VariableV2*
shape:*
shared_name *
dtype0*
	container 

conv_1/kernel/AssignAssignconv_1/kernelconv_1/random_uniform*
use_locking(*
T0* 
_class
loc:@conv_1/kernel*
validate_shape(
X
conv_1/kernel/readIdentityconv_1/kernel* 
_class
loc:@conv_1/kernel*
T0
=
conv_1/ConstConst*
dtype0*
valueB*    
[
conv_1/bias
VariableV2*
shared_name *
dtype0*
shape:*
	container 

conv_1/bias/AssignAssignconv_1/biasconv_1/Const*
use_locking(*
T0*
_class
loc:@conv_1/bias*
validate_shape(
R
conv_1/bias/readIdentityconv_1/bias*
T0*
_class
loc:@conv_1/bias
U
conv_1/convolution/ShapeConst*%
valueB"            *
dtype0
U
 conv_1/convolution/dilation_rateConst*
dtype0*
valueB"      

conv_1/convolutionConv2Dlambda_1/subconv_1/kernel/read*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
_
conv_1/BiasAddBiasAddconv_1/convolutionconv_1/bias/read*
T0*
data_formatNHWC
,
conv_1/ReluReluconv_1/BiasAdd*
T0
X
conv_2/random_uniform/shapeConst*
dtype0*%
valueB"         $   
F
conv_2/random_uniform/minConst*
dtype0*
valueB
 *â½
F
conv_2/random_uniform/maxConst*
dtype0*
valueB
 *â=

#conv_2/random_uniform/RandomUniformRandomUniformconv_2/random_uniform/shape*
seed±ÿå)*
T0*
dtype0*
seed2÷ä
_
conv_2/random_uniform/subSubconv_2/random_uniform/maxconv_2/random_uniform/min*
T0
i
conv_2/random_uniform/mulMul#conv_2/random_uniform/RandomUniformconv_2/random_uniform/sub*
T0
[
conv_2/random_uniformAddconv_2/random_uniform/mulconv_2/random_uniform/min*
T0
i
conv_2/kernel
VariableV2*
shape:$*
shared_name *
dtype0*
	container 

conv_2/kernel/AssignAssignconv_2/kernelconv_2/random_uniform* 
_class
loc:@conv_2/kernel*
T0*
validate_shape(*
use_locking(
X
conv_2/kernel/readIdentityconv_2/kernel* 
_class
loc:@conv_2/kernel*
T0
=
conv_2/ConstConst*
valueB$*    *
dtype0
[
conv_2/bias
VariableV2*
shape:$*
shared_name *
dtype0*
	container 

conv_2/bias/AssignAssignconv_2/biasconv_2/Const*
use_locking(*
T0*
_class
loc:@conv_2/bias*
validate_shape(
R
conv_2/bias/readIdentityconv_2/bias*
_class
loc:@conv_2/bias*
T0
U
conv_2/convolution/ShapeConst*
dtype0*%
valueB"         $   
U
 conv_2/convolution/dilation_rateConst*
dtype0*
valueB"      

conv_2/convolutionConv2Dconv_1/Reluconv_2/kernel/read*
paddingVALID*
strides
*
data_formatNHWC*
T0*
use_cudnn_on_gpu(
_
conv_2/BiasAddBiasAddconv_2/convolutionconv_2/bias/read*
data_formatNHWC*
T0
,
conv_2/ReluReluconv_2/BiasAdd*
T0
X
conv_3/random_uniform/shapeConst*%
valueB"      $   0   *
dtype0
F
conv_3/random_uniform/minConst*
valueB
 *¿ðZ½*
dtype0
F
conv_3/random_uniform/maxConst*
valueB
 *¿ðZ=*
dtype0

#conv_3/random_uniform/RandomUniformRandomUniformconv_3/random_uniform/shape*
dtype0*
seed±ÿå)*
T0*
seed2éïÂ
_
conv_3/random_uniform/subSubconv_3/random_uniform/maxconv_3/random_uniform/min*
T0
i
conv_3/random_uniform/mulMul#conv_3/random_uniform/RandomUniformconv_3/random_uniform/sub*
T0
[
conv_3/random_uniformAddconv_3/random_uniform/mulconv_3/random_uniform/min*
T0
i
conv_3/kernel
VariableV2*
	container *
shape:$0*
dtype0*
shared_name 

conv_3/kernel/AssignAssignconv_3/kernelconv_3/random_uniform*
use_locking(*
T0* 
_class
loc:@conv_3/kernel*
validate_shape(
X
conv_3/kernel/readIdentityconv_3/kernel* 
_class
loc:@conv_3/kernel*
T0
=
conv_3/ConstConst*
dtype0*
valueB0*    
[
conv_3/bias
VariableV2*
shape:0*
shared_name *
dtype0*
	container 

conv_3/bias/AssignAssignconv_3/biasconv_3/Const*
use_locking(*
T0*
_class
loc:@conv_3/bias*
validate_shape(
R
conv_3/bias/readIdentityconv_3/bias*
_class
loc:@conv_3/bias*
T0
U
conv_3/convolution/ShapeConst*%
valueB"      $   0   *
dtype0
U
 conv_3/convolution/dilation_rateConst*
dtype0*
valueB"      

conv_3/convolutionConv2Dconv_2/Reluconv_3/kernel/read*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
_
conv_3/BiasAddBiasAddconv_3/convolutionconv_3/bias/read*
data_formatNHWC*
T0
,
conv_3/ReluReluconv_3/BiasAdd*
T0
H
spatial_dropout2d_1/ShapeShapeconv_3/Relu*
out_type0*
T0
U
'spatial_dropout2d_1/strided_slice/stackConst*
valueB: *
dtype0
W
)spatial_dropout2d_1/strided_slice/stack_1Const*
valueB:*
dtype0
W
)spatial_dropout2d_1/strided_slice/stack_2Const*
valueB:*
dtype0
Å
!spatial_dropout2d_1/strided_sliceStridedSlicespatial_dropout2d_1/Shape'spatial_dropout2d_1/strided_slice/stack)spatial_dropout2d_1/strided_slice/stack_1)spatial_dropout2d_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
W
)spatial_dropout2d_1/strided_slice_1/stackConst*
valueB:*
dtype0
Y
+spatial_dropout2d_1/strided_slice_1/stack_1Const*
valueB:*
dtype0
Y
+spatial_dropout2d_1/strided_slice_1/stack_2Const*
dtype0*
valueB:
Í
#spatial_dropout2d_1/strided_slice_1StridedSlicespatial_dropout2d_1/Shape)spatial_dropout2d_1/strided_slice_1/stack+spatial_dropout2d_1/strided_slice_1/stack_1+spatial_dropout2d_1/strided_slice_1/stack_2*
new_axis_mask *
shrink_axis_mask*
T0*
Index0*
end_mask *

begin_mask *
ellipsis_mask 
Q
(spatial_dropout2d_1/keras_learning_phasePlaceholder*
dtype0
*
shape: 

spatial_dropout2d_1/cond/SwitchSwitch(spatial_dropout2d_1/keras_learning_phase(spatial_dropout2d_1/keras_learning_phase*
T0

Y
!spatial_dropout2d_1/cond/switch_tIdentity!spatial_dropout2d_1/cond/Switch:1*
T0

W
!spatial_dropout2d_1/cond/switch_fIdentityspatial_dropout2d_1/cond/Switch*
T0

_
 spatial_dropout2d_1/cond/pred_idIdentity(spatial_dropout2d_1/keras_learning_phase*
T0

o
spatial_dropout2d_1/cond/mul/yConst"^spatial_dropout2d_1/cond/switch_t*
dtype0*
valueB
 *  ?

#spatial_dropout2d_1/cond/mul/SwitchSwitchconv_3/Relu spatial_dropout2d_1/cond/pred_id*
T0*
_class
loc:@conv_3/Relu
s
spatial_dropout2d_1/cond/mulMul%spatial_dropout2d_1/cond/mul/Switch:1spatial_dropout2d_1/cond/mul/y*
T0
{
*spatial_dropout2d_1/cond/dropout/keep_probConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *   ?*
dtype0

7spatial_dropout2d_1/cond/dropout/random_uniform/shape/1Const"^spatial_dropout2d_1/cond/switch_t*
dtype0*
value	B :

7spatial_dropout2d_1/cond/dropout/random_uniform/shape/2Const"^spatial_dropout2d_1/cond/switch_t*
dtype0*
value	B :
Ê
<spatial_dropout2d_1/cond/dropout/random_uniform/shape/SwitchSwitch!spatial_dropout2d_1/strided_slice spatial_dropout2d_1/cond/pred_id*4
_class*
(&loc:@spatial_dropout2d_1/strided_slice*
T0
Ð
>spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch_1Switch#spatial_dropout2d_1/strided_slice_1 spatial_dropout2d_1/cond/pred_id*
T0*6
_class,
*(loc:@spatial_dropout2d_1/strided_slice_1
Ï
5spatial_dropout2d_1/cond/dropout/random_uniform/shapePack>spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch:17spatial_dropout2d_1/cond/dropout/random_uniform/shape/17spatial_dropout2d_1/cond/dropout/random_uniform/shape/2@spatial_dropout2d_1/cond/dropout/random_uniform/shape/Switch_1:1*

axis *
T0*
N

3spatial_dropout2d_1/cond/dropout/random_uniform/minConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *    *
dtype0

3spatial_dropout2d_1/cond/dropout/random_uniform/maxConst"^spatial_dropout2d_1/cond/switch_t*
valueB
 *  ?*
dtype0
º
=spatial_dropout2d_1/cond/dropout/random_uniform/RandomUniformRandomUniform5spatial_dropout2d_1/cond/dropout/random_uniform/shape*
seed±ÿå)*
T0*
dtype0*
seed2µ±
­
3spatial_dropout2d_1/cond/dropout/random_uniform/subSub3spatial_dropout2d_1/cond/dropout/random_uniform/max3spatial_dropout2d_1/cond/dropout/random_uniform/min*
T0
·
3spatial_dropout2d_1/cond/dropout/random_uniform/mulMul=spatial_dropout2d_1/cond/dropout/random_uniform/RandomUniform3spatial_dropout2d_1/cond/dropout/random_uniform/sub*
T0
©
/spatial_dropout2d_1/cond/dropout/random_uniformAdd3spatial_dropout2d_1/cond/dropout/random_uniform/mul3spatial_dropout2d_1/cond/dropout/random_uniform/min*
T0

$spatial_dropout2d_1/cond/dropout/addAdd*spatial_dropout2d_1/cond/dropout/keep_prob/spatial_dropout2d_1/cond/dropout/random_uniform*
T0
^
&spatial_dropout2d_1/cond/dropout/FloorFloor$spatial_dropout2d_1/cond/dropout/add*
T0

$spatial_dropout2d_1/cond/dropout/divRealDivspatial_dropout2d_1/cond/mul*spatial_dropout2d_1/cond/dropout/keep_prob*
T0

$spatial_dropout2d_1/cond/dropout/mulMul$spatial_dropout2d_1/cond/dropout/div&spatial_dropout2d_1/cond/dropout/Floor*
T0

!spatial_dropout2d_1/cond/Switch_1Switchconv_3/Relu spatial_dropout2d_1/cond/pred_id*
_class
loc:@conv_3/Relu*
T0

spatial_dropout2d_1/cond/MergeMerge!spatial_dropout2d_1/cond/Switch_1$spatial_dropout2d_1/cond/dropout/mul*
N*
T0
X
conv_4/random_uniform/shapeConst*%
valueB"      0   @   *
dtype0
F
conv_4/random_uniform/minConst*
dtype0*
valueB
 *³½
F
conv_4/random_uniform/maxConst*
valueB
 *³=*
dtype0

#conv_4/random_uniform/RandomUniformRandomUniformconv_4/random_uniform/shape*
seed±ÿå)*
T0*
dtype0*
seed2Ã
_
conv_4/random_uniform/subSubconv_4/random_uniform/maxconv_4/random_uniform/min*
T0
i
conv_4/random_uniform/mulMul#conv_4/random_uniform/RandomUniformconv_4/random_uniform/sub*
T0
[
conv_4/random_uniformAddconv_4/random_uniform/mulconv_4/random_uniform/min*
T0
i
conv_4/kernel
VariableV2*
	container *
shape:0@*
dtype0*
shared_name 

conv_4/kernel/AssignAssignconv_4/kernelconv_4/random_uniform*
use_locking(*
T0* 
_class
loc:@conv_4/kernel*
validate_shape(
X
conv_4/kernel/readIdentityconv_4/kernel*
T0* 
_class
loc:@conv_4/kernel
=
conv_4/ConstConst*
dtype0*
valueB@*    
[
conv_4/bias
VariableV2*
	container *
dtype0*
shared_name *
shape:@

conv_4/bias/AssignAssignconv_4/biasconv_4/Const*
validate_shape(*
_class
loc:@conv_4/bias*
T0*
use_locking(
R
conv_4/bias/readIdentityconv_4/bias*
_class
loc:@conv_4/bias*
T0
U
conv_4/convolution/ShapeConst*
dtype0*%
valueB"      0   @   
U
 conv_4/convolution/dilation_rateConst*
valueB"      *
dtype0
±
conv_4/convolutionConv2Dspatial_dropout2d_1/cond/Mergeconv_4/kernel/read*
use_cudnn_on_gpu(*
T0*
strides
*
data_formatNHWC*
paddingVALID
_
conv_4/BiasAddBiasAddconv_4/convolutionconv_4/bias/read*
data_formatNHWC*
T0
,
conv_4/ReluReluconv_4/BiasAdd*
T0
X
conv_5/random_uniform/shapeConst*
dtype0*%
valueB"      @   @   
F
conv_5/random_uniform/minConst*
valueB
 *:Í½*
dtype0
F
conv_5/random_uniform/maxConst*
dtype0*
valueB
 *:Í=

#conv_5/random_uniform/RandomUniformRandomUniformconv_5/random_uniform/shape*
dtype0*
seed±ÿå)*
T0*
seed2»þ
_
conv_5/random_uniform/subSubconv_5/random_uniform/maxconv_5/random_uniform/min*
T0
i
conv_5/random_uniform/mulMul#conv_5/random_uniform/RandomUniformconv_5/random_uniform/sub*
T0
[
conv_5/random_uniformAddconv_5/random_uniform/mulconv_5/random_uniform/min*
T0
i
conv_5/kernel
VariableV2*
shape:@@*
shared_name *
dtype0*
	container 

conv_5/kernel/AssignAssignconv_5/kernelconv_5/random_uniform*
validate_shape(* 
_class
loc:@conv_5/kernel*
T0*
use_locking(
X
conv_5/kernel/readIdentityconv_5/kernel* 
_class
loc:@conv_5/kernel*
T0
=
conv_5/ConstConst*
dtype0*
valueB@*    
[
conv_5/bias
VariableV2*
	container *
dtype0*
shared_name *
shape:@

conv_5/bias/AssignAssignconv_5/biasconv_5/Const*
use_locking(*
T0*
_class
loc:@conv_5/bias*
validate_shape(
R
conv_5/bias/readIdentityconv_5/bias*
T0*
_class
loc:@conv_5/bias
U
conv_5/convolution/ShapeConst*
dtype0*%
valueB"      @   @   
U
 conv_5/convolution/dilation_rateConst*
dtype0*
valueB"      

conv_5/convolutionConv2Dconv_4/Reluconv_5/kernel/read*
use_cudnn_on_gpu(*
T0*
strides
*
data_formatNHWC*
paddingVALID
_
conv_5/BiasAddBiasAddconv_5/convolutionconv_5/bias/read*
T0*
data_formatNHWC
,
conv_5/ReluReluconv_5/BiasAdd*
T0
>
flatten_1/ShapeShapeconv_5/Relu*
out_type0*
T0
K
flatten_1/strided_slice/stackConst*
dtype0*
valueB:
M
flatten_1/strided_slice/stack_1Const*
valueB: *
dtype0
M
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0

flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
shrink_axis_mask *
T0*
Index0*
end_mask*
new_axis_mask *

begin_mask *
ellipsis_mask 
=
flatten_1/ConstConst*
valueB: *
dtype0
f
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
T0*

Tidx0*
	keep_dims( 
D
flatten_1/stack/0Const*
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
X
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*
T0*

axis 
Q
flatten_1/ReshapeReshapeconv_5/Reluflatten_1/stack*
Tshape0*
T0
Q
dense_1/random_uniform/shapeConst*
dtype0*
valueB"À9    
G
dense_1/random_uniform/minConst*
dtype0*
valueB
 *Tå¼
G
dense_1/random_uniform/maxConst*
valueB
 *Tå<*
dtype0

$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
seed2®¡*
T0*
seed±ÿå)*
dtype0
b
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0
l
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0
^
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0
d
dense_1/kernel
VariableV2*
shared_name *
dtype0*
shape:
Às	*
	container 

dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*!
_class
loc:@dense_1/kernel*
T0*
validate_shape(*
use_locking(
[
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0
?
dense_1/ConstConst*
dtype0*
valueB	*    
]
dense_1/bias
VariableV2*
	container *
dtype0*
shared_name *
shape:	

dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
_class
loc:@dense_1/bias*
T0*
validate_shape(*
use_locking(
U
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0
o
dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *
transpose_a( *
T0
]
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
data_formatNHWC*
T0
|
dropout_1/cond/SwitchSwitch(spatial_dropout2d_1/keras_learning_phase(spatial_dropout2d_1/keras_learning_phase*
T0

E
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0

C
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
T0

U
dropout_1/cond/pred_idIdentity(spatial_dropout2d_1/keras_learning_phase*
T0

[
dropout_1/cond/mul/yConst^dropout_1/cond/switch_t*
dtype0*
valueB
 *  ?
y
dropout_1/cond/mul/SwitchSwitchdense_1/BiasAdddropout_1/cond/pred_id*
T0*"
_class
loc:@dense_1/BiasAdd
U
dropout_1/cond/mulMuldropout_1/cond/mul/Switch:1dropout_1/cond/mul/y*
T0
g
 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
valueB
 *   ?*
dtype0
R
dropout_1/cond/dropout/ShapeShapedropout_1/cond/mul*
T0*
out_type0
p
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
dtype0*
valueB
 *    
p
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  ?*
dtype0

3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
seed±ÿå)*
T0*
dtype0*
seed2öéz

)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0

)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0

%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0
s
dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*
T0
J
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0
d
dropout_1/cond/dropout/divRealDivdropout_1/cond/mul dropout_1/cond/dropout/keep_prob*
T0
d
dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*
T0
w
dropout_1/cond/Switch_1Switchdense_1/BiasAdddropout_1/cond/pred_id*"
_class
loc:@dense_1/BiasAdd*
T0
d
dropout_1/cond/MergeMergedropout_1/cond/Switch_1dropout_1/cond/dropout/mul*
T0*
N
Q
dense_2/random_uniform/shapeConst*
dtype0*
valueB"  d   
G
dense_2/random_uniform/minConst*
dtype0*
valueB
 *½
G
dense_2/random_uniform/maxConst*
dtype0*
valueB
 *=

$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seed±ÿå)*
T0*
dtype0*
seed2ö
b
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0
l
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0
^
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0
c
dense_2/kernel
VariableV2*
	container *
dtype0*
shared_name *
shape:		d

dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
T0*
use_locking(
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
>
dense_2/ConstConst*
valueBd*    *
dtype0
\
dense_2/bias
VariableV2*
shared_name *
dtype0*
shape:d*
	container 

dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
validate_shape(*
_class
loc:@dense_2/bias*
T0*
use_locking(
U
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias
r
dense_2/MatMulMatMuldropout_1/cond/Mergedense_2/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC
.
dense_2/ReluReludense_2/BiasAdd*
T0
|
dropout_2/cond/SwitchSwitch(spatial_dropout2d_1/keras_learning_phase(spatial_dropout2d_1/keras_learning_phase*
T0

E
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0

C
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0

U
dropout_2/cond/pred_idIdentity(spatial_dropout2d_1/keras_learning_phase*
T0

[
dropout_2/cond/mul/yConst^dropout_2/cond/switch_t*
valueB
 *  ?*
dtype0
s
dropout_2/cond/mul/SwitchSwitchdense_2/Reludropout_2/cond/pred_id*
_class
loc:@dense_2/Relu*
T0
U
dropout_2/cond/mulMuldropout_2/cond/mul/Switch:1dropout_2/cond/mul/y*
T0
g
 dropout_2/cond/dropout/keep_probConst^dropout_2/cond/switch_t*
dtype0*
valueB
 *   ?
R
dropout_2/cond/dropout/ShapeShapedropout_2/cond/mul*
out_type0*
T0
p
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0
p
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
dtype0*
valueB
 *  ?

3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*
seed±ÿå)*
T0*
dtype0*
seed2ë¾

)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
T0

)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0

%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*
T0
s
dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*
T0
J
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*
T0
d
dropout_2/cond/dropout/divRealDivdropout_2/cond/mul dropout_2/cond/dropout/keep_prob*
T0
d
dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*
T0
q
dropout_2/cond/Switch_1Switchdense_2/Reludropout_2/cond/pred_id*
T0*
_class
loc:@dense_2/Relu
d
dropout_2/cond/MergeMergedropout_2/cond/Switch_1dropout_2/cond/dropout/mul*
N*
T0
Q
dense_3/random_uniform/shapeConst*
valueB"d   2   *
dtype0
G
dense_3/random_uniform/minConst*
dtype0*
valueB
 *ÍÌL¾
G
dense_3/random_uniform/maxConst*
dtype0*
valueB
 *ÍÌL>

$dense_3/random_uniform/RandomUniformRandomUniformdense_3/random_uniform/shape*
seed2¤Îz*
dtype0*
T0*
seed±ÿå)
b
dense_3/random_uniform/subSubdense_3/random_uniform/maxdense_3/random_uniform/min*
T0
l
dense_3/random_uniform/mulMul$dense_3/random_uniform/RandomUniformdense_3/random_uniform/sub*
T0
^
dense_3/random_uniformAdddense_3/random_uniform/muldense_3/random_uniform/min*
T0
b
dense_3/kernel
VariableV2*
shared_name *
dtype0*
shape
:d2*
	container 

dense_3/kernel/AssignAssigndense_3/kerneldense_3/random_uniform*!
_class
loc:@dense_3/kernel*
T0*
validate_shape(*
use_locking(
[
dense_3/kernel/readIdentitydense_3/kernel*!
_class
loc:@dense_3/kernel*
T0
>
dense_3/ConstConst*
valueB2*    *
dtype0
\
dense_3/bias
VariableV2*
	container *
dtype0*
shared_name *
shape:2

dense_3/bias/AssignAssigndense_3/biasdense_3/Const*
_class
loc:@dense_3/bias*
T0*
validate_shape(*
use_locking(
U
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0
r
dense_3/MatMulMatMuldropout_2/cond/Mergedense_3/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC
.
dense_3/ReluReludense_3/BiasAdd*
T0
|
dropout_3/cond/SwitchSwitch(spatial_dropout2d_1/keras_learning_phase(spatial_dropout2d_1/keras_learning_phase*
T0

E
dropout_3/cond/switch_tIdentitydropout_3/cond/Switch:1*
T0

C
dropout_3/cond/switch_fIdentitydropout_3/cond/Switch*
T0

U
dropout_3/cond/pred_idIdentity(spatial_dropout2d_1/keras_learning_phase*
T0

[
dropout_3/cond/mul/yConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0
s
dropout_3/cond/mul/SwitchSwitchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu
U
dropout_3/cond/mulMuldropout_3/cond/mul/Switch:1dropout_3/cond/mul/y*
T0
g
 dropout_3/cond/dropout/keep_probConst^dropout_3/cond/switch_t*
valueB
 *   ?*
dtype0
R
dropout_3/cond/dropout/ShapeShapedropout_3/cond/mul*
T0*
out_type0
p
)dropout_3/cond/dropout/random_uniform/minConst^dropout_3/cond/switch_t*
dtype0*
valueB
 *    
p
)dropout_3/cond/dropout/random_uniform/maxConst^dropout_3/cond/switch_t*
valueB
 *  ?*
dtype0

3dropout_3/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_3/cond/dropout/Shape*
seed2ßÛã*
T0*
seed±ÿå)*
dtype0

)dropout_3/cond/dropout/random_uniform/subSub)dropout_3/cond/dropout/random_uniform/max)dropout_3/cond/dropout/random_uniform/min*
T0

)dropout_3/cond/dropout/random_uniform/mulMul3dropout_3/cond/dropout/random_uniform/RandomUniform)dropout_3/cond/dropout/random_uniform/sub*
T0

%dropout_3/cond/dropout/random_uniformAdd)dropout_3/cond/dropout/random_uniform/mul)dropout_3/cond/dropout/random_uniform/min*
T0
s
dropout_3/cond/dropout/addAdd dropout_3/cond/dropout/keep_prob%dropout_3/cond/dropout/random_uniform*
T0
J
dropout_3/cond/dropout/FloorFloordropout_3/cond/dropout/add*
T0
d
dropout_3/cond/dropout/divRealDivdropout_3/cond/mul dropout_3/cond/dropout/keep_prob*
T0
d
dropout_3/cond/dropout/mulMuldropout_3/cond/dropout/divdropout_3/cond/dropout/Floor*
T0
q
dropout_3/cond/Switch_1Switchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu
d
dropout_3/cond/MergeMergedropout_3/cond/Switch_1dropout_3/cond/dropout/mul*
N*
T0
Q
dense_4/random_uniform/shapeConst*
dtype0*
valueB"2   
   
G
dense_4/random_uniform/minConst*
dtype0*
valueB
 *è¡¾
G
dense_4/random_uniform/maxConst*
dtype0*
valueB
 *è¡>

$dense_4/random_uniform/RandomUniformRandomUniformdense_4/random_uniform/shape*
seed2å­²*
dtype0*
T0*
seed±ÿå)
b
dense_4/random_uniform/subSubdense_4/random_uniform/maxdense_4/random_uniform/min*
T0
l
dense_4/random_uniform/mulMul$dense_4/random_uniform/RandomUniformdense_4/random_uniform/sub*
T0
^
dense_4/random_uniformAdddense_4/random_uniform/muldense_4/random_uniform/min*
T0
b
dense_4/kernel
VariableV2*
	container *
dtype0*
shared_name *
shape
:2


dense_4/kernel/AssignAssigndense_4/kerneldense_4/random_uniform*
validate_shape(*!
_class
loc:@dense_4/kernel*
T0*
use_locking(
[
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel
>
dense_4/ConstConst*
valueB
*    *
dtype0
\
dense_4/bias
VariableV2*
	container *
shape:
*
dtype0*
shared_name 

dense_4/bias/AssignAssigndense_4/biasdense_4/Const*
validate_shape(*
_class
loc:@dense_4/bias*
T0*
use_locking(
U
dense_4/bias/readIdentitydense_4/bias*
_class
loc:@dense_4/bias*
T0
r
dense_4/MatMulMatMuldropout_3/cond/Mergedense_4/kernel/read*
transpose_b( *
transpose_a( *
T0
]
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
T0*
data_formatNHWC
.
dense_4/ReluReludense_4/BiasAdd*
T0
|
dropout_4/cond/SwitchSwitch(spatial_dropout2d_1/keras_learning_phase(spatial_dropout2d_1/keras_learning_phase*
T0

E
dropout_4/cond/switch_tIdentitydropout_4/cond/Switch:1*
T0

C
dropout_4/cond/switch_fIdentitydropout_4/cond/Switch*
T0

U
dropout_4/cond/pred_idIdentity(spatial_dropout2d_1/keras_learning_phase*
T0

[
dropout_4/cond/mul/yConst^dropout_4/cond/switch_t*
dtype0*
valueB
 *  ?
s
dropout_4/cond/mul/SwitchSwitchdense_4/Reludropout_4/cond/pred_id*
_class
loc:@dense_4/Relu*
T0
U
dropout_4/cond/mulMuldropout_4/cond/mul/Switch:1dropout_4/cond/mul/y*
T0
g
 dropout_4/cond/dropout/keep_probConst^dropout_4/cond/switch_t*
valueB
 *   ?*
dtype0
R
dropout_4/cond/dropout/ShapeShapedropout_4/cond/mul*
out_type0*
T0
p
)dropout_4/cond/dropout/random_uniform/minConst^dropout_4/cond/switch_t*
dtype0*
valueB
 *    
p
)dropout_4/cond/dropout/random_uniform/maxConst^dropout_4/cond/switch_t*
dtype0*
valueB
 *  ?

3dropout_4/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_4/cond/dropout/Shape*
seed±ÿå)*
T0*
dtype0*
seed2º³

)dropout_4/cond/dropout/random_uniform/subSub)dropout_4/cond/dropout/random_uniform/max)dropout_4/cond/dropout/random_uniform/min*
T0

)dropout_4/cond/dropout/random_uniform/mulMul3dropout_4/cond/dropout/random_uniform/RandomUniform)dropout_4/cond/dropout/random_uniform/sub*
T0

%dropout_4/cond/dropout/random_uniformAdd)dropout_4/cond/dropout/random_uniform/mul)dropout_4/cond/dropout/random_uniform/min*
T0
s
dropout_4/cond/dropout/addAdd dropout_4/cond/dropout/keep_prob%dropout_4/cond/dropout/random_uniform*
T0
J
dropout_4/cond/dropout/FloorFloordropout_4/cond/dropout/add*
T0
d
dropout_4/cond/dropout/divRealDivdropout_4/cond/mul dropout_4/cond/dropout/keep_prob*
T0
d
dropout_4/cond/dropout/mulMuldropout_4/cond/dropout/divdropout_4/cond/dropout/Floor*
T0
q
dropout_4/cond/Switch_1Switchdense_4/Reludropout_4/cond/pred_id*
T0*
_class
loc:@dense_4/Relu
d
dropout_4/cond/MergeMergedropout_4/cond/Switch_1dropout_4/cond/dropout/mul*
N*
T0
Q
dense_5/random_uniform/shapeConst*
valueB"
      *
dtype0
G
dense_5/random_uniform/minConst*
dtype0*
valueB
 *=¿
G
dense_5/random_uniform/maxConst*
dtype0*
valueB
 *=?

$dense_5/random_uniform/RandomUniformRandomUniformdense_5/random_uniform/shape*
seed±ÿå)*
T0*
dtype0*
seed2Öo
b
dense_5/random_uniform/subSubdense_5/random_uniform/maxdense_5/random_uniform/min*
T0
l
dense_5/random_uniform/mulMul$dense_5/random_uniform/RandomUniformdense_5/random_uniform/sub*
T0
^
dense_5/random_uniformAdddense_5/random_uniform/muldense_5/random_uniform/min*
T0
b
dense_5/kernel
VariableV2*
shape
:
*
shared_name *
dtype0*
	container 

dense_5/kernel/AssignAssigndense_5/kerneldense_5/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(
[
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel
>
dense_5/ConstConst*
dtype0*
valueB*    
\
dense_5/bias
VariableV2*
shared_name *
dtype0*
shape:*
	container 

dense_5/bias/AssignAssigndense_5/biasdense_5/Const*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense_5/bias
U
dense_5/bias/readIdentitydense_5/bias*
_class
loc:@dense_5/bias*
T0
r
dense_5/MatMulMatMuldropout_4/cond/Mergedense_5/kernel/read*
transpose_b( *
transpose_a( *
T0
]
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
data_formatNHWC*
T0
E
iterations/initial_valueConst*
dtype0*
valueB
 *    
V

iterations
VariableV2*
	container *
shape: *
dtype0*
shared_name 

iterations/AssignAssign
iterationsiterations/initial_value*
use_locking(*
validate_shape(*
T0*
_class
loc:@iterations
O
iterations/readIdentity
iterations*
T0*
_class
loc:@iterations
=
lr/initial_valueConst*
valueB
 *o:*
dtype0
N
lr
VariableV2*
	container *
dtype0*
shared_name *
shape: 
r
	lr/AssignAssignlrlr/initial_value*
use_locking(*
validate_shape(*
T0*
_class
	loc:@lr
7
lr/readIdentitylr*
T0*
_class
	loc:@lr
A
beta_1/initial_valueConst*
valueB
 *fff?*
dtype0
R
beta_1
VariableV2*
shared_name *
dtype0*
shape: *
	container 

beta_1/AssignAssignbeta_1beta_1/initial_value*
validate_shape(*
_class
loc:@beta_1*
T0*
use_locking(
C
beta_1/readIdentitybeta_1*
_class
loc:@beta_1*
T0
A
beta_2/initial_valueConst*
dtype0*
valueB
 *w¾?
R
beta_2
VariableV2*
shape: *
shared_name *
dtype0*
	container 

beta_2/AssignAssignbeta_2beta_2/initial_value*
validate_shape(*
_class
loc:@beta_2*
T0*
use_locking(
C
beta_2/readIdentitybeta_2*
T0*
_class
loc:@beta_2
@
decay/initial_valueConst*
dtype0*
valueB
 *    
Q
decay
VariableV2*
shape: *
shared_name *
dtype0*
	container 
~
decay/AssignAssigndecaydecay/initial_value*
use_locking(*
validate_shape(*
T0*
_class

loc:@decay
@

decay/readIdentitydecay*
T0*
_class

loc:@decay
?
dense_5_sample_weightsPlaceholder*
shape: *
dtype0
7
dense_5_targetPlaceholder*
dtype0*
shape: 
4
subSubdense_5/BiasAdddense_5_target*
T0

SquareSquaresub*
T0
@
Mean/reduction_indicesConst*
value	B :*
dtype0
R
MeanMeanSquareMean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
A
Mean_1/reduction_indicesConst*
dtype0*
valueB 
T
Mean_1MeanMeanMean_1/reduction_indices*

Tidx0*
	keep_dims( *
T0
3
mulMulMean_1dense_5_sample_weights*
T0
7

NotEqual/yConst*
valueB
 *    *
dtype0
A
NotEqualNotEqualdense_5_sample_weights
NotEqual/y*
T0
.
CastCastNotEqual*

DstT0*

SrcT0

3
ConstConst*
dtype0*
valueB: 
A
Mean_2MeanCastConst*

Tidx0*
	keep_dims( *
T0
$
divRealDivmulMean_2*
T0
5
Const_1Const*
dtype0*
valueB: 
B
Mean_3MeandivConst_1*

Tidx0*
	keep_dims( *
T0
4
mul_1/xConst*
dtype0*
valueB
 *  ?
&
mul_1Mulmul_1/xMean_3*
T0
R
gradients/ShapeConst*
_class

loc:@mul_1*
valueB *
dtype0
V
gradients/ConstConst*
_class

loc:@mul_1*
valueB
 *  ?*
dtype0
[
gradients/FillFillgradients/Shapegradients/Const*
T0*
_class

loc:@mul_1
]
gradients/mul_1_grad/ShapeConst*
dtype0*
_class

loc:@mul_1*
valueB 
_
gradients/mul_1_grad/Shape_1Const*
_class

loc:@mul_1*
valueB *
dtype0
 
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
_class

loc:@mul_1*
T0
Z
gradients/mul_1_grad/mulMulgradients/FillMean_3*
T0*
_class

loc:@mul_1
¥
gradients/mul_1_grad/SumSumgradients/mul_1_grad/mul*gradients/mul_1_grad/BroadcastGradientArgs*
_class

loc:@mul_1*
T0*
	keep_dims( *

Tidx0

gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
_class

loc:@mul_1*
Tshape0
]
gradients/mul_1_grad/mul_1Mulmul_1/xgradients/Fill*
_class

loc:@mul_1*
T0
«
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul_1

gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
_class

loc:@mul_1*
Tshape0*
T0
l
#gradients/Mean_3_grad/Reshape/shapeConst*
dtype0*
_class
loc:@Mean_3*
valueB:

gradients/Mean_3_grad/ReshapeReshapegradients/mul_1_grad/Reshape_1#gradients/Mean_3_grad/Reshape/shape*
T0*
_class
loc:@Mean_3*
Tshape0
]
gradients/Mean_3_grad/ShapeShapediv*
_class
loc:@Mean_3*
out_type0*
T0

gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*
_class
loc:@Mean_3*
T0*

Tmultiples0
_
gradients/Mean_3_grad/Shape_1Shapediv*
_class
loc:@Mean_3*
out_type0*
T0
a
gradients/Mean_3_grad/Shape_2Const*
dtype0*
_class
loc:@Mean_3*
valueB 
d
gradients/Mean_3_grad/ConstConst*
_class
loc:@Mean_3*
valueB: *
dtype0

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_3
f
gradients/Mean_3_grad/Const_1Const*
_class
loc:@Mean_3*
valueB: *
dtype0
£
gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_3
d
gradients/Mean_3_grad/Maximum/yConst*
_class
loc:@Mean_3*
value	B :*
dtype0

gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0*
_class
loc:@Mean_3

gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
_class
loc:@Mean_3*
T0
u
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*
_class
loc:@Mean_3*

DstT0*

SrcT0

gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0*
_class
loc:@Mean_3
W
gradients/div_grad/ShapeShapemul*
_class

loc:@div*
out_type0*
T0
[
gradients/div_grad/Shape_1Const*
_class

loc:@div*
valueB *
dtype0

(gradients/div_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/div_grad/Shapegradients/div_grad/Shape_1*
_class

loc:@div*
T0
m
gradients/div_grad/RealDivRealDivgradients/Mean_3_grad/truedivMean_2*
T0*
_class

loc:@div
¡
gradients/div_grad/SumSumgradients/div_grad/RealDiv(gradients/div_grad/BroadcastGradientArgs*
_class

loc:@div*
T0*
	keep_dims( *

Tidx0

gradients/div_grad/ReshapeReshapegradients/div_grad/Sumgradients/div_grad/Shape*
T0*
_class

loc:@div*
Tshape0
C
gradients/div_grad/NegNegmul*
T0*
_class

loc:@div
h
gradients/div_grad/RealDiv_1RealDivgradients/div_grad/NegMean_2*
_class

loc:@div*
T0
n
gradients/div_grad/RealDiv_2RealDivgradients/div_grad/RealDiv_1Mean_2*
T0*
_class

loc:@div
{
gradients/div_grad/mulMulgradients/Mean_3_grad/truedivgradients/div_grad/RealDiv_2*
T0*
_class

loc:@div
¡
gradients/div_grad/Sum_1Sumgradients/div_grad/mul*gradients/div_grad/BroadcastGradientArgs:1*
_class

loc:@div*
T0*
	keep_dims( *

Tidx0

gradients/div_grad/Reshape_1Reshapegradients/div_grad/Sum_1gradients/div_grad/Shape_1*
T0*
_class

loc:@div*
Tshape0
Z
gradients/mul_grad/ShapeShapeMean_1*
_class

loc:@mul*
out_type0*
T0
l
gradients/mul_grad/Shape_1Shapedense_5_sample_weights*
_class

loc:@mul*
out_type0*
T0

(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
_class

loc:@mul*
T0
r
gradients/mul_grad/mulMulgradients/div_grad/Reshapedense_5_sample_weights*
_class

loc:@mul*
T0

gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class

loc:@mul

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
_class

loc:@mul*
Tshape0
d
gradients/mul_grad/mul_1MulMean_1gradients/div_grad/Reshape*
_class

loc:@mul*
T0
£
gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_class

loc:@mul*
T0*
	keep_dims( *

Tidx0

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
_class

loc:@mul*
Tshape0
^
gradients/Mean_1_grad/ShapeShapeMean*
T0*
_class
loc:@Mean_1*
out_type0
_
gradients/Mean_1_grad/SizeConst*
dtype0*
_class
loc:@Mean_1*
value	B :
z
gradients/Mean_1_grad/addAddMean_1/reduction_indicesgradients/Mean_1_grad/Size*
T0*
_class
loc:@Mean_1

gradients/Mean_1_grad/modFloorModgradients/Mean_1_grad/addgradients/Mean_1_grad/Size*
T0*
_class
loc:@Mean_1
f
gradients/Mean_1_grad/Shape_1Const*
_class
loc:@Mean_1*
valueB: *
dtype0
f
!gradients/Mean_1_grad/range/startConst*
_class
loc:@Mean_1*
value	B : *
dtype0
f
!gradients/Mean_1_grad/range/deltaConst*
dtype0*
_class
loc:@Mean_1*
value	B :
­
gradients/Mean_1_grad/rangeRange!gradients/Mean_1_grad/range/startgradients/Mean_1_grad/Size!gradients/Mean_1_grad/range/delta*
_class
loc:@Mean_1*

Tidx0
e
 gradients/Mean_1_grad/Fill/valueConst*
dtype0*
_class
loc:@Mean_1*
value	B :

gradients/Mean_1_grad/FillFillgradients/Mean_1_grad/Shape_1 gradients/Mean_1_grad/Fill/value*
_class
loc:@Mean_1*
T0
Ò
#gradients/Mean_1_grad/DynamicStitchDynamicStitchgradients/Mean_1_grad/rangegradients/Mean_1_grad/modgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Fill*
N*
T0*
_class
loc:@Mean_1
d
gradients/Mean_1_grad/Maximum/yConst*
dtype0*
_class
loc:@Mean_1*
value	B :

gradients/Mean_1_grad/MaximumMaximum#gradients/Mean_1_grad/DynamicStitchgradients/Mean_1_grad/Maximum/y*
_class
loc:@Mean_1*
T0

gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Shapegradients/Mean_1_grad/Maximum*
T0*
_class
loc:@Mean_1

gradients/Mean_1_grad/ReshapeReshapegradients/mul_grad/Reshape#gradients/Mean_1_grad/DynamicStitch*
T0*
_class
loc:@Mean_1*
Tshape0

gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/floordiv*

Tmultiples0*
T0*
_class
loc:@Mean_1
`
gradients/Mean_1_grad/Shape_2ShapeMean*
_class
loc:@Mean_1*
out_type0*
T0
b
gradients/Mean_1_grad/Shape_3ShapeMean_1*
_class
loc:@Mean_1*
out_type0*
T0
d
gradients/Mean_1_grad/ConstConst*
dtype0*
_class
loc:@Mean_1*
valueB: 

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@Mean_1
f
gradients/Mean_1_grad/Const_1Const*
_class
loc:@Mean_1*
valueB: *
dtype0
£
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_3gradients/Mean_1_grad/Const_1*
_class
loc:@Mean_1*
T0*
	keep_dims( *

Tidx0
f
!gradients/Mean_1_grad/Maximum_1/yConst*
dtype0*
_class
loc:@Mean_1*
value	B :

gradients/Mean_1_grad/Maximum_1Maximumgradients/Mean_1_grad/Prod_1!gradients/Mean_1_grad/Maximum_1/y*
T0*
_class
loc:@Mean_1

 gradients/Mean_1_grad/floordiv_1FloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum_1*
_class
loc:@Mean_1*
T0
w
gradients/Mean_1_grad/CastCast gradients/Mean_1_grad/floordiv_1*

SrcT0*
_class
loc:@Mean_1*

DstT0

gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
_class
loc:@Mean_1*
T0
\
gradients/Mean_grad/ShapeShapeSquare*
T0*
_class
	loc:@Mean*
out_type0
[
gradients/Mean_grad/SizeConst*
_class
	loc:@Mean*
value	B :*
dtype0
r
gradients/Mean_grad/addAddMean/reduction_indicesgradients/Mean_grad/Size*
_class
	loc:@Mean*
T0
x
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*
_class
	loc:@Mean
]
gradients/Mean_grad/Shape_1Const*
dtype0*
_class
	loc:@Mean*
valueB 
b
gradients/Mean_grad/range/startConst*
_class
	loc:@Mean*
value	B : *
dtype0
b
gradients/Mean_grad/range/deltaConst*
dtype0*
_class
	loc:@Mean*
value	B :
£
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*

Tidx0*
_class
	loc:@Mean
a
gradients/Mean_grad/Fill/valueConst*
dtype0*
_class
	loc:@Mean*
value	B :

gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*
_class
	loc:@Mean
Æ
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
N*
T0*
_class
	loc:@Mean
`
gradients/Mean_grad/Maximum/yConst*
dtype0*
_class
	loc:@Mean*
value	B :

gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*
_class
	loc:@Mean

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*
_class
	loc:@Mean

gradients/Mean_grad/ReshapeReshapegradients/Mean_1_grad/truediv!gradients/Mean_grad/DynamicStitch*
T0*
_class
	loc:@Mean*
Tshape0

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
T0*
_class
	loc:@Mean
^
gradients/Mean_grad/Shape_2ShapeSquare*
_class
	loc:@Mean*
out_type0*
T0
\
gradients/Mean_grad/Shape_3ShapeMean*
T0*
_class
	loc:@Mean*
out_type0
`
gradients/Mean_grad/ConstConst*
_class
	loc:@Mean*
valueB: *
dtype0

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
	loc:@Mean
b
gradients/Mean_grad/Const_1Const*
_class
	loc:@Mean*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
_class
	loc:@Mean*
T0*
	keep_dims( *

Tidx0
b
gradients/Mean_grad/Maximum_1/yConst*
dtype0*
_class
	loc:@Mean*
value	B :

gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0*
_class
	loc:@Mean

gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0*
_class
	loc:@Mean
q
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*
_class
	loc:@Mean*

DstT0*

SrcT0
|
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_class
	loc:@Mean

gradients/Square_grad/mul/xConst^gradients/Mean_grad/truediv*
dtype0*
_class
loc:@Square*
valueB
 *   @
f
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*
_class
loc:@Square*
T0
~
gradients/Square_grad/mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/mul*
_class
loc:@Square*
T0
c
gradients/sub_grad/ShapeShapedense_5/BiasAdd*
T0*
_class

loc:@sub*
out_type0
d
gradients/sub_grad/Shape_1Shapedense_5_target*
T0*
_class

loc:@sub*
out_type0

(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*
_class

loc:@sub
¢
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
_class

loc:@sub*
T0*
	keep_dims( *

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
_class

loc:@sub*
Tshape0
¦
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class

loc:@sub
X
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_class

loc:@sub

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
_class

loc:@sub*
Tshape0*
T0

*gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGradgradients/sub_grad/Reshape*
data_formatNHWC*"
_class
loc:@dense_5/BiasAdd*
T0
±
$gradients/dense_5/MatMul_grad/MatMulMatMulgradients/sub_grad/Reshapedense_5/kernel/read*
transpose_b(*!
_class
loc:@dense_5/MatMul*
transpose_a( *
T0
´
&gradients/dense_5/MatMul_grad/MatMul_1MatMuldropout_4/cond/Mergegradients/sub_grad/Reshape*
transpose_b( *!
_class
loc:@dense_5/MatMul*
transpose_a(*
T0
¡
-gradients/dropout_4/cond/Merge_grad/cond_gradSwitch$gradients/dense_5/MatMul_grad/MatMuldropout_4/cond/pred_id*!
_class
loc:@dense_5/MatMul*
T0
j
gradients/SwitchSwitchdense_4/Reludropout_4/cond/pred_id*
_class
loc:@dense_4/Relu*
T0
h
gradients/Shape_1Shapegradients/Switch:1*
_class
loc:@dense_4/Relu*
out_type0*
T0
c
gradients/zeros/ConstConst*
dtype0*
_class
loc:@dense_4/Relu*
valueB
 *    
k
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*
_class
loc:@dense_4/Relu*
T0
¬
0gradients/dropout_4/cond/Switch_1_grad/cond_gradMerge-gradients/dropout_4/cond/Merge_grad/cond_gradgradients/zeros*
_class
loc:@dense_4/Relu*
T0*
N

/gradients/dropout_4/cond/dropout/mul_grad/ShapeShapedropout_4/cond/dropout/div*-
_class#
!loc:@dropout_4/cond/dropout/mul*
out_type0*
T0
 
1gradients/dropout_4/cond/dropout/mul_grad/Shape_1Shapedropout_4/cond/dropout/Floor*-
_class#
!loc:@dropout_4/cond/dropout/mul*
out_type0*
T0
ô
?gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_4/cond/dropout/mul_grad/Shape1gradients/dropout_4/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul
»
-gradients/dropout_4/cond/dropout/mul_grad/mulMul/gradients/dropout_4/cond/Merge_grad/cond_grad:1dropout_4/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul
ù
-gradients/dropout_4/cond/dropout/mul_grad/SumSum-gradients/dropout_4/cond/dropout/mul_grad/mul?gradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgs*-
_class#
!loc:@dropout_4/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0
â
1gradients/dropout_4/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_4/cond/dropout/mul_grad/Sum/gradients/dropout_4/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
Tshape0
»
/gradients/dropout_4/cond/dropout/mul_grad/mul_1Muldropout_4/cond/dropout/div/gradients/dropout_4/cond/Merge_grad/cond_grad:1*-
_class#
!loc:@dropout_4/cond/dropout/mul*
T0
ÿ
/gradients/dropout_4/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_4/cond/dropout/mul_grad/mul_1Agradients/dropout_4/cond/dropout/mul_grad/BroadcastGradientArgs:1*-
_class#
!loc:@dropout_4/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0
è
3gradients/dropout_4/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_4/cond/dropout/mul_grad/Sum_11gradients/dropout_4/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_4/cond/dropout/mul*
Tshape0

/gradients/dropout_4/cond/dropout/div_grad/ShapeShapedropout_4/cond/mul*
T0*-
_class#
!loc:@dropout_4/cond/dropout/div*
out_type0

1gradients/dropout_4/cond/dropout/div_grad/Shape_1Const*
dtype0*-
_class#
!loc:@dropout_4/cond/dropout/div*
valueB 
ô
?gradients/dropout_4/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_4/cond/dropout/div_grad/Shape1gradients/dropout_4/cond/dropout/div_grad/Shape_1*
T0*-
_class#
!loc:@dropout_4/cond/dropout/div
É
1gradients/dropout_4/cond/dropout/div_grad/RealDivRealDiv1gradients/dropout_4/cond/dropout/mul_grad/Reshape dropout_4/cond/dropout/keep_prob*-
_class#
!loc:@dropout_4/cond/dropout/div*
T0
ý
-gradients/dropout_4/cond/dropout/div_grad/SumSum1gradients/dropout_4/cond/dropout/div_grad/RealDiv?gradients/dropout_4/cond/dropout/div_grad/BroadcastGradientArgs*-
_class#
!loc:@dropout_4/cond/dropout/div*
T0*
	keep_dims( *

Tidx0
â
1gradients/dropout_4/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_4/cond/dropout/div_grad/Sum/gradients/dropout_4/cond/dropout/div_grad/Shape*-
_class#
!loc:@dropout_4/cond/dropout/div*
Tshape0*
T0

-gradients/dropout_4/cond/dropout/div_grad/NegNegdropout_4/cond/mul*-
_class#
!loc:@dropout_4/cond/dropout/div*
T0
Ç
3gradients/dropout_4/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_4/cond/dropout/div_grad/Neg dropout_4/cond/dropout/keep_prob*-
_class#
!loc:@dropout_4/cond/dropout/div*
T0
Í
3gradients/dropout_4/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_4/cond/dropout/div_grad/RealDiv_1 dropout_4/cond/dropout/keep_prob*-
_class#
!loc:@dropout_4/cond/dropout/div*
T0
Ô
-gradients/dropout_4/cond/dropout/div_grad/mulMul1gradients/dropout_4/cond/dropout/mul_grad/Reshape3gradients/dropout_4/cond/dropout/div_grad/RealDiv_2*
T0*-
_class#
!loc:@dropout_4/cond/dropout/div
ý
/gradients/dropout_4/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_4/cond/dropout/div_grad/mulAgradients/dropout_4/cond/dropout/div_grad/BroadcastGradientArgs:1*-
_class#
!loc:@dropout_4/cond/dropout/div*
T0*
	keep_dims( *

Tidx0
è
3gradients/dropout_4/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_4/cond/dropout/div_grad/Sum_11gradients/dropout_4/cond/dropout/div_grad/Shape_1*
T0*-
_class#
!loc:@dropout_4/cond/dropout/div*
Tshape0

'gradients/dropout_4/cond/mul_grad/ShapeShapedropout_4/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_4/cond/mul*
out_type0
y
)gradients/dropout_4/cond/mul_grad/Shape_1Const*
dtype0*%
_class
loc:@dropout_4/cond/mul*
valueB 
Ô
7gradients/dropout_4/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/dropout_4/cond/mul_grad/Shape)gradients/dropout_4/cond/mul_grad/Shape_1*%
_class
loc:@dropout_4/cond/mul*
T0
¥
%gradients/dropout_4/cond/mul_grad/mulMul1gradients/dropout_4/cond/dropout/div_grad/Reshapedropout_4/cond/mul/y*%
_class
loc:@dropout_4/cond/mul*
T0
Ù
%gradients/dropout_4/cond/mul_grad/SumSum%gradients/dropout_4/cond/mul_grad/mul7gradients/dropout_4/cond/mul_grad/BroadcastGradientArgs*%
_class
loc:@dropout_4/cond/mul*
T0*
	keep_dims( *

Tidx0
Â
)gradients/dropout_4/cond/mul_grad/ReshapeReshape%gradients/dropout_4/cond/mul_grad/Sum'gradients/dropout_4/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_4/cond/mul*
Tshape0
®
'gradients/dropout_4/cond/mul_grad/mul_1Muldropout_4/cond/mul/Switch:11gradients/dropout_4/cond/dropout/div_grad/Reshape*
T0*%
_class
loc:@dropout_4/cond/mul
ß
'gradients/dropout_4/cond/mul_grad/Sum_1Sum'gradients/dropout_4/cond/mul_grad/mul_19gradients/dropout_4/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_4/cond/mul
È
+gradients/dropout_4/cond/mul_grad/Reshape_1Reshape'gradients/dropout_4/cond/mul_grad/Sum_1)gradients/dropout_4/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_4/cond/mul*
Tshape0
l
gradients/Switch_1Switchdense_4/Reludropout_4/cond/pred_id*
T0*
_class
loc:@dense_4/Relu
h
gradients/Shape_2Shapegradients/Switch_1*
_class
loc:@dense_4/Relu*
out_type0*
T0
e
gradients/zeros_1/ConstConst*
dtype0*
_class
loc:@dense_4/Relu*
valueB
 *    
o
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
T0*
_class
loc:@dense_4/Relu
¬
2gradients/dropout_4/cond/mul/Switch_grad/cond_gradMerge)gradients/dropout_4/cond/mul_grad/Reshapegradients/zeros_1*
N*
T0*
_class
loc:@dense_4/Relu
¯
gradients/AddNAddN0gradients/dropout_4/cond/Switch_1_grad/cond_grad2gradients/dropout_4/cond/mul/Switch_grad/cond_grad*
N*
_class
loc:@dense_4/Relu*
T0
x
$gradients/dense_4/Relu_grad/ReluGradReluGradgradients/AddNdense_4/Relu*
_class
loc:@dense_4/Relu*
T0
£
*gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_4/Relu_grad/ReluGrad*"
_class
loc:@dense_4/BiasAdd*
T0*
data_formatNHWC
»
$gradients/dense_4/MatMul_grad/MatMulMatMul$gradients/dense_4/Relu_grad/ReluGraddense_4/kernel/read*
transpose_b(*!
_class
loc:@dense_4/MatMul*
transpose_a( *
T0
¾
&gradients/dense_4/MatMul_grad/MatMul_1MatMuldropout_3/cond/Merge$gradients/dense_4/Relu_grad/ReluGrad*
transpose_b( *
T0*!
_class
loc:@dense_4/MatMul*
transpose_a(
¡
-gradients/dropout_3/cond/Merge_grad/cond_gradSwitch$gradients/dense_4/MatMul_grad/MatMuldropout_3/cond/pred_id*
T0*!
_class
loc:@dense_4/MatMul
l
gradients/Switch_2Switchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu
j
gradients/Shape_3Shapegradients/Switch_2:1*
T0*
_class
loc:@dense_3/Relu*
out_type0
e
gradients/zeros_2/ConstConst*
dtype0*
_class
loc:@dense_3/Relu*
valueB
 *    
o
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*
_class
loc:@dense_3/Relu*
T0
®
0gradients/dropout_3/cond/Switch_1_grad/cond_gradMerge-gradients/dropout_3/cond/Merge_grad/cond_gradgradients/zeros_2*
N*
T0*
_class
loc:@dense_3/Relu

/gradients/dropout_3/cond/dropout/mul_grad/ShapeShapedropout_3/cond/dropout/div*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
out_type0
 
1gradients/dropout_3/cond/dropout/mul_grad/Shape_1Shapedropout_3/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
out_type0
ô
?gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_3/cond/dropout/mul_grad/Shape1gradients/dropout_3/cond/dropout/mul_grad/Shape_1*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul
»
-gradients/dropout_3/cond/dropout/mul_grad/mulMul/gradients/dropout_3/cond/Merge_grad/cond_grad:1dropout_3/cond/dropout/Floor*-
_class#
!loc:@dropout_3/cond/dropout/mul*
T0
ù
-gradients/dropout_3/cond/dropout/mul_grad/SumSum-gradients/dropout_3/cond/dropout/mul_grad/mul?gradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul
â
1gradients/dropout_3/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_3/cond/dropout/mul_grad/Sum/gradients/dropout_3/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul*
Tshape0
»
/gradients/dropout_3/cond/dropout/mul_grad/mul_1Muldropout_3/cond/dropout/div/gradients/dropout_3/cond/Merge_grad/cond_grad:1*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul
ÿ
/gradients/dropout_3/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_3/cond/dropout/mul_grad/mul_1Agradients/dropout_3/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_3/cond/dropout/mul
è
3gradients/dropout_3/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_3/cond/dropout/mul_grad/Sum_11gradients/dropout_3/cond/dropout/mul_grad/Shape_1*-
_class#
!loc:@dropout_3/cond/dropout/mul*
Tshape0*
T0

/gradients/dropout_3/cond/dropout/div_grad/ShapeShapedropout_3/cond/mul*
T0*-
_class#
!loc:@dropout_3/cond/dropout/div*
out_type0

1gradients/dropout_3/cond/dropout/div_grad/Shape_1Const*-
_class#
!loc:@dropout_3/cond/dropout/div*
valueB *
dtype0
ô
?gradients/dropout_3/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_3/cond/dropout/div_grad/Shape1gradients/dropout_3/cond/dropout/div_grad/Shape_1*
T0*-
_class#
!loc:@dropout_3/cond/dropout/div
É
1gradients/dropout_3/cond/dropout/div_grad/RealDivRealDiv1gradients/dropout_3/cond/dropout/mul_grad/Reshape dropout_3/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_3/cond/dropout/div
ý
-gradients/dropout_3/cond/dropout/div_grad/SumSum1gradients/dropout_3/cond/dropout/div_grad/RealDiv?gradients/dropout_3/cond/dropout/div_grad/BroadcastGradientArgs*-
_class#
!loc:@dropout_3/cond/dropout/div*
T0*
	keep_dims( *

Tidx0
â
1gradients/dropout_3/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_3/cond/dropout/div_grad/Sum/gradients/dropout_3/cond/dropout/div_grad/Shape*-
_class#
!loc:@dropout_3/cond/dropout/div*
Tshape0*
T0

-gradients/dropout_3/cond/dropout/div_grad/NegNegdropout_3/cond/mul*
T0*-
_class#
!loc:@dropout_3/cond/dropout/div
Ç
3gradients/dropout_3/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_3/cond/dropout/div_grad/Neg dropout_3/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_3/cond/dropout/div
Í
3gradients/dropout_3/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_3/cond/dropout/div_grad/RealDiv_1 dropout_3/cond/dropout/keep_prob*-
_class#
!loc:@dropout_3/cond/dropout/div*
T0
Ô
-gradients/dropout_3/cond/dropout/div_grad/mulMul1gradients/dropout_3/cond/dropout/mul_grad/Reshape3gradients/dropout_3/cond/dropout/div_grad/RealDiv_2*
T0*-
_class#
!loc:@dropout_3/cond/dropout/div
ý
/gradients/dropout_3/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_3/cond/dropout/div_grad/mulAgradients/dropout_3/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_3/cond/dropout/div
è
3gradients/dropout_3/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_3/cond/dropout/div_grad/Sum_11gradients/dropout_3/cond/dropout/div_grad/Shape_1*-
_class#
!loc:@dropout_3/cond/dropout/div*
Tshape0*
T0

'gradients/dropout_3/cond/mul_grad/ShapeShapedropout_3/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_3/cond/mul*
out_type0
y
)gradients/dropout_3/cond/mul_grad/Shape_1Const*%
_class
loc:@dropout_3/cond/mul*
valueB *
dtype0
Ô
7gradients/dropout_3/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/dropout_3/cond/mul_grad/Shape)gradients/dropout_3/cond/mul_grad/Shape_1*%
_class
loc:@dropout_3/cond/mul*
T0
¥
%gradients/dropout_3/cond/mul_grad/mulMul1gradients/dropout_3/cond/dropout/div_grad/Reshapedropout_3/cond/mul/y*
T0*%
_class
loc:@dropout_3/cond/mul
Ù
%gradients/dropout_3/cond/mul_grad/SumSum%gradients/dropout_3/cond/mul_grad/mul7gradients/dropout_3/cond/mul_grad/BroadcastGradientArgs*%
_class
loc:@dropout_3/cond/mul*
T0*
	keep_dims( *

Tidx0
Â
)gradients/dropout_3/cond/mul_grad/ReshapeReshape%gradients/dropout_3/cond/mul_grad/Sum'gradients/dropout_3/cond/mul_grad/Shape*%
_class
loc:@dropout_3/cond/mul*
Tshape0*
T0
®
'gradients/dropout_3/cond/mul_grad/mul_1Muldropout_3/cond/mul/Switch:11gradients/dropout_3/cond/dropout/div_grad/Reshape*%
_class
loc:@dropout_3/cond/mul*
T0
ß
'gradients/dropout_3/cond/mul_grad/Sum_1Sum'gradients/dropout_3/cond/mul_grad/mul_19gradients/dropout_3/cond/mul_grad/BroadcastGradientArgs:1*%
_class
loc:@dropout_3/cond/mul*
T0*
	keep_dims( *

Tidx0
È
+gradients/dropout_3/cond/mul_grad/Reshape_1Reshape'gradients/dropout_3/cond/mul_grad/Sum_1)gradients/dropout_3/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_3/cond/mul*
Tshape0
l
gradients/Switch_3Switchdense_3/Reludropout_3/cond/pred_id*
T0*
_class
loc:@dense_3/Relu
h
gradients/Shape_4Shapegradients/Switch_3*
T0*
_class
loc:@dense_3/Relu*
out_type0
e
gradients/zeros_3/ConstConst*
dtype0*
_class
loc:@dense_3/Relu*
valueB
 *    
o
gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
_class
loc:@dense_3/Relu*
T0
¬
2gradients/dropout_3/cond/mul/Switch_grad/cond_gradMerge)gradients/dropout_3/cond/mul_grad/Reshapegradients/zeros_3*
N*
T0*
_class
loc:@dense_3/Relu
±
gradients/AddN_1AddN0gradients/dropout_3/cond/Switch_1_grad/cond_grad2gradients/dropout_3/cond/mul/Switch_grad/cond_grad*
T0*
_class
loc:@dense_3/Relu*
N
z
$gradients/dense_3/Relu_grad/ReluGradReluGradgradients/AddN_1dense_3/Relu*
T0*
_class
loc:@dense_3/Relu
£
*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_3/Relu_grad/ReluGrad*
data_formatNHWC*"
_class
loc:@dense_3/BiasAdd*
T0
»
$gradients/dense_3/MatMul_grad/MatMulMatMul$gradients/dense_3/Relu_grad/ReluGraddense_3/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_3/MatMul*
T0
¾
&gradients/dense_3/MatMul_grad/MatMul_1MatMuldropout_2/cond/Merge$gradients/dense_3/Relu_grad/ReluGrad*
transpose_b( *
T0*
transpose_a(*!
_class
loc:@dense_3/MatMul
¡
-gradients/dropout_2/cond/Merge_grad/cond_gradSwitch$gradients/dense_3/MatMul_grad/MatMuldropout_2/cond/pred_id*
T0*!
_class
loc:@dense_3/MatMul
l
gradients/Switch_4Switchdense_2/Reludropout_2/cond/pred_id*
_class
loc:@dense_2/Relu*
T0
j
gradients/Shape_5Shapegradients/Switch_4:1*
T0*
_class
loc:@dense_2/Relu*
out_type0
e
gradients/zeros_4/ConstConst*
_class
loc:@dense_2/Relu*
valueB
 *    *
dtype0
o
gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*
_class
loc:@dense_2/Relu*
T0
®
0gradients/dropout_2/cond/Switch_1_grad/cond_gradMerge-gradients/dropout_2/cond/Merge_grad/cond_gradgradients/zeros_4*
N*
T0*
_class
loc:@dense_2/Relu

/gradients/dropout_2/cond/dropout/mul_grad/ShapeShapedropout_2/cond/dropout/div*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
out_type0
 
1gradients/dropout_2/cond/dropout/mul_grad/Shape_1Shapedropout_2/cond/dropout/Floor*-
_class#
!loc:@dropout_2/cond/dropout/mul*
out_type0*
T0
ô
?gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_2/cond/dropout/mul_grad/Shape1gradients/dropout_2/cond/dropout/mul_grad/Shape_1*-
_class#
!loc:@dropout_2/cond/dropout/mul*
T0
»
-gradients/dropout_2/cond/dropout/mul_grad/mulMul/gradients/dropout_2/cond/Merge_grad/cond_grad:1dropout_2/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul
ù
-gradients/dropout_2/cond/dropout/mul_grad/SumSum-gradients/dropout_2/cond/dropout/mul_grad/mul?gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul
â
1gradients/dropout_2/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_2/cond/dropout/mul_grad/Sum/gradients/dropout_2/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul*
Tshape0
»
/gradients/dropout_2/cond/dropout/mul_grad/mul_1Muldropout_2/cond/dropout/div/gradients/dropout_2/cond/Merge_grad/cond_grad:1*-
_class#
!loc:@dropout_2/cond/dropout/mul*
T0
ÿ
/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_2/cond/dropout/mul_grad/mul_1Agradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_2/cond/dropout/mul
è
3gradients/dropout_2/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_2/cond/dropout/mul_grad/Sum_11gradients/dropout_2/cond/dropout/mul_grad/Shape_1*-
_class#
!loc:@dropout_2/cond/dropout/mul*
Tshape0*
T0

/gradients/dropout_2/cond/dropout/div_grad/ShapeShapedropout_2/cond/mul*-
_class#
!loc:@dropout_2/cond/dropout/div*
out_type0*
T0

1gradients/dropout_2/cond/dropout/div_grad/Shape_1Const*
dtype0*-
_class#
!loc:@dropout_2/cond/dropout/div*
valueB 
ô
?gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_2/cond/dropout/div_grad/Shape1gradients/dropout_2/cond/dropout/div_grad/Shape_1*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
É
1gradients/dropout_2/cond/dropout/div_grad/RealDivRealDiv1gradients/dropout_2/cond/dropout/mul_grad/Reshape dropout_2/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
ý
-gradients/dropout_2/cond/dropout/div_grad/SumSum1gradients/dropout_2/cond/dropout/div_grad/RealDiv?gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
â
1gradients/dropout_2/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_2/cond/dropout/div_grad/Sum/gradients/dropout_2/cond/dropout/div_grad/Shape*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div*
Tshape0

-gradients/dropout_2/cond/dropout/div_grad/NegNegdropout_2/cond/mul*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
Ç
3gradients/dropout_2/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_2/cond/dropout/div_grad/Neg dropout_2/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
Í
3gradients/dropout_2/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_2/cond/dropout/div_grad/RealDiv_1 dropout_2/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
Ô
-gradients/dropout_2/cond/dropout/div_grad/mulMul1gradients/dropout_2/cond/dropout/mul_grad/Reshape3gradients/dropout_2/cond/dropout/div_grad/RealDiv_2*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
ý
/gradients/dropout_2/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_2/cond/dropout/div_grad/mulAgradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_2/cond/dropout/div
è
3gradients/dropout_2/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_2/cond/dropout/div_grad/Sum_11gradients/dropout_2/cond/dropout/div_grad/Shape_1*-
_class#
!loc:@dropout_2/cond/dropout/div*
Tshape0*
T0

'gradients/dropout_2/cond/mul_grad/ShapeShapedropout_2/cond/mul/Switch:1*%
_class
loc:@dropout_2/cond/mul*
out_type0*
T0
y
)gradients/dropout_2/cond/mul_grad/Shape_1Const*
dtype0*%
_class
loc:@dropout_2/cond/mul*
valueB 
Ô
7gradients/dropout_2/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/dropout_2/cond/mul_grad/Shape)gradients/dropout_2/cond/mul_grad/Shape_1*
T0*%
_class
loc:@dropout_2/cond/mul
¥
%gradients/dropout_2/cond/mul_grad/mulMul1gradients/dropout_2/cond/dropout/div_grad/Reshapedropout_2/cond/mul/y*%
_class
loc:@dropout_2/cond/mul*
T0
Ù
%gradients/dropout_2/cond/mul_grad/SumSum%gradients/dropout_2/cond/mul_grad/mul7gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_2/cond/mul
Â
)gradients/dropout_2/cond/mul_grad/ReshapeReshape%gradients/dropout_2/cond/mul_grad/Sum'gradients/dropout_2/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_2/cond/mul*
Tshape0
®
'gradients/dropout_2/cond/mul_grad/mul_1Muldropout_2/cond/mul/Switch:11gradients/dropout_2/cond/dropout/div_grad/Reshape*%
_class
loc:@dropout_2/cond/mul*
T0
ß
'gradients/dropout_2/cond/mul_grad/Sum_1Sum'gradients/dropout_2/cond/mul_grad/mul_19gradients/dropout_2/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dropout_2/cond/mul
È
+gradients/dropout_2/cond/mul_grad/Reshape_1Reshape'gradients/dropout_2/cond/mul_grad/Sum_1)gradients/dropout_2/cond/mul_grad/Shape_1*%
_class
loc:@dropout_2/cond/mul*
Tshape0*
T0
l
gradients/Switch_5Switchdense_2/Reludropout_2/cond/pred_id*
T0*
_class
loc:@dense_2/Relu
h
gradients/Shape_6Shapegradients/Switch_5*
_class
loc:@dense_2/Relu*
out_type0*
T0
e
gradients/zeros_5/ConstConst*
dtype0*
_class
loc:@dense_2/Relu*
valueB
 *    
o
gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*
_class
loc:@dense_2/Relu*
T0
¬
2gradients/dropout_2/cond/mul/Switch_grad/cond_gradMerge)gradients/dropout_2/cond/mul_grad/Reshapegradients/zeros_5*
N*
T0*
_class
loc:@dense_2/Relu
±
gradients/AddN_2AddN0gradients/dropout_2/cond/Switch_1_grad/cond_grad2gradients/dropout_2/cond/mul/Switch_grad/cond_grad*
N*
_class
loc:@dense_2/Relu*
T0
z
$gradients/dense_2/Relu_grad/ReluGradReluGradgradients/AddN_2dense_2/Relu*
_class
loc:@dense_2/Relu*
T0
£
*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_2/Relu_grad/ReluGrad*
data_formatNHWC*
T0*"
_class
loc:@dense_2/BiasAdd
»
$gradients/dense_2/MatMul_grad/MatMulMatMul$gradients/dense_2/Relu_grad/ReluGraddense_2/kernel/read*
transpose_b(*
T0*
transpose_a( *!
_class
loc:@dense_2/MatMul
¾
&gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/cond/Merge$gradients/dense_2/Relu_grad/ReluGrad*
transpose_b( *
T0*
transpose_a(*!
_class
loc:@dense_2/MatMul
¡
-gradients/dropout_1/cond/Merge_grad/cond_gradSwitch$gradients/dense_2/MatMul_grad/MatMuldropout_1/cond/pred_id*
T0*!
_class
loc:@dense_2/MatMul
r
gradients/Switch_6Switchdense_1/BiasAdddropout_1/cond/pred_id*
T0*"
_class
loc:@dense_1/BiasAdd
m
gradients/Shape_7Shapegradients/Switch_6:1*
T0*"
_class
loc:@dense_1/BiasAdd*
out_type0
h
gradients/zeros_6/ConstConst*
dtype0*"
_class
loc:@dense_1/BiasAdd*
valueB
 *    
r
gradients/zeros_6Fillgradients/Shape_7gradients/zeros_6/Const*
T0*"
_class
loc:@dense_1/BiasAdd
±
0gradients/dropout_1/cond/Switch_1_grad/cond_gradMerge-gradients/dropout_1/cond/Merge_grad/cond_gradgradients/zeros_6*
T0*"
_class
loc:@dense_1/BiasAdd*
N

/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/dropout/div*-
_class#
!loc:@dropout_1/cond/dropout/mul*
out_type0*
T0
 
1gradients/dropout_1/cond/dropout/mul_grad/Shape_1Shapedropout_1/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
out_type0
ô
?gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_1/cond/dropout/mul_grad/Shape1gradients/dropout_1/cond/dropout/mul_grad/Shape_1*-
_class#
!loc:@dropout_1/cond/dropout/mul*
T0
»
-gradients/dropout_1/cond/dropout/mul_grad/mulMul/gradients/dropout_1/cond/Merge_grad/cond_grad:1dropout_1/cond/dropout/Floor*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
ù
-gradients/dropout_1/cond/dropout/mul_grad/SumSum-gradients/dropout_1/cond/dropout/mul_grad/mul?gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul
â
1gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_1/cond/dropout/mul_grad/Sum/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0
»
/gradients/dropout_1/cond/dropout/mul_grad/mul_1Muldropout_1/cond/dropout/div/gradients/dropout_1/cond/Merge_grad/cond_grad:1*-
_class#
!loc:@dropout_1/cond/dropout/mul*
T0
ÿ
/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_1/cond/dropout/mul_grad/mul_1Agradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*-
_class#
!loc:@dropout_1/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0
è
3gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_1/cond/dropout/mul_grad/Sum_11gradients/dropout_1/cond/dropout/mul_grad/Shape_1*-
_class#
!loc:@dropout_1/cond/dropout/mul*
Tshape0*
T0

/gradients/dropout_1/cond/dropout/div_grad/ShapeShapedropout_1/cond/mul*-
_class#
!loc:@dropout_1/cond/dropout/div*
out_type0*
T0

1gradients/dropout_1/cond/dropout/div_grad/Shape_1Const*
dtype0*-
_class#
!loc:@dropout_1/cond/dropout/div*
valueB 
ô
?gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_1/cond/dropout/div_grad/Shape1gradients/dropout_1/cond/dropout/div_grad/Shape_1*-
_class#
!loc:@dropout_1/cond/dropout/div*
T0
É
1gradients/dropout_1/cond/dropout/div_grad/RealDivRealDiv1gradients/dropout_1/cond/dropout/mul_grad/Reshape dropout_1/cond/dropout/keep_prob*-
_class#
!loc:@dropout_1/cond/dropout/div*
T0
ý
-gradients/dropout_1/cond/dropout/div_grad/SumSum1gradients/dropout_1/cond/dropout/div_grad/RealDiv?gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs*-
_class#
!loc:@dropout_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0
â
1gradients/dropout_1/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_1/cond/dropout/div_grad/Sum/gradients/dropout_1/cond/dropout/div_grad/Shape*-
_class#
!loc:@dropout_1/cond/dropout/div*
Tshape0*
T0

-gradients/dropout_1/cond/dropout/div_grad/NegNegdropout_1/cond/mul*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div
Ç
3gradients/dropout_1/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_1/cond/dropout/div_grad/Neg dropout_1/cond/dropout/keep_prob*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div
Í
3gradients/dropout_1/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_1/cond/dropout/div_grad/RealDiv_1 dropout_1/cond/dropout/keep_prob*-
_class#
!loc:@dropout_1/cond/dropout/div*
T0
Ô
-gradients/dropout_1/cond/dropout/div_grad/mulMul1gradients/dropout_1/cond/dropout/mul_grad/Reshape3gradients/dropout_1/cond/dropout/div_grad/RealDiv_2*-
_class#
!loc:@dropout_1/cond/dropout/div*
T0
ý
/gradients/dropout_1/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_1/cond/dropout/div_grad/mulAgradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dropout_1/cond/dropout/div
è
3gradients/dropout_1/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_1/cond/dropout/div_grad/Sum_11gradients/dropout_1/cond/dropout/div_grad/Shape_1*-
_class#
!loc:@dropout_1/cond/dropout/div*
Tshape0*
T0

'gradients/dropout_1/cond/mul_grad/ShapeShapedropout_1/cond/mul/Switch:1*
T0*%
_class
loc:@dropout_1/cond/mul*
out_type0
y
)gradients/dropout_1/cond/mul_grad/Shape_1Const*
dtype0*%
_class
loc:@dropout_1/cond/mul*
valueB 
Ô
7gradients/dropout_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/dropout_1/cond/mul_grad/Shape)gradients/dropout_1/cond/mul_grad/Shape_1*%
_class
loc:@dropout_1/cond/mul*
T0
¥
%gradients/dropout_1/cond/mul_grad/mulMul1gradients/dropout_1/cond/dropout/div_grad/Reshapedropout_1/cond/mul/y*
T0*%
_class
loc:@dropout_1/cond/mul
Ù
%gradients/dropout_1/cond/mul_grad/SumSum%gradients/dropout_1/cond/mul_grad/mul7gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs*%
_class
loc:@dropout_1/cond/mul*
T0*
	keep_dims( *

Tidx0
Â
)gradients/dropout_1/cond/mul_grad/ReshapeReshape%gradients/dropout_1/cond/mul_grad/Sum'gradients/dropout_1/cond/mul_grad/Shape*
T0*%
_class
loc:@dropout_1/cond/mul*
Tshape0
®
'gradients/dropout_1/cond/mul_grad/mul_1Muldropout_1/cond/mul/Switch:11gradients/dropout_1/cond/dropout/div_grad/Reshape*
T0*%
_class
loc:@dropout_1/cond/mul
ß
'gradients/dropout_1/cond/mul_grad/Sum_1Sum'gradients/dropout_1/cond/mul_grad/mul_19gradients/dropout_1/cond/mul_grad/BroadcastGradientArgs:1*%
_class
loc:@dropout_1/cond/mul*
T0*
	keep_dims( *

Tidx0
È
+gradients/dropout_1/cond/mul_grad/Reshape_1Reshape'gradients/dropout_1/cond/mul_grad/Sum_1)gradients/dropout_1/cond/mul_grad/Shape_1*%
_class
loc:@dropout_1/cond/mul*
Tshape0*
T0
r
gradients/Switch_7Switchdense_1/BiasAdddropout_1/cond/pred_id*
T0*"
_class
loc:@dense_1/BiasAdd
k
gradients/Shape_8Shapegradients/Switch_7*
T0*"
_class
loc:@dense_1/BiasAdd*
out_type0
h
gradients/zeros_7/ConstConst*
dtype0*"
_class
loc:@dense_1/BiasAdd*
valueB
 *    
r
gradients/zeros_7Fillgradients/Shape_8gradients/zeros_7/Const*"
_class
loc:@dense_1/BiasAdd*
T0
¯
2gradients/dropout_1/cond/mul/Switch_grad/cond_gradMerge)gradients/dropout_1/cond/mul_grad/Reshapegradients/zeros_7*
N*
T0*"
_class
loc:@dense_1/BiasAdd
´
gradients/AddN_3AddN0gradients/dropout_1/cond/Switch_1_grad/cond_grad2gradients/dropout_1/cond/mul/Switch_grad/cond_grad*"
_class
loc:@dense_1/BiasAdd*
T0*
N

*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
data_formatNHWC*"
_class
loc:@dense_1/BiasAdd*
T0
§
$gradients/dense_1/MatMul_grad/MatMulMatMulgradients/AddN_3dense_1/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_1/MatMul*
T0
§
&gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshapegradients/AddN_3*
transpose_b( *
T0*!
_class
loc:@dense_1/MatMul*
transpose_a(
{
&gradients/flatten_1/Reshape_grad/ShapeShapeconv_5/Relu*$
_class
loc:@flatten_1/Reshape*
out_type0*
T0
¾
(gradients/flatten_1/Reshape_grad/ReshapeReshape$gradients/dense_1/MatMul_grad/MatMul&gradients/flatten_1/Reshape_grad/Shape*
T0*$
_class
loc:@flatten_1/Reshape*
Tshape0

#gradients/conv_5/Relu_grad/ReluGradReluGrad(gradients/flatten_1/Reshape_grad/Reshapeconv_5/Relu*
_class
loc:@conv_5/Relu*
T0
 
)gradients/conv_5/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv_5/Relu_grad/ReluGrad*
data_formatNHWC*!
_class
loc:@conv_5/BiasAdd*
T0
}
'gradients/conv_5/convolution_grad/ShapeShapeconv_4/Relu*
T0*%
_class
loc:@conv_5/convolution*
out_type0
¶
5gradients/conv_5/convolution_grad/Conv2DBackpropInputConv2DBackpropInput'gradients/conv_5/convolution_grad/Shapeconv_5/kernel/read#gradients/conv_5/Relu_grad/ReluGrad*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*%
_class
loc:@conv_5/convolution*
T0

)gradients/conv_5/convolution_grad/Shape_1Const*
dtype0*%
_class
loc:@conv_5/convolution*%
valueB"      @   @   
³
6gradients/conv_5/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv_4/Relu)gradients/conv_5/convolution_grad/Shape_1#gradients/conv_5/Relu_grad/ReluGrad*
T0*%
_class
loc:@conv_5/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID

#gradients/conv_4/Relu_grad/ReluGradReluGrad5gradients/conv_5/convolution_grad/Conv2DBackpropInputconv_4/Relu*
_class
loc:@conv_4/Relu*
T0
 
)gradients/conv_4/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv_4/Relu_grad/ReluGrad*!
_class
loc:@conv_4/BiasAdd*
T0*
data_formatNHWC

'gradients/conv_4/convolution_grad/ShapeShapespatial_dropout2d_1/cond/Merge*
T0*%
_class
loc:@conv_4/convolution*
out_type0
¶
5gradients/conv_4/convolution_grad/Conv2DBackpropInputConv2DBackpropInput'gradients/conv_4/convolution_grad/Shapeconv_4/kernel/read#gradients/conv_4/Relu_grad/ReluGrad*
use_cudnn_on_gpu(*
T0*
paddingVALID*%
_class
loc:@conv_4/convolution*
data_formatNHWC*
strides


)gradients/conv_4/convolution_grad/Shape_1Const*
dtype0*%
_class
loc:@conv_4/convolution*%
valueB"      0   @   
Æ
6gradients/conv_4/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterspatial_dropout2d_1/cond/Merge)gradients/conv_4/convolution_grad/Shape_1#gradients/conv_4/Relu_grad/ReluGrad*
T0*%
_class
loc:@conv_4/convolution*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID
Ê
7gradients/spatial_dropout2d_1/cond/Merge_grad/cond_gradSwitch5gradients/conv_4/convolution_grad/Conv2DBackpropInput spatial_dropout2d_1/cond/pred_id*
T0*%
_class
loc:@conv_4/convolution
t
gradients/Switch_8Switchconv_3/Relu spatial_dropout2d_1/cond/pred_id*
T0*
_class
loc:@conv_3/Relu
i
gradients/Shape_9Shapegradients/Switch_8:1*
T0*
_class
loc:@conv_3/Relu*
out_type0
d
gradients/zeros_8/ConstConst*
_class
loc:@conv_3/Relu*
valueB
 *    *
dtype0
n
gradients/zeros_8Fillgradients/Shape_9gradients/zeros_8/Const*
_class
loc:@conv_3/Relu*
T0
Á
:gradients/spatial_dropout2d_1/cond/Switch_1_grad/cond_gradMerge7gradients/spatial_dropout2d_1/cond/Merge_grad/cond_gradgradients/zeros_8*
_class
loc:@conv_3/Relu*
T0*
N
º
9gradients/spatial_dropout2d_1/cond/dropout/mul_grad/ShapeShape$spatial_dropout2d_1/cond/dropout/div*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul*
out_type0*
T0
¾
;gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Shape_1Shape&spatial_dropout2d_1/cond/dropout/Floor*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul*
out_type0*
T0

Igradients/spatial_dropout2d_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Shape;gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Shape_1*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul*
T0
ã
7gradients/spatial_dropout2d_1/cond/dropout/mul_grad/mulMul9gradients/spatial_dropout2d_1/cond/Merge_grad/cond_grad:1&spatial_dropout2d_1/cond/dropout/Floor*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul*
T0
¡
7gradients/spatial_dropout2d_1/cond/dropout/mul_grad/SumSum7gradients/spatial_dropout2d_1/cond/dropout/mul_grad/mulIgradients/spatial_dropout2d_1/cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul

;gradients/spatial_dropout2d_1/cond/dropout/mul_grad/ReshapeReshape7gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Sum9gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Shape*
T0*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul*
Tshape0
ã
9gradients/spatial_dropout2d_1/cond/dropout/mul_grad/mul_1Mul$spatial_dropout2d_1/cond/dropout/div9gradients/spatial_dropout2d_1/cond/Merge_grad/cond_grad:1*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul*
T0
§
9gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Sum_1Sum9gradients/spatial_dropout2d_1/cond/dropout/mul_grad/mul_1Kgradients/spatial_dropout2d_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul*
T0*
	keep_dims( *

Tidx0

=gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Reshape_1Reshape9gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Sum_1;gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Shape_1*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/mul*
Tshape0*
T0
²
9gradients/spatial_dropout2d_1/cond/dropout/div_grad/ShapeShapespatial_dropout2d_1/cond/mul*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div*
out_type0*
T0

;gradients/spatial_dropout2d_1/cond/dropout/div_grad/Shape_1Const*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div*
valueB *
dtype0

Igradients/spatial_dropout2d_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients/spatial_dropout2d_1/cond/dropout/div_grad/Shape;gradients/spatial_dropout2d_1/cond/dropout/div_grad/Shape_1*
T0*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div
ñ
;gradients/spatial_dropout2d_1/cond/dropout/div_grad/RealDivRealDiv;gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Reshape*spatial_dropout2d_1/cond/dropout/keep_prob*
T0*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div
¥
7gradients/spatial_dropout2d_1/cond/dropout/div_grad/SumSum;gradients/spatial_dropout2d_1/cond/dropout/div_grad/RealDivIgradients/spatial_dropout2d_1/cond/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div

;gradients/spatial_dropout2d_1/cond/dropout/div_grad/ReshapeReshape7gradients/spatial_dropout2d_1/cond/dropout/div_grad/Sum9gradients/spatial_dropout2d_1/cond/dropout/div_grad/Shape*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div*
Tshape0*
T0

7gradients/spatial_dropout2d_1/cond/dropout/div_grad/NegNegspatial_dropout2d_1/cond/mul*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div*
T0
ï
=gradients/spatial_dropout2d_1/cond/dropout/div_grad/RealDiv_1RealDiv7gradients/spatial_dropout2d_1/cond/dropout/div_grad/Neg*spatial_dropout2d_1/cond/dropout/keep_prob*
T0*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div
õ
=gradients/spatial_dropout2d_1/cond/dropout/div_grad/RealDiv_2RealDiv=gradients/spatial_dropout2d_1/cond/dropout/div_grad/RealDiv_1*spatial_dropout2d_1/cond/dropout/keep_prob*
T0*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div
ü
7gradients/spatial_dropout2d_1/cond/dropout/div_grad/mulMul;gradients/spatial_dropout2d_1/cond/dropout/mul_grad/Reshape=gradients/spatial_dropout2d_1/cond/dropout/div_grad/RealDiv_2*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div*
T0
¥
9gradients/spatial_dropout2d_1/cond/dropout/div_grad/Sum_1Sum7gradients/spatial_dropout2d_1/cond/dropout/div_grad/mulKgradients/spatial_dropout2d_1/cond/dropout/div_grad/BroadcastGradientArgs:1*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div*
T0*
	keep_dims( *

Tidx0

=gradients/spatial_dropout2d_1/cond/dropout/div_grad/Reshape_1Reshape9gradients/spatial_dropout2d_1/cond/dropout/div_grad/Sum_1;gradients/spatial_dropout2d_1/cond/dropout/div_grad/Shape_1*7
_class-
+)loc:@spatial_dropout2d_1/cond/dropout/div*
Tshape0*
T0
«
1gradients/spatial_dropout2d_1/cond/mul_grad/ShapeShape%spatial_dropout2d_1/cond/mul/Switch:1*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul*
out_type0*
T0

3gradients/spatial_dropout2d_1/cond/mul_grad/Shape_1Const*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul*
valueB *
dtype0
ü
Agradients/spatial_dropout2d_1/cond/mul_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/spatial_dropout2d_1/cond/mul_grad/Shape3gradients/spatial_dropout2d_1/cond/mul_grad/Shape_1*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul*
T0
Í
/gradients/spatial_dropout2d_1/cond/mul_grad/mulMul;gradients/spatial_dropout2d_1/cond/dropout/div_grad/Reshapespatial_dropout2d_1/cond/mul/y*
T0*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul

/gradients/spatial_dropout2d_1/cond/mul_grad/SumSum/gradients/spatial_dropout2d_1/cond/mul_grad/mulAgradients/spatial_dropout2d_1/cond/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul
ê
3gradients/spatial_dropout2d_1/cond/mul_grad/ReshapeReshape/gradients/spatial_dropout2d_1/cond/mul_grad/Sum1gradients/spatial_dropout2d_1/cond/mul_grad/Shape*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul*
Tshape0*
T0
Ö
1gradients/spatial_dropout2d_1/cond/mul_grad/mul_1Mul%spatial_dropout2d_1/cond/mul/Switch:1;gradients/spatial_dropout2d_1/cond/dropout/div_grad/Reshape*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul*
T0

1gradients/spatial_dropout2d_1/cond/mul_grad/Sum_1Sum1gradients/spatial_dropout2d_1/cond/mul_grad/mul_1Cgradients/spatial_dropout2d_1/cond/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul
ð
5gradients/spatial_dropout2d_1/cond/mul_grad/Reshape_1Reshape1gradients/spatial_dropout2d_1/cond/mul_grad/Sum_13gradients/spatial_dropout2d_1/cond/mul_grad/Shape_1*
T0*/
_class%
#!loc:@spatial_dropout2d_1/cond/mul*
Tshape0
t
gradients/Switch_9Switchconv_3/Relu spatial_dropout2d_1/cond/pred_id*
_class
loc:@conv_3/Relu*
T0
h
gradients/Shape_10Shapegradients/Switch_9*
T0*
_class
loc:@conv_3/Relu*
out_type0
d
gradients/zeros_9/ConstConst*
dtype0*
_class
loc:@conv_3/Relu*
valueB
 *    
o
gradients/zeros_9Fillgradients/Shape_10gradients/zeros_9/Const*
T0*
_class
loc:@conv_3/Relu
¿
<gradients/spatial_dropout2d_1/cond/mul/Switch_grad/cond_gradMerge3gradients/spatial_dropout2d_1/cond/mul_grad/Reshapegradients/zeros_9*
N*
T0*
_class
loc:@conv_3/Relu
Ä
gradients/AddN_4AddN:gradients/spatial_dropout2d_1/cond/Switch_1_grad/cond_grad<gradients/spatial_dropout2d_1/cond/mul/Switch_grad/cond_grad*
N*
_class
loc:@conv_3/Relu*
T0
w
#gradients/conv_3/Relu_grad/ReluGradReluGradgradients/AddN_4conv_3/Relu*
_class
loc:@conv_3/Relu*
T0
 
)gradients/conv_3/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv_3/Relu_grad/ReluGrad*
data_formatNHWC*!
_class
loc:@conv_3/BiasAdd*
T0
}
'gradients/conv_3/convolution_grad/ShapeShapeconv_2/Relu*%
_class
loc:@conv_3/convolution*
out_type0*
T0
¶
5gradients/conv_3/convolution_grad/Conv2DBackpropInputConv2DBackpropInput'gradients/conv_3/convolution_grad/Shapeconv_3/kernel/read#gradients/conv_3/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*%
_class
loc:@conv_3/convolution*
paddingVALID*
T0*
use_cudnn_on_gpu(

)gradients/conv_3/convolution_grad/Shape_1Const*
dtype0*%
_class
loc:@conv_3/convolution*%
valueB"      $   0   
³
6gradients/conv_3/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv_2/Relu)gradients/conv_3/convolution_grad/Shape_1#gradients/conv_3/Relu_grad/ReluGrad*
data_formatNHWC*
strides
*%
_class
loc:@conv_3/convolution*
paddingVALID*
T0*
use_cudnn_on_gpu(

#gradients/conv_2/Relu_grad/ReluGradReluGrad5gradients/conv_3/convolution_grad/Conv2DBackpropInputconv_2/Relu*
T0*
_class
loc:@conv_2/Relu
 
)gradients/conv_2/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv_2/Relu_grad/ReluGrad*!
_class
loc:@conv_2/BiasAdd*
T0*
data_formatNHWC
}
'gradients/conv_2/convolution_grad/ShapeShapeconv_1/Relu*
T0*%
_class
loc:@conv_2/convolution*
out_type0
¶
5gradients/conv_2/convolution_grad/Conv2DBackpropInputConv2DBackpropInput'gradients/conv_2/convolution_grad/Shapeconv_2/kernel/read#gradients/conv_2/Relu_grad/ReluGrad*%
_class
loc:@conv_2/convolution*
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingVALID

)gradients/conv_2/convolution_grad/Shape_1Const*
dtype0*%
_class
loc:@conv_2/convolution*%
valueB"         $   
³
6gradients/conv_2/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterconv_1/Relu)gradients/conv_2/convolution_grad/Shape_1#gradients/conv_2/Relu_grad/ReluGrad*
paddingVALID*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*%
_class
loc:@conv_2/convolution*
T0

#gradients/conv_1/Relu_grad/ReluGradReluGrad5gradients/conv_2/convolution_grad/Conv2DBackpropInputconv_1/Relu*
_class
loc:@conv_1/Relu*
T0
 
)gradients/conv_1/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv_1/Relu_grad/ReluGrad*
T0*!
_class
loc:@conv_1/BiasAdd*
data_formatNHWC
~
'gradients/conv_1/convolution_grad/ShapeShapelambda_1/sub*
T0*%
_class
loc:@conv_1/convolution*
out_type0
¶
5gradients/conv_1/convolution_grad/Conv2DBackpropInputConv2DBackpropInput'gradients/conv_1/convolution_grad/Shapeconv_1/kernel/read#gradients/conv_1/Relu_grad/ReluGrad*%
_class
loc:@conv_1/convolution*
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingVALID

)gradients/conv_1/convolution_grad/Shape_1Const*
dtype0*%
_class
loc:@conv_1/convolution*%
valueB"            
´
6gradients/conv_1/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilterlambda_1/sub)gradients/conv_1/convolution_grad/Shape_1#gradients/conv_1/Relu_grad/ReluGrad*%
_class
loc:@conv_1/convolution*
T0*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingVALID
<
AssignAdd/valueConst*
valueB
 *  ?*
dtype0
n
	AssignAdd	AssignAdd
iterationsAssignAdd/value*
use_locking( *
T0*
_class
loc:@iterations
2
add/yConst*
dtype0*
valueB
 *  ?
+
addAdditerations/readadd/y*
T0
%
PowPowbeta_2/readadd*
T0
4
sub_1/xConst*
valueB
 *  ?*
dtype0
#
sub_1Subsub_1/xPow*
T0
4
Const_2Const*
dtype0*
valueB
 *    
4
Const_3Const*
dtype0*
valueB
 *  
9
clip_by_value/MinimumMinimumsub_1Const_3*
T0
A
clip_by_valueMaximumclip_by_value/MinimumConst_2*
T0
$
SqrtSqrtclip_by_value*
T0
'
Pow_1Powbeta_1/readadd*
T0
4
sub_2/xConst*
valueB
 *  ?*
dtype0
%
sub_2Subsub_2/xPow_1*
T0
&
div_1RealDivSqrtsub_2*
T0
%
mul_2Mullr/readdiv_1*
T0
8
Const_4Const*
dtype0*
valueB*    
X
Variable
VariableV2*
shared_name *
dtype0*
shape:*
	container 
{
Variable/AssignAssignVariableConst_4*
_class
loc:@Variable*
T0*
validate_shape(*
use_locking(
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
D
Const_5Const*
dtype0*%
valueB*    
f

Variable_1
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_1/AssignAssign
Variable_1Const_5*
validate_shape(*
_class
loc:@Variable_1*
T0*
use_locking(
O
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0
8
Const_6Const*
valueB$*    *
dtype0
Z

Variable_2
VariableV2*
	container *
dtype0*
shared_name *
shape:$

Variable_2/AssignAssign
Variable_2Const_6*
_class
loc:@Variable_2*
T0*
validate_shape(*
use_locking(
O
Variable_2/readIdentity
Variable_2*
_class
loc:@Variable_2*
T0
D
Const_7Const*
dtype0*%
valueB$*    
f

Variable_3
VariableV2*
shape:$*
shared_name *
dtype0*
	container 

Variable_3/AssignAssign
Variable_3Const_7*
_class
loc:@Variable_3*
T0*
validate_shape(*
use_locking(
O
Variable_3/readIdentity
Variable_3*
_class
loc:@Variable_3*
T0
8
Const_8Const*
valueB0*    *
dtype0
Z

Variable_4
VariableV2*
shape:0*
shared_name *
dtype0*
	container 

Variable_4/AssignAssign
Variable_4Const_8*
_class
loc:@Variable_4*
T0*
validate_shape(*
use_locking(
O
Variable_4/readIdentity
Variable_4*
_class
loc:@Variable_4*
T0
D
Const_9Const*%
valueB$0*    *
dtype0
f

Variable_5
VariableV2*
shared_name *
dtype0*
shape:$0*
	container 

Variable_5/AssignAssign
Variable_5Const_9*
_class
loc:@Variable_5*
T0*
validate_shape(*
use_locking(
O
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5
9
Const_10Const*
dtype0*
valueB@*    
Z

Variable_6
VariableV2*
	container *
dtype0*
shared_name *
shape:@

Variable_6/AssignAssign
Variable_6Const_10*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
O
Variable_6/readIdentity
Variable_6*
_class
loc:@Variable_6*
T0
E
Const_11Const*%
valueB0@*    *
dtype0
f

Variable_7
VariableV2*
shared_name *
dtype0*
shape:0@*
	container 

Variable_7/AssignAssign
Variable_7Const_11*
_class
loc:@Variable_7*
T0*
validate_shape(*
use_locking(
O
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
T0
9
Const_12Const*
dtype0*
valueB@*    
Z

Variable_8
VariableV2*
	container *
dtype0*
shared_name *
shape:@

Variable_8/AssignAssign
Variable_8Const_12*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_8
O
Variable_8/readIdentity
Variable_8*
_class
loc:@Variable_8*
T0
E
Const_13Const*
dtype0*%
valueB@@*    
f

Variable_9
VariableV2*
shape:@@*
shared_name *
dtype0*
	container 

Variable_9/AssignAssign
Variable_9Const_13*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
O
Variable_9/readIdentity
Variable_9*
_class
loc:@Variable_9*
T0
:
Const_14Const*
valueB	*    *
dtype0
\
Variable_10
VariableV2*
shape:	*
shared_name *
dtype0*
	container 

Variable_10/AssignAssignVariable_10Const_14*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_10
R
Variable_10/readIdentityVariable_10*
_class
loc:@Variable_10*
T0
?
Const_15Const*
valueB
Às	*    *
dtype0
a
Variable_11
VariableV2*
shared_name *
dtype0*
shape:
Às	*
	container 

Variable_11/AssignAssignVariable_11Const_15*
validate_shape(*
_class
loc:@Variable_11*
T0*
use_locking(
R
Variable_11/readIdentityVariable_11*
_class
loc:@Variable_11*
T0
9
Const_16Const*
valueBd*    *
dtype0
[
Variable_12
VariableV2*
shape:d*
shared_name *
dtype0*
	container 

Variable_12/AssignAssignVariable_12Const_16*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(
R
Variable_12/readIdentityVariable_12*
T0*
_class
loc:@Variable_12
>
Const_17Const*
dtype0*
valueB		d*    
`
Variable_13
VariableV2*
	container *
shape:		d*
dtype0*
shared_name 

Variable_13/AssignAssignVariable_13Const_17*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(
R
Variable_13/readIdentityVariable_13*
_class
loc:@Variable_13*
T0
9
Const_18Const*
dtype0*
valueB2*    
[
Variable_14
VariableV2*
	container *
dtype0*
shared_name *
shape:2

Variable_14/AssignAssignVariable_14Const_18*
_class
loc:@Variable_14*
T0*
validate_shape(*
use_locking(
R
Variable_14/readIdentityVariable_14*
_class
loc:@Variable_14*
T0
=
Const_19Const*
valueBd2*    *
dtype0
_
Variable_15
VariableV2*
shared_name *
dtype0*
shape
:d2*
	container 

Variable_15/AssignAssignVariable_15Const_19*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(
R
Variable_15/readIdentityVariable_15*
T0*
_class
loc:@Variable_15
9
Const_20Const*
valueB
*    *
dtype0
[
Variable_16
VariableV2*
shape:
*
shared_name *
dtype0*
	container 

Variable_16/AssignAssignVariable_16Const_20*
validate_shape(*
_class
loc:@Variable_16*
T0*
use_locking(
R
Variable_16/readIdentityVariable_16*
_class
loc:@Variable_16*
T0
=
Const_21Const*
valueB2
*    *
dtype0
_
Variable_17
VariableV2*
	container *
dtype0*
shared_name *
shape
:2


Variable_17/AssignAssignVariable_17Const_21*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_17
R
Variable_17/readIdentityVariable_17*
T0*
_class
loc:@Variable_17
9
Const_22Const*
dtype0*
valueB*    
[
Variable_18
VariableV2*
shared_name *
dtype0*
shape:*
	container 

Variable_18/AssignAssignVariable_18Const_22*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_18
R
Variable_18/readIdentityVariable_18*
T0*
_class
loc:@Variable_18
=
Const_23Const*
valueB
*    *
dtype0
_
Variable_19
VariableV2*
shape
:
*
shared_name *
dtype0*
	container 

Variable_19/AssignAssignVariable_19Const_23*
validate_shape(*
_class
loc:@Variable_19*
T0*
use_locking(
R
Variable_19/readIdentityVariable_19*
T0*
_class
loc:@Variable_19
9
Const_24Const*
valueB*    *
dtype0
[
Variable_20
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_20/AssignAssignVariable_20Const_24*
use_locking(*
T0*
_class
loc:@Variable_20*
validate_shape(
R
Variable_20/readIdentityVariable_20*
T0*
_class
loc:@Variable_20
E
Const_25Const*%
valueB*    *
dtype0
g
Variable_21
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_21/AssignAssignVariable_21Const_25*
validate_shape(*
_class
loc:@Variable_21*
T0*
use_locking(
R
Variable_21/readIdentityVariable_21*
T0*
_class
loc:@Variable_21
9
Const_26Const*
valueB$*    *
dtype0
[
Variable_22
VariableV2*
	container *
shape:$*
dtype0*
shared_name 

Variable_22/AssignAssignVariable_22Const_26*
use_locking(*
T0*
_class
loc:@Variable_22*
validate_shape(
R
Variable_22/readIdentityVariable_22*
T0*
_class
loc:@Variable_22
E
Const_27Const*
dtype0*%
valueB$*    
g
Variable_23
VariableV2*
	container *
shape:$*
dtype0*
shared_name 

Variable_23/AssignAssignVariable_23Const_27*
use_locking(*
T0*
_class
loc:@Variable_23*
validate_shape(
R
Variable_23/readIdentityVariable_23*
T0*
_class
loc:@Variable_23
9
Const_28Const*
dtype0*
valueB0*    
[
Variable_24
VariableV2*
shared_name *
dtype0*
shape:0*
	container 

Variable_24/AssignAssignVariable_24Const_28*
_class
loc:@Variable_24*
T0*
validate_shape(*
use_locking(
R
Variable_24/readIdentityVariable_24*
T0*
_class
loc:@Variable_24
E
Const_29Const*%
valueB$0*    *
dtype0
g
Variable_25
VariableV2*
shared_name *
dtype0*
shape:$0*
	container 

Variable_25/AssignAssignVariable_25Const_29*
validate_shape(*
_class
loc:@Variable_25*
T0*
use_locking(
R
Variable_25/readIdentityVariable_25*
T0*
_class
loc:@Variable_25
9
Const_30Const*
valueB@*    *
dtype0
[
Variable_26
VariableV2*
shape:@*
shared_name *
dtype0*
	container 

Variable_26/AssignAssignVariable_26Const_30*
use_locking(*
T0*
_class
loc:@Variable_26*
validate_shape(
R
Variable_26/readIdentityVariable_26*
_class
loc:@Variable_26*
T0
E
Const_31Const*
dtype0*%
valueB0@*    
g
Variable_27
VariableV2*
shared_name *
dtype0*
shape:0@*
	container 

Variable_27/AssignAssignVariable_27Const_31*
use_locking(*
T0*
_class
loc:@Variable_27*
validate_shape(
R
Variable_27/readIdentityVariable_27*
_class
loc:@Variable_27*
T0
9
Const_32Const*
valueB@*    *
dtype0
[
Variable_28
VariableV2*
shape:@*
shared_name *
dtype0*
	container 

Variable_28/AssignAssignVariable_28Const_32*
_class
loc:@Variable_28*
T0*
validate_shape(*
use_locking(
R
Variable_28/readIdentityVariable_28*
T0*
_class
loc:@Variable_28
E
Const_33Const*%
valueB@@*    *
dtype0
g
Variable_29
VariableV2*
shared_name *
dtype0*
shape:@@*
	container 

Variable_29/AssignAssignVariable_29Const_33*
validate_shape(*
_class
loc:@Variable_29*
T0*
use_locking(
R
Variable_29/readIdentityVariable_29*
_class
loc:@Variable_29*
T0
:
Const_34Const*
dtype0*
valueB	*    
\
Variable_30
VariableV2*
	container *
dtype0*
shared_name *
shape:	

Variable_30/AssignAssignVariable_30Const_34*
use_locking(*
T0*
_class
loc:@Variable_30*
validate_shape(
R
Variable_30/readIdentityVariable_30*
T0*
_class
loc:@Variable_30
?
Const_35Const*
dtype0*
valueB
Às	*    
a
Variable_31
VariableV2*
shared_name *
dtype0*
shape:
Às	*
	container 

Variable_31/AssignAssignVariable_31Const_35*
_class
loc:@Variable_31*
T0*
validate_shape(*
use_locking(
R
Variable_31/readIdentityVariable_31*
T0*
_class
loc:@Variable_31
9
Const_36Const*
valueBd*    *
dtype0
[
Variable_32
VariableV2*
	container *
shape:d*
dtype0*
shared_name 

Variable_32/AssignAssignVariable_32Const_36*
use_locking(*
T0*
_class
loc:@Variable_32*
validate_shape(
R
Variable_32/readIdentityVariable_32*
T0*
_class
loc:@Variable_32
>
Const_37Const*
dtype0*
valueB		d*    
`
Variable_33
VariableV2*
shared_name *
dtype0*
shape:		d*
	container 

Variable_33/AssignAssignVariable_33Const_37*
_class
loc:@Variable_33*
T0*
validate_shape(*
use_locking(
R
Variable_33/readIdentityVariable_33*
_class
loc:@Variable_33*
T0
9
Const_38Const*
dtype0*
valueB2*    
[
Variable_34
VariableV2*
shared_name *
dtype0*
shape:2*
	container 

Variable_34/AssignAssignVariable_34Const_38*
use_locking(*
T0*
_class
loc:@Variable_34*
validate_shape(
R
Variable_34/readIdentityVariable_34*
T0*
_class
loc:@Variable_34
=
Const_39Const*
dtype0*
valueBd2*    
_
Variable_35
VariableV2*
	container *
shape
:d2*
dtype0*
shared_name 

Variable_35/AssignAssignVariable_35Const_39*
validate_shape(*
_class
loc:@Variable_35*
T0*
use_locking(
R
Variable_35/readIdentityVariable_35*
_class
loc:@Variable_35*
T0
9
Const_40Const*
dtype0*
valueB
*    
[
Variable_36
VariableV2*
shape:
*
shared_name *
dtype0*
	container 

Variable_36/AssignAssignVariable_36Const_40*
validate_shape(*
_class
loc:@Variable_36*
T0*
use_locking(
R
Variable_36/readIdentityVariable_36*
T0*
_class
loc:@Variable_36
=
Const_41Const*
dtype0*
valueB2
*    
_
Variable_37
VariableV2*
	container *
shape
:2
*
dtype0*
shared_name 

Variable_37/AssignAssignVariable_37Const_41*
validate_shape(*
_class
loc:@Variable_37*
T0*
use_locking(
R
Variable_37/readIdentityVariable_37*
_class
loc:@Variable_37*
T0
9
Const_42Const*
valueB*    *
dtype0
[
Variable_38
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_38/AssignAssignVariable_38Const_42*
use_locking(*
T0*
_class
loc:@Variable_38*
validate_shape(
R
Variable_38/readIdentityVariable_38*
_class
loc:@Variable_38*
T0
=
Const_43Const*
dtype0*
valueB
*    
_
Variable_39
VariableV2*
shape
:
*
shared_name *
dtype0*
	container 

Variable_39/AssignAssignVariable_39Const_43*
_class
loc:@Variable_39*
T0*
validate_shape(*
use_locking(
R
Variable_39/readIdentityVariable_39*
_class
loc:@Variable_39*
T0
1
mul_3Mulbeta_1/readVariable/read*
T0
4
sub_3/xConst*
valueB
 *  ?*
dtype0
+
sub_3Subsub_3/xbeta_1/read*
T0
G
mul_4Mulsub_3)gradients/conv_1/BiasAdd_grad/BiasAddGrad*
T0
#
add_1Addmul_3mul_4*
T0
4
mul_5Mulbeta_2/readVariable_20/read*
T0
4
sub_4/xConst*
dtype0*
valueB
 *  ?
+
sub_4Subsub_4/xbeta_2/read*
T0
F
Square_1Square)gradients/conv_1/BiasAdd_grad/BiasAddGrad*
T0
&
mul_6Mulsub_4Square_1*
T0
#
add_2Addmul_5mul_6*
T0
#
mul_7Mulmul_2add_1*
T0
5
Const_44Const*
valueB
 *    *
dtype0
5
Const_45Const*
valueB
 *  *
dtype0
<
clip_by_value_1/MinimumMinimumadd_2Const_45*
T0
F
clip_by_value_1Maximumclip_by_value_1/MinimumConst_44*
T0
(
Sqrt_1Sqrtclip_by_value_1*
T0
4
add_3/yConst*
valueB
 *wÌ+2*
dtype0
&
add_3AddSqrt_1add_3/y*
T0
'
div_2RealDivmul_7add_3*
T0
.
sub_5Subconv_1/bias/readdiv_2*
T0
p
AssignAssignVariableadd_1*
validate_shape(*
_class
loc:@Variable*
T0*
use_locking(
x
Assign_1AssignVariable_20add_2*
validate_shape(*
_class
loc:@Variable_20*
T0*
use_locking(
x
Assign_2Assignconv_1/biassub_5*
validate_shape(*
_class
loc:@conv_1/bias*
T0*
use_locking(
3
mul_8Mulbeta_1/readVariable_1/read*
T0
4
sub_6/xConst*
dtype0*
valueB
 *  ?
+
sub_6Subsub_6/xbeta_1/read*
T0
T
mul_9Mulsub_66gradients/conv_1/convolution_grad/Conv2DBackpropFilter*
T0
#
add_4Addmul_8mul_9*
T0
5
mul_10Mulbeta_2/readVariable_21/read*
T0
4
sub_7/xConst*
valueB
 *  ?*
dtype0
+
sub_7Subsub_7/xbeta_2/read*
T0
S
Square_2Square6gradients/conv_1/convolution_grad/Conv2DBackpropFilter*
T0
'
mul_11Mulsub_7Square_2*
T0
%
add_5Addmul_10mul_11*
T0
$
mul_12Mulmul_2add_4*
T0
5
Const_46Const*
valueB
 *    *
dtype0
5
Const_47Const*
dtype0*
valueB
 *  
<
clip_by_value_2/MinimumMinimumadd_5Const_47*
T0
F
clip_by_value_2Maximumclip_by_value_2/MinimumConst_46*
T0
(
Sqrt_2Sqrtclip_by_value_2*
T0
4
add_6/yConst*
valueB
 *wÌ+2*
dtype0
&
add_6AddSqrt_2add_6/y*
T0
(
div_3RealDivmul_12add_6*
T0
0
sub_8Subconv_1/kernel/readdiv_3*
T0
v
Assign_3Assign
Variable_1add_4*
validate_shape(*
_class
loc:@Variable_1*
T0*
use_locking(
x
Assign_4AssignVariable_21add_5*
validate_shape(*
_class
loc:@Variable_21*
T0*
use_locking(
|
Assign_5Assignconv_1/kernelsub_8*
validate_shape(* 
_class
loc:@conv_1/kernel*
T0*
use_locking(
4
mul_13Mulbeta_1/readVariable_2/read*
T0
4
sub_9/xConst*
dtype0*
valueB
 *  ?
+
sub_9Subsub_9/xbeta_1/read*
T0
H
mul_14Mulsub_9)gradients/conv_2/BiasAdd_grad/BiasAddGrad*
T0
%
add_7Addmul_13mul_14*
T0
5
mul_15Mulbeta_2/readVariable_22/read*
T0
5
sub_10/xConst*
valueB
 *  ?*
dtype0
-
sub_10Subsub_10/xbeta_2/read*
T0
F
Square_3Square)gradients/conv_2/BiasAdd_grad/BiasAddGrad*
T0
(
mul_16Mulsub_10Square_3*
T0
%
add_8Addmul_15mul_16*
T0
$
mul_17Mulmul_2add_7*
T0
5
Const_48Const*
dtype0*
valueB
 *    
5
Const_49Const*
valueB
 *  *
dtype0
<
clip_by_value_3/MinimumMinimumadd_8Const_49*
T0
F
clip_by_value_3Maximumclip_by_value_3/MinimumConst_48*
T0
(
Sqrt_3Sqrtclip_by_value_3*
T0
4
add_9/yConst*
valueB
 *wÌ+2*
dtype0
&
add_9AddSqrt_3add_9/y*
T0
(
div_4RealDivmul_17add_9*
T0
/
sub_11Subconv_2/bias/readdiv_4*
T0
v
Assign_6Assign
Variable_2add_7*
_class
loc:@Variable_2*
T0*
validate_shape(*
use_locking(
x
Assign_7AssignVariable_22add_8*
validate_shape(*
_class
loc:@Variable_22*
T0*
use_locking(
y
Assign_8Assignconv_2/biassub_11*
validate_shape(*
_class
loc:@conv_2/bias*
T0*
use_locking(
4
mul_18Mulbeta_1/readVariable_3/read*
T0
5
sub_12/xConst*
valueB
 *  ?*
dtype0
-
sub_12Subsub_12/xbeta_1/read*
T0
V
mul_19Mulsub_126gradients/conv_2/convolution_grad/Conv2DBackpropFilter*
T0
&
add_10Addmul_18mul_19*
T0
5
mul_20Mulbeta_2/readVariable_23/read*
T0
5
sub_13/xConst*
dtype0*
valueB
 *  ?
-
sub_13Subsub_13/xbeta_2/read*
T0
S
Square_4Square6gradients/conv_2/convolution_grad/Conv2DBackpropFilter*
T0
(
mul_21Mulsub_13Square_4*
T0
&
add_11Addmul_20mul_21*
T0
%
mul_22Mulmul_2add_10*
T0
5
Const_50Const*
valueB
 *    *
dtype0
5
Const_51Const*
dtype0*
valueB
 *  
=
clip_by_value_4/MinimumMinimumadd_11Const_51*
T0
F
clip_by_value_4Maximumclip_by_value_4/MinimumConst_50*
T0
(
Sqrt_4Sqrtclip_by_value_4*
T0
5
add_12/yConst*
dtype0*
valueB
 *wÌ+2
(
add_12AddSqrt_4add_12/y*
T0
)
div_5RealDivmul_22add_12*
T0
1
sub_14Subconv_2/kernel/readdiv_5*
T0
w
Assign_9Assign
Variable_3add_10*
validate_shape(*
_class
loc:@Variable_3*
T0*
use_locking(
z
	Assign_10AssignVariable_23add_11*
validate_shape(*
_class
loc:@Variable_23*
T0*
use_locking(
~
	Assign_11Assignconv_2/kernelsub_14* 
_class
loc:@conv_2/kernel*
T0*
validate_shape(*
use_locking(
4
mul_23Mulbeta_1/readVariable_4/read*
T0
5
sub_15/xConst*
valueB
 *  ?*
dtype0
-
sub_15Subsub_15/xbeta_1/read*
T0
I
mul_24Mulsub_15)gradients/conv_3/BiasAdd_grad/BiasAddGrad*
T0
&
add_13Addmul_23mul_24*
T0
5
mul_25Mulbeta_2/readVariable_24/read*
T0
5
sub_16/xConst*
valueB
 *  ?*
dtype0
-
sub_16Subsub_16/xbeta_2/read*
T0
F
Square_5Square)gradients/conv_3/BiasAdd_grad/BiasAddGrad*
T0
(
mul_26Mulsub_16Square_5*
T0
&
add_14Addmul_25mul_26*
T0
%
mul_27Mulmul_2add_13*
T0
5
Const_52Const*
dtype0*
valueB
 *    
5
Const_53Const*
dtype0*
valueB
 *  
=
clip_by_value_5/MinimumMinimumadd_14Const_53*
T0
F
clip_by_value_5Maximumclip_by_value_5/MinimumConst_52*
T0
(
Sqrt_5Sqrtclip_by_value_5*
T0
5
add_15/yConst*
valueB
 *wÌ+2*
dtype0
(
add_15AddSqrt_5add_15/y*
T0
)
div_6RealDivmul_27add_15*
T0
/
sub_17Subconv_3/bias/readdiv_6*
T0
x
	Assign_12Assign
Variable_4add_13*
_class
loc:@Variable_4*
T0*
validate_shape(*
use_locking(
z
	Assign_13AssignVariable_24add_14*
validate_shape(*
_class
loc:@Variable_24*
T0*
use_locking(
z
	Assign_14Assignconv_3/biassub_17*
use_locking(*
validate_shape(*
T0*
_class
loc:@conv_3/bias
4
mul_28Mulbeta_1/readVariable_5/read*
T0
5
sub_18/xConst*
dtype0*
valueB
 *  ?
-
sub_18Subsub_18/xbeta_1/read*
T0
V
mul_29Mulsub_186gradients/conv_3/convolution_grad/Conv2DBackpropFilter*
T0
&
add_16Addmul_28mul_29*
T0
5
mul_30Mulbeta_2/readVariable_25/read*
T0
5
sub_19/xConst*
dtype0*
valueB
 *  ?
-
sub_19Subsub_19/xbeta_2/read*
T0
S
Square_6Square6gradients/conv_3/convolution_grad/Conv2DBackpropFilter*
T0
(
mul_31Mulsub_19Square_6*
T0
&
add_17Addmul_30mul_31*
T0
%
mul_32Mulmul_2add_16*
T0
5
Const_54Const*
dtype0*
valueB
 *    
5
Const_55Const*
dtype0*
valueB
 *  
=
clip_by_value_6/MinimumMinimumadd_17Const_55*
T0
F
clip_by_value_6Maximumclip_by_value_6/MinimumConst_54*
T0
(
Sqrt_6Sqrtclip_by_value_6*
T0
5
add_18/yConst*
valueB
 *wÌ+2*
dtype0
(
add_18AddSqrt_6add_18/y*
T0
)
div_7RealDivmul_32add_18*
T0
1
sub_20Subconv_3/kernel/readdiv_7*
T0
x
	Assign_15Assign
Variable_5add_16*
validate_shape(*
_class
loc:@Variable_5*
T0*
use_locking(
z
	Assign_16AssignVariable_25add_17*
use_locking(*
T0*
_class
loc:@Variable_25*
validate_shape(
~
	Assign_17Assignconv_3/kernelsub_20*
validate_shape(* 
_class
loc:@conv_3/kernel*
T0*
use_locking(
4
mul_33Mulbeta_1/readVariable_6/read*
T0
5
sub_21/xConst*
dtype0*
valueB
 *  ?
-
sub_21Subsub_21/xbeta_1/read*
T0
I
mul_34Mulsub_21)gradients/conv_4/BiasAdd_grad/BiasAddGrad*
T0
&
add_19Addmul_33mul_34*
T0
5
mul_35Mulbeta_2/readVariable_26/read*
T0
5
sub_22/xConst*
valueB
 *  ?*
dtype0
-
sub_22Subsub_22/xbeta_2/read*
T0
F
Square_7Square)gradients/conv_4/BiasAdd_grad/BiasAddGrad*
T0
(
mul_36Mulsub_22Square_7*
T0
&
add_20Addmul_35mul_36*
T0
%
mul_37Mulmul_2add_19*
T0
5
Const_56Const*
dtype0*
valueB
 *    
5
Const_57Const*
valueB
 *  *
dtype0
=
clip_by_value_7/MinimumMinimumadd_20Const_57*
T0
F
clip_by_value_7Maximumclip_by_value_7/MinimumConst_56*
T0
(
Sqrt_7Sqrtclip_by_value_7*
T0
5
add_21/yConst*
dtype0*
valueB
 *wÌ+2
(
add_21AddSqrt_7add_21/y*
T0
)
div_8RealDivmul_37add_21*
T0
/
sub_23Subconv_4/bias/readdiv_8*
T0
x
	Assign_18Assign
Variable_6add_19*
_class
loc:@Variable_6*
T0*
validate_shape(*
use_locking(
z
	Assign_19AssignVariable_26add_20*
_class
loc:@Variable_26*
T0*
validate_shape(*
use_locking(
z
	Assign_20Assignconv_4/biassub_23*
use_locking(*
T0*
_class
loc:@conv_4/bias*
validate_shape(
4
mul_38Mulbeta_1/readVariable_7/read*
T0
5
sub_24/xConst*
dtype0*
valueB
 *  ?
-
sub_24Subsub_24/xbeta_1/read*
T0
V
mul_39Mulsub_246gradients/conv_4/convolution_grad/Conv2DBackpropFilter*
T0
&
add_22Addmul_38mul_39*
T0
5
mul_40Mulbeta_2/readVariable_27/read*
T0
5
sub_25/xConst*
valueB
 *  ?*
dtype0
-
sub_25Subsub_25/xbeta_2/read*
T0
S
Square_8Square6gradients/conv_4/convolution_grad/Conv2DBackpropFilter*
T0
(
mul_41Mulsub_25Square_8*
T0
&
add_23Addmul_40mul_41*
T0
%
mul_42Mulmul_2add_22*
T0
5
Const_58Const*
dtype0*
valueB
 *    
5
Const_59Const*
valueB
 *  *
dtype0
=
clip_by_value_8/MinimumMinimumadd_23Const_59*
T0
F
clip_by_value_8Maximumclip_by_value_8/MinimumConst_58*
T0
(
Sqrt_8Sqrtclip_by_value_8*
T0
5
add_24/yConst*
valueB
 *wÌ+2*
dtype0
(
add_24AddSqrt_8add_24/y*
T0
)
div_9RealDivmul_42add_24*
T0
1
sub_26Subconv_4/kernel/readdiv_9*
T0
x
	Assign_21Assign
Variable_7add_22*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_7
z
	Assign_22AssignVariable_27add_23*
validate_shape(*
_class
loc:@Variable_27*
T0*
use_locking(
~
	Assign_23Assignconv_4/kernelsub_26* 
_class
loc:@conv_4/kernel*
T0*
validate_shape(*
use_locking(
4
mul_43Mulbeta_1/readVariable_8/read*
T0
5
sub_27/xConst*
valueB
 *  ?*
dtype0
-
sub_27Subsub_27/xbeta_1/read*
T0
I
mul_44Mulsub_27)gradients/conv_5/BiasAdd_grad/BiasAddGrad*
T0
&
add_25Addmul_43mul_44*
T0
5
mul_45Mulbeta_2/readVariable_28/read*
T0
5
sub_28/xConst*
dtype0*
valueB
 *  ?
-
sub_28Subsub_28/xbeta_2/read*
T0
F
Square_9Square)gradients/conv_5/BiasAdd_grad/BiasAddGrad*
T0
(
mul_46Mulsub_28Square_9*
T0
&
add_26Addmul_45mul_46*
T0
%
mul_47Mulmul_2add_25*
T0
5
Const_60Const*
valueB
 *    *
dtype0
5
Const_61Const*
dtype0*
valueB
 *  
=
clip_by_value_9/MinimumMinimumadd_26Const_61*
T0
F
clip_by_value_9Maximumclip_by_value_9/MinimumConst_60*
T0
(
Sqrt_9Sqrtclip_by_value_9*
T0
5
add_27/yConst*
valueB
 *wÌ+2*
dtype0
(
add_27AddSqrt_9add_27/y*
T0
*
div_10RealDivmul_47add_27*
T0
0
sub_29Subconv_5/bias/readdiv_10*
T0
x
	Assign_24Assign
Variable_8add_25*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_8
z
	Assign_25AssignVariable_28add_26*
validate_shape(*
_class
loc:@Variable_28*
T0*
use_locking(
z
	Assign_26Assignconv_5/biassub_29*
use_locking(*
validate_shape(*
T0*
_class
loc:@conv_5/bias
4
mul_48Mulbeta_1/readVariable_9/read*
T0
5
sub_30/xConst*
valueB
 *  ?*
dtype0
-
sub_30Subsub_30/xbeta_1/read*
T0
V
mul_49Mulsub_306gradients/conv_5/convolution_grad/Conv2DBackpropFilter*
T0
&
add_28Addmul_48mul_49*
T0
5
mul_50Mulbeta_2/readVariable_29/read*
T0
5
sub_31/xConst*
dtype0*
valueB
 *  ?
-
sub_31Subsub_31/xbeta_2/read*
T0
T
	Square_10Square6gradients/conv_5/convolution_grad/Conv2DBackpropFilter*
T0
)
mul_51Mulsub_31	Square_10*
T0
&
add_29Addmul_50mul_51*
T0
%
mul_52Mulmul_2add_28*
T0
5
Const_62Const*
dtype0*
valueB
 *    
5
Const_63Const*
valueB
 *  *
dtype0
>
clip_by_value_10/MinimumMinimumadd_29Const_63*
T0
H
clip_by_value_10Maximumclip_by_value_10/MinimumConst_62*
T0
*
Sqrt_10Sqrtclip_by_value_10*
T0
5
add_30/yConst*
valueB
 *wÌ+2*
dtype0
)
add_30AddSqrt_10add_30/y*
T0
*
div_11RealDivmul_52add_30*
T0
2
sub_32Subconv_5/kernel/readdiv_11*
T0
x
	Assign_27Assign
Variable_9add_28*
validate_shape(*
_class
loc:@Variable_9*
T0*
use_locking(
z
	Assign_28AssignVariable_29add_29*
validate_shape(*
_class
loc:@Variable_29*
T0*
use_locking(
~
	Assign_29Assignconv_5/kernelsub_32* 
_class
loc:@conv_5/kernel*
T0*
validate_shape(*
use_locking(
5
mul_53Mulbeta_1/readVariable_10/read*
T0
5
sub_33/xConst*
dtype0*
valueB
 *  ?
-
sub_33Subsub_33/xbeta_1/read*
T0
J
mul_54Mulsub_33*gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0
&
add_31Addmul_53mul_54*
T0
5
mul_55Mulbeta_2/readVariable_30/read*
T0
5
sub_34/xConst*
valueB
 *  ?*
dtype0
-
sub_34Subsub_34/xbeta_2/read*
T0
H
	Square_11Square*gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0
)
mul_56Mulsub_34	Square_11*
T0
&
add_32Addmul_55mul_56*
T0
%
mul_57Mulmul_2add_31*
T0
5
Const_64Const*
valueB
 *    *
dtype0
5
Const_65Const*
dtype0*
valueB
 *  
>
clip_by_value_11/MinimumMinimumadd_32Const_65*
T0
H
clip_by_value_11Maximumclip_by_value_11/MinimumConst_64*
T0
*
Sqrt_11Sqrtclip_by_value_11*
T0
5
add_33/yConst*
dtype0*
valueB
 *wÌ+2
)
add_33AddSqrt_11add_33/y*
T0
*
div_12RealDivmul_57add_33*
T0
1
sub_35Subdense_1/bias/readdiv_12*
T0
z
	Assign_30AssignVariable_10add_31*
validate_shape(*
_class
loc:@Variable_10*
T0*
use_locking(
z
	Assign_31AssignVariable_30add_32*
_class
loc:@Variable_30*
T0*
validate_shape(*
use_locking(
|
	Assign_32Assigndense_1/biassub_35*
validate_shape(*
_class
loc:@dense_1/bias*
T0*
use_locking(
5
mul_58Mulbeta_1/readVariable_11/read*
T0
5
sub_36/xConst*
dtype0*
valueB
 *  ?
-
sub_36Subsub_36/xbeta_1/read*
T0
F
mul_59Mulsub_36&gradients/dense_1/MatMul_grad/MatMul_1*
T0
&
add_34Addmul_58mul_59*
T0
5
mul_60Mulbeta_2/readVariable_31/read*
T0
5
sub_37/xConst*
valueB
 *  ?*
dtype0
-
sub_37Subsub_37/xbeta_2/read*
T0
D
	Square_12Square&gradients/dense_1/MatMul_grad/MatMul_1*
T0
)
mul_61Mulsub_37	Square_12*
T0
&
add_35Addmul_60mul_61*
T0
%
mul_62Mulmul_2add_34*
T0
5
Const_66Const*
dtype0*
valueB
 *    
5
Const_67Const*
dtype0*
valueB
 *  
>
clip_by_value_12/MinimumMinimumadd_35Const_67*
T0
H
clip_by_value_12Maximumclip_by_value_12/MinimumConst_66*
T0
*
Sqrt_12Sqrtclip_by_value_12*
T0
5
add_36/yConst*
dtype0*
valueB
 *wÌ+2
)
add_36AddSqrt_12add_36/y*
T0
*
div_13RealDivmul_62add_36*
T0
3
sub_38Subdense_1/kernel/readdiv_13*
T0
z
	Assign_33AssignVariable_11add_34*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_11
z
	Assign_34AssignVariable_31add_35*
_class
loc:@Variable_31*
T0*
validate_shape(*
use_locking(

	Assign_35Assigndense_1/kernelsub_38*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
5
mul_63Mulbeta_1/readVariable_12/read*
T0
5
sub_39/xConst*
dtype0*
valueB
 *  ?
-
sub_39Subsub_39/xbeta_1/read*
T0
J
mul_64Mulsub_39*gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0
&
add_37Addmul_63mul_64*
T0
5
mul_65Mulbeta_2/readVariable_32/read*
T0
5
sub_40/xConst*
dtype0*
valueB
 *  ?
-
sub_40Subsub_40/xbeta_2/read*
T0
H
	Square_13Square*gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0
)
mul_66Mulsub_40	Square_13*
T0
&
add_38Addmul_65mul_66*
T0
%
mul_67Mulmul_2add_37*
T0
5
Const_68Const*
dtype0*
valueB
 *    
5
Const_69Const*
dtype0*
valueB
 *  
>
clip_by_value_13/MinimumMinimumadd_38Const_69*
T0
H
clip_by_value_13Maximumclip_by_value_13/MinimumConst_68*
T0
*
Sqrt_13Sqrtclip_by_value_13*
T0
5
add_39/yConst*
dtype0*
valueB
 *wÌ+2
)
add_39AddSqrt_13add_39/y*
T0
*
div_14RealDivmul_67add_39*
T0
1
sub_41Subdense_2/bias/readdiv_14*
T0
z
	Assign_36AssignVariable_12add_37*
_class
loc:@Variable_12*
T0*
validate_shape(*
use_locking(
z
	Assign_37AssignVariable_32add_38*
validate_shape(*
_class
loc:@Variable_32*
T0*
use_locking(
|
	Assign_38Assigndense_2/biassub_41*
_class
loc:@dense_2/bias*
T0*
validate_shape(*
use_locking(
5
mul_68Mulbeta_1/readVariable_13/read*
T0
5
sub_42/xConst*
dtype0*
valueB
 *  ?
-
sub_42Subsub_42/xbeta_1/read*
T0
F
mul_69Mulsub_42&gradients/dense_2/MatMul_grad/MatMul_1*
T0
&
add_40Addmul_68mul_69*
T0
5
mul_70Mulbeta_2/readVariable_33/read*
T0
5
sub_43/xConst*
dtype0*
valueB
 *  ?
-
sub_43Subsub_43/xbeta_2/read*
T0
D
	Square_14Square&gradients/dense_2/MatMul_grad/MatMul_1*
T0
)
mul_71Mulsub_43	Square_14*
T0
&
add_41Addmul_70mul_71*
T0
%
mul_72Mulmul_2add_40*
T0
5
Const_70Const*
dtype0*
valueB
 *    
5
Const_71Const*
dtype0*
valueB
 *  
>
clip_by_value_14/MinimumMinimumadd_41Const_71*
T0
H
clip_by_value_14Maximumclip_by_value_14/MinimumConst_70*
T0
*
Sqrt_14Sqrtclip_by_value_14*
T0
5
add_42/yConst*
valueB
 *wÌ+2*
dtype0
)
add_42AddSqrt_14add_42/y*
T0
*
div_15RealDivmul_72add_42*
T0
3
sub_44Subdense_2/kernel/readdiv_15*
T0
z
	Assign_39AssignVariable_13add_40*
validate_shape(*
_class
loc:@Variable_13*
T0*
use_locking(
z
	Assign_40AssignVariable_33add_41*
use_locking(*
T0*
_class
loc:@Variable_33*
validate_shape(

	Assign_41Assigndense_2/kernelsub_44*
use_locking(*
validate_shape(*
T0*!
_class
loc:@dense_2/kernel
5
mul_73Mulbeta_1/readVariable_14/read*
T0
5
sub_45/xConst*
dtype0*
valueB
 *  ?
-
sub_45Subsub_45/xbeta_1/read*
T0
J
mul_74Mulsub_45*gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0
&
add_43Addmul_73mul_74*
T0
5
mul_75Mulbeta_2/readVariable_34/read*
T0
5
sub_46/xConst*
valueB
 *  ?*
dtype0
-
sub_46Subsub_46/xbeta_2/read*
T0
H
	Square_15Square*gradients/dense_3/BiasAdd_grad/BiasAddGrad*
T0
)
mul_76Mulsub_46	Square_15*
T0
&
add_44Addmul_75mul_76*
T0
%
mul_77Mulmul_2add_43*
T0
5
Const_72Const*
valueB
 *    *
dtype0
5
Const_73Const*
dtype0*
valueB
 *  
>
clip_by_value_15/MinimumMinimumadd_44Const_73*
T0
H
clip_by_value_15Maximumclip_by_value_15/MinimumConst_72*
T0
*
Sqrt_15Sqrtclip_by_value_15*
T0
5
add_45/yConst*
valueB
 *wÌ+2*
dtype0
)
add_45AddSqrt_15add_45/y*
T0
*
div_16RealDivmul_77add_45*
T0
1
sub_47Subdense_3/bias/readdiv_16*
T0
z
	Assign_42AssignVariable_14add_43*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_14
z
	Assign_43AssignVariable_34add_44*
validate_shape(*
_class
loc:@Variable_34*
T0*
use_locking(
|
	Assign_44Assigndense_3/biassub_47*
use_locking(*
validate_shape(*
T0*
_class
loc:@dense_3/bias
5
mul_78Mulbeta_1/readVariable_15/read*
T0
5
sub_48/xConst*
dtype0*
valueB
 *  ?
-
sub_48Subsub_48/xbeta_1/read*
T0
F
mul_79Mulsub_48&gradients/dense_3/MatMul_grad/MatMul_1*
T0
&
add_46Addmul_78mul_79*
T0
5
mul_80Mulbeta_2/readVariable_35/read*
T0
5
sub_49/xConst*
valueB
 *  ?*
dtype0
-
sub_49Subsub_49/xbeta_2/read*
T0
D
	Square_16Square&gradients/dense_3/MatMul_grad/MatMul_1*
T0
)
mul_81Mulsub_49	Square_16*
T0
&
add_47Addmul_80mul_81*
T0
%
mul_82Mulmul_2add_46*
T0
5
Const_74Const*
valueB
 *    *
dtype0
5
Const_75Const*
dtype0*
valueB
 *  
>
clip_by_value_16/MinimumMinimumadd_47Const_75*
T0
H
clip_by_value_16Maximumclip_by_value_16/MinimumConst_74*
T0
*
Sqrt_16Sqrtclip_by_value_16*
T0
5
add_48/yConst*
valueB
 *wÌ+2*
dtype0
)
add_48AddSqrt_16add_48/y*
T0
*
div_17RealDivmul_82add_48*
T0
3
sub_50Subdense_3/kernel/readdiv_17*
T0
z
	Assign_45AssignVariable_15add_46*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(
z
	Assign_46AssignVariable_35add_47*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_35

	Assign_47Assigndense_3/kernelsub_50*
validate_shape(*!
_class
loc:@dense_3/kernel*
T0*
use_locking(
5
mul_83Mulbeta_1/readVariable_16/read*
T0
5
sub_51/xConst*
valueB
 *  ?*
dtype0
-
sub_51Subsub_51/xbeta_1/read*
T0
J
mul_84Mulsub_51*gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0
&
add_49Addmul_83mul_84*
T0
5
mul_85Mulbeta_2/readVariable_36/read*
T0
5
sub_52/xConst*
dtype0*
valueB
 *  ?
-
sub_52Subsub_52/xbeta_2/read*
T0
H
	Square_17Square*gradients/dense_4/BiasAdd_grad/BiasAddGrad*
T0
)
mul_86Mulsub_52	Square_17*
T0
&
add_50Addmul_85mul_86*
T0
%
mul_87Mulmul_2add_49*
T0
5
Const_76Const*
dtype0*
valueB
 *    
5
Const_77Const*
dtype0*
valueB
 *  
>
clip_by_value_17/MinimumMinimumadd_50Const_77*
T0
H
clip_by_value_17Maximumclip_by_value_17/MinimumConst_76*
T0
*
Sqrt_17Sqrtclip_by_value_17*
T0
5
add_51/yConst*
valueB
 *wÌ+2*
dtype0
)
add_51AddSqrt_17add_51/y*
T0
*
div_18RealDivmul_87add_51*
T0
1
sub_53Subdense_4/bias/readdiv_18*
T0
z
	Assign_48AssignVariable_16add_49*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_16
z
	Assign_49AssignVariable_36add_50*
validate_shape(*
_class
loc:@Variable_36*
T0*
use_locking(
|
	Assign_50Assigndense_4/biassub_53*
_class
loc:@dense_4/bias*
T0*
validate_shape(*
use_locking(
5
mul_88Mulbeta_1/readVariable_17/read*
T0
5
sub_54/xConst*
dtype0*
valueB
 *  ?
-
sub_54Subsub_54/xbeta_1/read*
T0
F
mul_89Mulsub_54&gradients/dense_4/MatMul_grad/MatMul_1*
T0
&
add_52Addmul_88mul_89*
T0
5
mul_90Mulbeta_2/readVariable_37/read*
T0
5
sub_55/xConst*
valueB
 *  ?*
dtype0
-
sub_55Subsub_55/xbeta_2/read*
T0
D
	Square_18Square&gradients/dense_4/MatMul_grad/MatMul_1*
T0
)
mul_91Mulsub_55	Square_18*
T0
&
add_53Addmul_90mul_91*
T0
%
mul_92Mulmul_2add_52*
T0
5
Const_78Const*
valueB
 *    *
dtype0
5
Const_79Const*
valueB
 *  *
dtype0
>
clip_by_value_18/MinimumMinimumadd_53Const_79*
T0
H
clip_by_value_18Maximumclip_by_value_18/MinimumConst_78*
T0
*
Sqrt_18Sqrtclip_by_value_18*
T0
5
add_54/yConst*
dtype0*
valueB
 *wÌ+2
)
add_54AddSqrt_18add_54/y*
T0
*
div_19RealDivmul_92add_54*
T0
3
sub_56Subdense_4/kernel/readdiv_19*
T0
z
	Assign_51AssignVariable_17add_52*
use_locking(*
T0*
_class
loc:@Variable_17*
validate_shape(
z
	Assign_52AssignVariable_37add_53*
use_locking(*
T0*
_class
loc:@Variable_37*
validate_shape(

	Assign_53Assigndense_4/kernelsub_56*
validate_shape(*!
_class
loc:@dense_4/kernel*
T0*
use_locking(
5
mul_93Mulbeta_1/readVariable_18/read*
T0
5
sub_57/xConst*
valueB
 *  ?*
dtype0
-
sub_57Subsub_57/xbeta_1/read*
T0
J
mul_94Mulsub_57*gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0
&
add_55Addmul_93mul_94*
T0
5
mul_95Mulbeta_2/readVariable_38/read*
T0
5
sub_58/xConst*
dtype0*
valueB
 *  ?
-
sub_58Subsub_58/xbeta_2/read*
T0
H
	Square_19Square*gradients/dense_5/BiasAdd_grad/BiasAddGrad*
T0
)
mul_96Mulsub_58	Square_19*
T0
&
add_56Addmul_95mul_96*
T0
%
mul_97Mulmul_2add_55*
T0
5
Const_80Const*
dtype0*
valueB
 *    
5
Const_81Const*
valueB
 *  *
dtype0
>
clip_by_value_19/MinimumMinimumadd_56Const_81*
T0
H
clip_by_value_19Maximumclip_by_value_19/MinimumConst_80*
T0
*
Sqrt_19Sqrtclip_by_value_19*
T0
5
add_57/yConst*
dtype0*
valueB
 *wÌ+2
)
add_57AddSqrt_19add_57/y*
T0
*
div_20RealDivmul_97add_57*
T0
1
sub_59Subdense_5/bias/readdiv_20*
T0
z
	Assign_54AssignVariable_18add_55*
_class
loc:@Variable_18*
T0*
validate_shape(*
use_locking(
z
	Assign_55AssignVariable_38add_56*
use_locking(*
T0*
_class
loc:@Variable_38*
validate_shape(
|
	Assign_56Assigndense_5/biassub_59*
_class
loc:@dense_5/bias*
T0*
validate_shape(*
use_locking(
5
mul_98Mulbeta_1/readVariable_19/read*
T0
5
sub_60/xConst*
valueB
 *  ?*
dtype0
-
sub_60Subsub_60/xbeta_1/read*
T0
F
mul_99Mulsub_60&gradients/dense_5/MatMul_grad/MatMul_1*
T0
&
add_58Addmul_98mul_99*
T0
6
mul_100Mulbeta_2/readVariable_39/read*
T0
5
sub_61/xConst*
valueB
 *  ?*
dtype0
-
sub_61Subsub_61/xbeta_2/read*
T0
D
	Square_20Square&gradients/dense_5/MatMul_grad/MatMul_1*
T0
*
mul_101Mulsub_61	Square_20*
T0
(
add_59Addmul_100mul_101*
T0
&
mul_102Mulmul_2add_58*
T0
5
Const_82Const*
valueB
 *    *
dtype0
5
Const_83Const*
valueB
 *  *
dtype0
>
clip_by_value_20/MinimumMinimumadd_59Const_83*
T0
H
clip_by_value_20Maximumclip_by_value_20/MinimumConst_82*
T0
*
Sqrt_20Sqrtclip_by_value_20*
T0
5
add_60/yConst*
dtype0*
valueB
 *wÌ+2
)
add_60AddSqrt_20add_60/y*
T0
+
div_21RealDivmul_102add_60*
T0
3
sub_62Subdense_5/kernel/readdiv_21*
T0
z
	Assign_57AssignVariable_19add_58*
use_locking(*
validate_shape(*
T0*
_class
loc:@Variable_19
z
	Assign_58AssignVariable_39add_59*
use_locking(*
T0*
_class
loc:@Variable_39*
validate_shape(

	Assign_59Assigndense_5/kernelsub_62*!
_class
loc:@dense_5/kernel*
T0*
validate_shape(*
use_locking(
ê

group_depsNoOp^mul_1
^AssignAdd^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7	^Assign_8	^Assign_9
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
^Assign_38
^Assign_39
^Assign_40
^Assign_41
^Assign_42
^Assign_43
^Assign_44
^Assign_45
^Assign_46
^Assign_47
^Assign_48
^Assign_49
^Assign_50
^Assign_51
^Assign_52
^Assign_53
^Assign_54
^Assign_55
^Assign_56
^Assign_57
^Assign_58
^Assign_59

group_deps_1NoOp^mul_1
Ù

initNoOp^conv_1/kernel/Assign^conv_1/bias/Assign^conv_2/kernel/Assign^conv_2/bias/Assign^conv_3/kernel/Assign^conv_3/bias/Assign^conv_4/kernel/Assign^conv_4/bias/Assign^conv_5/kernel/Assign^conv_5/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^dense_4/bias/Assign^dense_5/kernel/Assign^dense_5/bias/Assign^iterations/Assign
^lr/Assign^beta_1/Assign^beta_2/Assign^decay/Assign^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign^Variable_8/Assign^Variable_9/Assign^Variable_10/Assign^Variable_11/Assign^Variable_12/Assign^Variable_13/Assign^Variable_14/Assign^Variable_15/Assign^Variable_16/Assign^Variable_17/Assign^Variable_18/Assign^Variable_19/Assign^Variable_20/Assign^Variable_21/Assign^Variable_22/Assign^Variable_23/Assign^Variable_24/Assign^Variable_25/Assign^Variable_26/Assign^Variable_27/Assign^Variable_28/Assign^Variable_29/Assign^Variable_30/Assign^Variable_31/Assign^Variable_32/Assign^Variable_33/Assign^Variable_34/Assign^Variable_35/Assign^Variable_36/Assign^Variable_37/Assign^Variable_38/Assign^Variable_39/Assign"