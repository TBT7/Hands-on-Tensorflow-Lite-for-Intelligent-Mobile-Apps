
A
inputXPlaceholder*
dtype0*
shape:’’’’’’’’’N
A
outputYPlaceholder*
dtype0*
shape:’’’’’’’’’
J
Reshape/shapeConst*%
valueB"’’’’d   d      *
dtype0
@
ReshapeReshapeinputXReshape/shape*
T0*
Tshape0

(conv1/W/Initializer/random_uniform/shapeConst*
dtype0*%
valueB"            *
_class
loc:@conv1/W
o
&conv1/W/Initializer/random_uniform/minConst*
valueB
 *ēÓś¾*
_class
loc:@conv1/W*
dtype0
o
&conv1/W/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *ēÓś>*
_class
loc:@conv1/W
¶
0conv1/W/Initializer/random_uniform/RandomUniformRandomUniform(conv1/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv1/W*
dtype0*
seed2 
¢
&conv1/W/Initializer/random_uniform/subSub&conv1/W/Initializer/random_uniform/max&conv1/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/W
¬
&conv1/W/Initializer/random_uniform/mulMul0conv1/W/Initializer/random_uniform/RandomUniform&conv1/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv1/W

"conv1/W/Initializer/random_uniformAdd&conv1/W/Initializer/random_uniform/mul&conv1/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/W

conv1/W
VariableV2*
shape:*
shared_name *
_class
loc:@conv1/W*
dtype0*
	container 

conv1/W/AssignAssignconv1/W"conv1/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
F
conv1/W/readIdentityconv1/W*
T0*
_class
loc:@conv1/W
<
conv1/zerosConst*
dtype0*
valueB*    
W
conv1/b
VariableV2*
shared_name *
dtype0*
	container *
shape:
|
conv1/b/AssignAssignconv1/bconv1/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv1/b
F
conv1/b/readIdentityconv1/b*
T0*
_class
loc:@conv1/b

conv1/Conv2DConv2DReshapeconv1/W/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
T
conv1/BiasAddBiasAddconv1/Conv2Dconv1/b/read*
T0*
data_formatNHWC
*

conv1/ReluReluconv1/BiasAdd*
T0

(conv2/W/Initializer/random_uniform/shapeConst*
dtype0*%
valueB"            *
_class
loc:@conv2/W
o
&conv2/W/Initializer/random_uniform/minConst*
valueB
 *¬\1¾*
_class
loc:@conv2/W*
dtype0
o
&conv2/W/Initializer/random_uniform/maxConst*
valueB
 *¬\1>*
_class
loc:@conv2/W*
dtype0
¶
0conv2/W/Initializer/random_uniform/RandomUniformRandomUniform(conv2/W/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*
_class
loc:@conv2/W
¢
&conv2/W/Initializer/random_uniform/subSub&conv2/W/Initializer/random_uniform/max&conv2/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv2/W
¬
&conv2/W/Initializer/random_uniform/mulMul0conv2/W/Initializer/random_uniform/RandomUniform&conv2/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv2/W

"conv2/W/Initializer/random_uniformAdd&conv2/W/Initializer/random_uniform/mul&conv2/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv2/W

conv2/W
VariableV2*
_class
loc:@conv2/W*
dtype0*
	container *
shape:*
shared_name 

conv2/W/AssignAssignconv2/W"conv2/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv2/W*
validate_shape(
F
conv2/W/readIdentityconv2/W*
T0*
_class
loc:@conv2/W
<
conv2/zerosConst*
valueB*    *
dtype0
W
conv2/b
VariableV2*
dtype0*
	container *
shape:*
shared_name 
|
conv2/b/AssignAssignconv2/bconv2/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv2/b
F
conv2/b/readIdentityconv2/b*
T0*
_class
loc:@conv2/b

conv2/Conv2DConv2D
conv1/Reluconv2/W/read*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
T
conv2/BiasAddBiasAddconv2/Conv2Dconv2/b/read*
T0*
data_formatNHWC
*

conv2/ReluReluconv2/BiasAdd*
T0
z
MaxPoolMaxPool
conv2/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID
D
Reshape_1/shapeConst*
dtype0*
valueB"’’’’@  
E
	Reshape_1ReshapeMaxPoolReshape_1/shape*
T0*
Tshape0
y
(dense/W/Initializer/random_uniform/shapeConst*
valueB"@     *
_class
loc:@dense/W*
dtype0
o
&dense/W/Initializer/random_uniform/minConst*
valueB
 *pZ¼*
_class
loc:@dense/W*
dtype0
o
&dense/W/Initializer/random_uniform/maxConst*
valueB
 *pZ<*
_class
loc:@dense/W*
dtype0
¶
0dense/W/Initializer/random_uniform/RandomUniformRandomUniform(dense/W/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/W*
dtype0*
seed2 *

seed 
¢
&dense/W/Initializer/random_uniform/subSub&dense/W/Initializer/random_uniform/max&dense/W/Initializer/random_uniform/min*
T0*
_class
loc:@dense/W
¬
&dense/W/Initializer/random_uniform/mulMul0dense/W/Initializer/random_uniform/RandomUniform&dense/W/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/W

"dense/W/Initializer/random_uniformAdd&dense/W/Initializer/random_uniform/mul&dense/W/Initializer/random_uniform/min*
T0*
_class
loc:@dense/W
y
dense/W
VariableV2*
dtype0*
	container *
shape:
Ą*
shared_name *
_class
loc:@dense/W

dense/W/AssignAssigndense/W"dense/W/Initializer/random_uniform*
T0*
_class
loc:@dense/W*
validate_shape(*
use_locking(
F
dense/W/readIdentitydense/W*
T0*
_class
loc:@dense/W
<
dense/zerosConst*
valueB*    *
dtype0
W
dense/b
VariableV2*
shared_name *
dtype0*
	container *
shape:
|
dense/b/AssignAssigndense/bdense/zeros*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
F
dense/b/readIdentitydense/b*
T0*
_class
loc:@dense/b
^
dense/MatMulMatMul	Reshape_1dense/W/read*
transpose_b( *
T0*
transpose_a( 
5
	dense/addAdddense/MatMuldense/b/read*
T0
)

predictionSoftmax	dense/add*
T0
3
	cost/RankConst*
value	B :*
dtype0
7

cost/ShapeShape	dense/add*
T0*
out_type0
5
cost/Rank_1Const*
value	B :*
dtype0
9
cost/Shape_1Shape	dense/add*
T0*
out_type0
4

cost/Sub/yConst*
value	B :*
dtype0
1
cost/SubSubcost/Rank_1
cost/Sub/y*
T0
@
cost/Slice/beginPackcost/Sub*
T0*

axis *
N
=
cost/Slice/sizeConst*
dtype0*
valueB:
Z

cost/SliceSlicecost/Shape_1cost/Slice/begincost/Slice/size*
Index0*
T0
K
cost/concat/values_0Const*
dtype0*
valueB:
’’’’’’’’’
:
cost/concat/axisConst*
value	B : *
dtype0
i
cost/concatConcatV2cost/concat/values_0
cost/Slicecost/concat/axis*

Tidx0*
T0*
N
F
cost/ReshapeReshape	dense/addcost/concat*
T0*
Tshape0
5
cost/Rank_2Const*
value	B :*
dtype0
7
cost/Shape_2ShapeoutputY*
T0*
out_type0
6
cost/Sub_1/yConst*
value	B :*
dtype0
5

cost/Sub_1Subcost/Rank_2cost/Sub_1/y*
T0
D
cost/Slice_1/beginPack
cost/Sub_1*
T0*

axis *
N
?
cost/Slice_1/sizeConst*
valueB:*
dtype0
`
cost/Slice_1Slicecost/Shape_2cost/Slice_1/begincost/Slice_1/size*
Index0*
T0
M
cost/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0
<
cost/concat_1/axisConst*
value	B : *
dtype0
q
cost/concat_1ConcatV2cost/concat_1/values_0cost/Slice_1cost/concat_1/axis*
T0*
N*

Tidx0
H
cost/Reshape_1ReshapeoutputYcost/concat_1*
T0*
Tshape0
j
"cost/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitscost/Reshapecost/Reshape_1*
T0
6
cost/Sub_2/yConst*
value	B :*
dtype0
3

cost/Sub_2Sub	cost/Rankcost/Sub_2/y*
T0
@
cost/Slice_2/beginConst*
valueB: *
dtype0
C
cost/Slice_2/sizePack
cost/Sub_2*
T0*

axis *
N
^
cost/Slice_2Slice
cost/Shapecost/Slice_2/begincost/Slice_2/size*
Index0*
T0
b
cost/Reshape_2Reshape"cost/SoftmaxCrossEntropyWithLogitscost/Slice_2*
T0*
Tshape0
8

cost/ConstConst*
valueB: *
dtype0
S
	cost/MeanMeancost/Reshape_2
cost/Const*
T0*
	keep_dims( *

Tidx0
>
train/gradients/ShapeConst*
valueB *
dtype0
B
train/gradients/ConstConst*
valueB
 *  ?*
dtype0
S
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/Const*
T0
Z
,train/gradients/cost/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

&train/gradients/cost/Mean_grad/ReshapeReshapetrain/gradients/Fill,train/gradients/cost/Mean_grad/Reshape/shape*
T0*
Tshape0
V
$train/gradients/cost/Mean_grad/ShapeShapecost/Reshape_2*
T0*
out_type0

#train/gradients/cost/Mean_grad/TileTile&train/gradients/cost/Mean_grad/Reshape$train/gradients/cost/Mean_grad/Shape*

Tmultiples0*
T0
X
&train/gradients/cost/Mean_grad/Shape_1Shapecost/Reshape_2*
T0*
out_type0
O
&train/gradients/cost/Mean_grad/Shape_2Const*
valueB *
dtype0

$train/gradients/cost/Mean_grad/ConstConst*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
valueB: *
dtype0
Ś
#train/gradients/cost/Mean_grad/ProdProd&train/gradients/cost/Mean_grad/Shape_1$train/gradients/cost/Mean_grad/Const*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
	keep_dims( *

Tidx0

&train/gradients/cost/Mean_grad/Const_1Const*
dtype0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
valueB: 
Ž
%train/gradients/cost/Mean_grad/Prod_1Prod&train/gradients/cost/Mean_grad/Shape_2&train/gradients/cost/Mean_grad/Const_1*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
	keep_dims( *

Tidx0

(train/gradients/cost/Mean_grad/Maximum/yConst*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1*
value	B :*
dtype0
Ę
&train/gradients/cost/Mean_grad/MaximumMaximum%train/gradients/cost/Mean_grad/Prod_1(train/gradients/cost/Mean_grad/Maximum/y*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1
Ä
'train/gradients/cost/Mean_grad/floordivFloorDiv#train/gradients/cost/Mean_grad/Prod&train/gradients/cost/Mean_grad/Maximum*
T0*9
_class/
-+loc:@train/gradients/cost/Mean_grad/Shape_1
l
#train/gradients/cost/Mean_grad/CastCast'train/gradients/cost/Mean_grad/floordiv*

SrcT0*

DstT0

&train/gradients/cost/Mean_grad/truedivRealDiv#train/gradients/cost/Mean_grad/Tile#train/gradients/cost/Mean_grad/Cast*
T0
o
)train/gradients/cost/Reshape_2_grad/ShapeShape"cost/SoftmaxCrossEntropyWithLogits*
T0*
out_type0
 
+train/gradients/cost/Reshape_2_grad/ReshapeReshape&train/gradients/cost/Mean_grad/truediv)train/gradients/cost/Reshape_2_grad/Shape*
T0*
Tshape0
V
train/gradients/zeros_like	ZerosLike$cost/SoftmaxCrossEntropyWithLogits:1*
T0
y
Ftrain/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
valueB :
’’’’’’’’’
Ś
Btrain/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims+train/gradients/cost/Reshape_2_grad/ReshapeFtrain/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0
µ
;train/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/mulMulBtrain/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/ExpandDims$cost/SoftmaxCrossEntropyWithLogits:1*
T0
T
'train/gradients/cost/Reshape_grad/ShapeShape	dense/add*
T0*
out_type0
±
)train/gradients/cost/Reshape_grad/ReshapeReshape;train/gradients/cost/SoftmaxCrossEntropyWithLogits_grad/mul'train/gradients/cost/Reshape_grad/Shape*
T0*
Tshape0
T
$train/gradients/dense/add_grad/ShapeShapedense/MatMul*
T0*
out_type0
T
&train/gradients/dense/add_grad/Shape_1Const*
dtype0*
valueB:
¤
4train/gradients/dense/add_grad/BroadcastGradientArgsBroadcastGradientArgs$train/gradients/dense/add_grad/Shape&train/gradients/dense/add_grad/Shape_1*
T0
°
"train/gradients/dense/add_grad/SumSum)train/gradients/cost/Reshape_grad/Reshape4train/gradients/dense/add_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

&train/gradients/dense/add_grad/ReshapeReshape"train/gradients/dense/add_grad/Sum$train/gradients/dense/add_grad/Shape*
T0*
Tshape0
“
$train/gradients/dense/add_grad/Sum_1Sum)train/gradients/cost/Reshape_grad/Reshape6train/gradients/dense/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

(train/gradients/dense/add_grad/Reshape_1Reshape$train/gradients/dense/add_grad/Sum_1&train/gradients/dense/add_grad/Shape_1*
T0*
Tshape0

/train/gradients/dense/add_grad/tuple/group_depsNoOp'^train/gradients/dense/add_grad/Reshape)^train/gradients/dense/add_grad/Reshape_1
į
7train/gradients/dense/add_grad/tuple/control_dependencyIdentity&train/gradients/dense/add_grad/Reshape0^train/gradients/dense/add_grad/tuple/group_deps*
T0*9
_class/
-+loc:@train/gradients/dense/add_grad/Reshape
ē
9train/gradients/dense/add_grad/tuple/control_dependency_1Identity(train/gradients/dense/add_grad/Reshape_10^train/gradients/dense/add_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/dense/add_grad/Reshape_1
Ø
(train/gradients/dense/MatMul_grad/MatMulMatMul7train/gradients/dense/add_grad/tuple/control_dependencydense/W/read*
T0*
transpose_a( *
transpose_b(
§
*train/gradients/dense/MatMul_grad/MatMul_1MatMul	Reshape_17train/gradients/dense/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

2train/gradients/dense/MatMul_grad/tuple/group_depsNoOp)^train/gradients/dense/MatMul_grad/MatMul+^train/gradients/dense/MatMul_grad/MatMul_1
ė
:train/gradients/dense/MatMul_grad/tuple/control_dependencyIdentity(train/gradients/dense/MatMul_grad/MatMul3^train/gradients/dense/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/dense/MatMul_grad/MatMul
ń
<train/gradients/dense/MatMul_grad/tuple/control_dependency_1Identity*train/gradients/dense/MatMul_grad/MatMul_13^train/gradients/dense/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@train/gradients/dense/MatMul_grad/MatMul_1
O
$train/gradients/Reshape_1_grad/ShapeShapeMaxPool*
T0*
out_type0
Ŗ
&train/gradients/Reshape_1_grad/ReshapeReshape:train/gradients/dense/MatMul_grad/tuple/control_dependency$train/gradients/Reshape_1_grad/Shape*
T0*
Tshape0
Š
(train/gradients/MaxPool_grad/MaxPoolGradMaxPoolGrad
conv2/ReluMaxPool&train/gradients/Reshape_1_grad/Reshape*
ksize
*
paddingVALID*
T0*
strides
*
data_formatNHWC
s
(train/gradients/conv2/Relu_grad/ReluGradReluGrad(train/gradients/MaxPool_grad/MaxPoolGrad
conv2/Relu*
T0

.train/gradients/conv2/BiasAdd_grad/BiasAddGradBiasAddGrad(train/gradients/conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC

3train/gradients/conv2/BiasAdd_grad/tuple/group_depsNoOp)^train/gradients/conv2/Relu_grad/ReluGrad/^train/gradients/conv2/BiasAdd_grad/BiasAddGrad
ķ
;train/gradients/conv2/BiasAdd_grad/tuple/control_dependencyIdentity(train/gradients/conv2/Relu_grad/ReluGrad4^train/gradients/conv2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/conv2/Relu_grad/ReluGrad
ū
=train/gradients/conv2/BiasAdd_grad/tuple/control_dependency_1Identity.train/gradients/conv2/BiasAdd_grad/BiasAddGrad4^train/gradients/conv2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@train/gradients/conv2/BiasAdd_grad/BiasAddGrad
n
(train/gradients/conv2/Conv2D_grad/ShapeNShapeN
conv1/Reluconv2/W/read*
T0*
out_type0*
N
¢
5train/gradients/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(train/gradients/conv2/Conv2D_grad/ShapeNconv2/W/read;train/gradients/conv2/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
T0
¤
6train/gradients/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter
conv1/Relu*train/gradients/conv2/Conv2D_grad/ShapeN:1;train/gradients/conv2/BiasAdd_grad/tuple/control_dependency*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
«
2train/gradients/conv2/Conv2D_grad/tuple/group_depsNoOp6^train/gradients/conv2/Conv2D_grad/Conv2DBackpropInput7^train/gradients/conv2/Conv2D_grad/Conv2DBackpropFilter

:train/gradients/conv2/Conv2D_grad/tuple/control_dependencyIdentity5train/gradients/conv2/Conv2D_grad/Conv2DBackpropInput3^train/gradients/conv2/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train/gradients/conv2/Conv2D_grad/Conv2DBackpropInput

<train/gradients/conv2/Conv2D_grad/tuple/control_dependency_1Identity6train/gradients/conv2/Conv2D_grad/Conv2DBackpropFilter3^train/gradients/conv2/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train/gradients/conv2/Conv2D_grad/Conv2DBackpropFilter

(train/gradients/conv1/Relu_grad/ReluGradReluGrad:train/gradients/conv2/Conv2D_grad/tuple/control_dependency
conv1/Relu*
T0

.train/gradients/conv1/BiasAdd_grad/BiasAddGradBiasAddGrad(train/gradients/conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC

3train/gradients/conv1/BiasAdd_grad/tuple/group_depsNoOp)^train/gradients/conv1/Relu_grad/ReluGrad/^train/gradients/conv1/BiasAdd_grad/BiasAddGrad
ķ
;train/gradients/conv1/BiasAdd_grad/tuple/control_dependencyIdentity(train/gradients/conv1/Relu_grad/ReluGrad4^train/gradients/conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@train/gradients/conv1/Relu_grad/ReluGrad
ū
=train/gradients/conv1/BiasAdd_grad/tuple/control_dependency_1Identity.train/gradients/conv1/BiasAdd_grad/BiasAddGrad4^train/gradients/conv1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@train/gradients/conv1/BiasAdd_grad/BiasAddGrad
k
(train/gradients/conv1/Conv2D_grad/ShapeNShapeNReshapeconv1/W/read*
T0*
out_type0*
N
¢
5train/gradients/conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(train/gradients/conv1/Conv2D_grad/ShapeNconv1/W/read;train/gradients/conv1/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
”
6train/gradients/conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshape*train/gradients/conv1/Conv2D_grad/ShapeN:1;train/gradients/conv1/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
T0
«
2train/gradients/conv1/Conv2D_grad/tuple/group_depsNoOp6^train/gradients/conv1/Conv2D_grad/Conv2DBackpropInput7^train/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter

:train/gradients/conv1/Conv2D_grad/tuple/control_dependencyIdentity5train/gradients/conv1/Conv2D_grad/Conv2DBackpropInput3^train/gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@train/gradients/conv1/Conv2D_grad/Conv2DBackpropInput

<train/gradients/conv1/Conv2D_grad/tuple/control_dependency_1Identity6train/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter3^train/gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@train/gradients/conv1/Conv2D_grad/Conv2DBackpropFilter
h
train/beta1_power/initial_valueConst*
dtype0*
_class
loc:@conv1/W*
valueB
 *fff?
y
train/beta1_power
VariableV2*
shared_name *
_class
loc:@conv1/W*
dtype0*
	container *
shape: 
¤
train/beta1_power/AssignAssigntrain/beta1_powertrain/beta1_power/initial_value*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
Z
train/beta1_power/readIdentitytrain/beta1_power*
T0*
_class
loc:@conv1/W
h
train/beta2_power/initial_valueConst*
_class
loc:@conv1/W*
valueB
 *w¾?*
dtype0
y
train/beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@conv1/W*
dtype0*
	container 
¤
train/beta2_power/AssignAssigntrain/beta2_powertrain/beta2_power/initial_value*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
Z
train/beta2_power/readIdentitytrain/beta2_power*
T0*
_class
loc:@conv1/W
}
$train/conv1/W/Adam/Initializer/zerosConst*%
valueB*    *
_class
loc:@conv1/W*
dtype0

train/conv1/W/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@conv1/W*
dtype0*
	container 
«
train/conv1/W/Adam/AssignAssigntrain/conv1/W/Adam$train/conv1/W/Adam/Initializer/zeros*
T0*
_class
loc:@conv1/W*
validate_shape(*
use_locking(
\
train/conv1/W/Adam/readIdentitytrain/conv1/W/Adam*
T0*
_class
loc:@conv1/W

&train/conv1/W/Adam_1/Initializer/zerosConst*%
valueB*    *
_class
loc:@conv1/W*
dtype0

train/conv1/W/Adam_1
VariableV2*
shared_name *
_class
loc:@conv1/W*
dtype0*
	container *
shape:
±
train/conv1/W/Adam_1/AssignAssigntrain/conv1/W/Adam_1&train/conv1/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
`
train/conv1/W/Adam_1/readIdentitytrain/conv1/W/Adam_1*
T0*
_class
loc:@conv1/W
q
$train/conv1/b/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@conv1/b*
dtype0
~
train/conv1/b/Adam
VariableV2*
shared_name *
_class
loc:@conv1/b*
dtype0*
	container *
shape:
«
train/conv1/b/Adam/AssignAssigntrain/conv1/b/Adam$train/conv1/b/Adam/Initializer/zeros*
T0*
_class
loc:@conv1/b*
validate_shape(*
use_locking(
\
train/conv1/b/Adam/readIdentitytrain/conv1/b/Adam*
T0*
_class
loc:@conv1/b
s
&train/conv1/b/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@conv1/b*
dtype0

train/conv1/b/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@conv1/b
±
train/conv1/b/Adam_1/AssignAssigntrain/conv1/b/Adam_1&train/conv1/b/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv1/b
`
train/conv1/b/Adam_1/readIdentitytrain/conv1/b/Adam_1*
T0*
_class
loc:@conv1/b
}
$train/conv2/W/Adam/Initializer/zerosConst*%
valueB*    *
_class
loc:@conv2/W*
dtype0

train/conv2/W/Adam
VariableV2*
shared_name *
_class
loc:@conv2/W*
dtype0*
	container *
shape:
«
train/conv2/W/Adam/AssignAssigntrain/conv2/W/Adam$train/conv2/W/Adam/Initializer/zeros*
T0*
_class
loc:@conv2/W*
validate_shape(*
use_locking(
\
train/conv2/W/Adam/readIdentitytrain/conv2/W/Adam*
T0*
_class
loc:@conv2/W

&train/conv2/W/Adam_1/Initializer/zerosConst*%
valueB*    *
_class
loc:@conv2/W*
dtype0

train/conv2/W/Adam_1
VariableV2*
shared_name *
_class
loc:@conv2/W*
dtype0*
	container *
shape:
±
train/conv2/W/Adam_1/AssignAssigntrain/conv2/W/Adam_1&train/conv2/W/Adam_1/Initializer/zeros*
T0*
_class
loc:@conv2/W*
validate_shape(*
use_locking(
`
train/conv2/W/Adam_1/readIdentitytrain/conv2/W/Adam_1*
T0*
_class
loc:@conv2/W
q
$train/conv2/b/Adam/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@conv2/b
~
train/conv2/b/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@conv2/b*
dtype0*
	container 
«
train/conv2/b/Adam/AssignAssigntrain/conv2/b/Adam$train/conv2/b/Adam/Initializer/zeros*
T0*
_class
loc:@conv2/b*
validate_shape(*
use_locking(
\
train/conv2/b/Adam/readIdentitytrain/conv2/b/Adam*
T0*
_class
loc:@conv2/b
s
&train/conv2/b/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@conv2/b*
dtype0

train/conv2/b/Adam_1
VariableV2*
shared_name *
_class
loc:@conv2/b*
dtype0*
	container *
shape:
±
train/conv2/b/Adam_1/AssignAssigntrain/conv2/b/Adam_1&train/conv2/b/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv2/b
`
train/conv2/b/Adam_1/readIdentitytrain/conv2/b/Adam_1*
T0*
_class
loc:@conv2/b
w
$train/dense/W/Adam/Initializer/zerosConst*
dtype0*
valueB
Ą*    *
_class
loc:@dense/W

train/dense/W/Adam
VariableV2*
shape:
Ą*
shared_name *
_class
loc:@dense/W*
dtype0*
	container 
«
train/dense/W/Adam/AssignAssigntrain/dense/W/Adam$train/dense/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
\
train/dense/W/Adam/readIdentitytrain/dense/W/Adam*
T0*
_class
loc:@dense/W
y
&train/dense/W/Adam_1/Initializer/zerosConst*
valueB
Ą*    *
_class
loc:@dense/W*
dtype0

train/dense/W/Adam_1
VariableV2*
shared_name *
_class
loc:@dense/W*
dtype0*
	container *
shape:
Ą
±
train/dense/W/Adam_1/AssignAssigntrain/dense/W/Adam_1&train/dense/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
`
train/dense/W/Adam_1/readIdentitytrain/dense/W/Adam_1*
T0*
_class
loc:@dense/W
q
$train/dense/b/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/b*
dtype0
~
train/dense/b/Adam
VariableV2*
_class
loc:@dense/b*
dtype0*
	container *
shape:*
shared_name 
«
train/dense/b/Adam/AssignAssigntrain/dense/b/Adam$train/dense/b/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
\
train/dense/b/Adam/readIdentitytrain/dense/b/Adam*
T0*
_class
loc:@dense/b
s
&train/dense/b/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/b*
dtype0

train/dense/b/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense/b
±
train/dense/b/Adam_1/AssignAssigntrain/dense/b/Adam_1&train/dense/b/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
`
train/dense/b/Adam_1/readIdentitytrain/dense/b/Adam_1*
T0*
_class
loc:@dense/b
E
train/Adam/learning_rateConst*
valueB
 *k}:*
dtype0
=
train/Adam/beta1Const*
valueB
 *fff?*
dtype0
=
train/Adam/beta2Const*
valueB
 *w¾?*
dtype0
?
train/Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0
ļ
#train/Adam/update_conv1/W/ApplyAdam	ApplyAdamconv1/Wtrain/conv1/W/Adamtrain/conv1/W/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon<train/gradients/conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv1/W*
use_nesterov( 
š
#train/Adam/update_conv1/b/ApplyAdam	ApplyAdamconv1/btrain/conv1/b/Adamtrain/conv1/b/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/conv1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv1/b*
use_nesterov( 
ļ
#train/Adam/update_conv2/W/ApplyAdam	ApplyAdamconv2/Wtrain/conv2/W/Adamtrain/conv2/W/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon<train/gradients/conv2/Conv2D_grad/tuple/control_dependency_1*
T0*
_class
loc:@conv2/W*
use_nesterov( *
use_locking( 
š
#train/Adam/update_conv2/b/ApplyAdam	ApplyAdamconv2/btrain/conv2/b/Adamtrain/conv2/b/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon=train/gradients/conv2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@conv2/b
ļ
#train/Adam/update_dense/W/ApplyAdam	ApplyAdamdense/Wtrain/dense/W/Adamtrain/dense/W/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon<train/gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/W*
use_nesterov( 
ģ
#train/Adam/update_dense/b/ApplyAdam	ApplyAdamdense/btrain/dense/b/Adamtrain/dense/b/Adam_1train/beta1_power/readtrain/beta2_power/readtrain/Adam/learning_ratetrain/Adam/beta1train/Adam/beta2train/Adam/epsilon9train/gradients/dense/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/b*
use_nesterov( 
Č
train/Adam/mulMultrain/beta1_power/readtrain/Adam/beta1$^train/Adam/update_conv1/W/ApplyAdam$^train/Adam/update_conv1/b/ApplyAdam$^train/Adam/update_conv2/W/ApplyAdam$^train/Adam/update_conv2/b/ApplyAdam$^train/Adam/update_dense/W/ApplyAdam$^train/Adam/update_dense/b/ApplyAdam*
T0*
_class
loc:@conv1/W

train/Adam/AssignAssigntrain/beta1_powertrain/Adam/mul*
T0*
_class
loc:@conv1/W*
validate_shape(*
use_locking( 
Ź
train/Adam/mul_1Multrain/beta2_power/readtrain/Adam/beta2$^train/Adam/update_conv1/W/ApplyAdam$^train/Adam/update_conv1/b/ApplyAdam$^train/Adam/update_conv2/W/ApplyAdam$^train/Adam/update_conv2/b/ApplyAdam$^train/Adam/update_dense/W/ApplyAdam$^train/Adam/update_dense/b/ApplyAdam*
T0*
_class
loc:@conv1/W

train/Adam/Assign_1Assigntrain/beta2_powertrain/Adam/mul_1*
T0*
_class
loc:@conv1/W*
validate_shape(*
use_locking( 
 

train/AdamNoOp$^train/Adam/update_conv1/W/ApplyAdam$^train/Adam/update_conv1/b/ApplyAdam$^train/Adam/update_conv2/W/ApplyAdam$^train/Adam/update_conv2/b/ApplyAdam$^train/Adam/update_dense/W/ApplyAdam$^train/Adam/update_dense/b/ApplyAdam^train/Adam/Assign^train/Adam/Assign_1
8

save/ConstConst*
valueB Bmodel*
dtype0

save/SaveV2/tensor_namesConst*ķ
valuećBąBconv1/WBconv1/bBconv2/WBconv2/bBdense/WBdense/bBtrain/beta1_powerBtrain/beta2_powerBtrain/conv1/W/AdamBtrain/conv1/W/Adam_1Btrain/conv1/b/AdamBtrain/conv1/b/Adam_1Btrain/conv2/W/AdamBtrain/conv2/W/Adam_1Btrain/conv2/b/AdamBtrain/conv2/b/Adam_1Btrain/dense/W/AdamBtrain/dense/W/Adam_1Btrain/dense/b/AdamBtrain/dense/b/Adam_1*
dtype0
o
save/SaveV2/shape_and_slicesConst*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
Õ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv1/Wconv1/bconv2/Wconv2/bdense/Wdense/btrain/beta1_powertrain/beta2_powertrain/conv1/W/Adamtrain/conv1/W/Adam_1train/conv1/b/Adamtrain/conv1/b/Adam_1train/conv2/W/Adamtrain/conv2/W/Adam_1train/conv2/b/Adamtrain/conv2/b/Adam_1train/dense/W/Adamtrain/dense/W/Adam_1train/dense/b/Adamtrain/dense/b/Adam_1*"
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
O
save/RestoreV2/tensor_namesConst*
valueBBconv1/W*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
|
save/AssignAssignconv1/Wsave/RestoreV2*
T0*
_class
loc:@conv1/W*
validate_shape(*
use_locking(
Q
save/RestoreV2_1/tensor_namesConst*
valueBBconv1/b*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2

save/Assign_1Assignconv1/bsave/RestoreV2_1*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
Q
save/RestoreV2_2/tensor_namesConst*
dtype0*
valueBBconv2/W
N
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2

save/Assign_2Assignconv2/Wsave/RestoreV2_2*
use_locking(*
T0*
_class
loc:@conv2/W*
validate_shape(
Q
save/RestoreV2_3/tensor_namesConst*
dtype0*
valueBBconv2/b
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2

save/Assign_3Assignconv2/bsave/RestoreV2_3*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv2/b
Q
save/RestoreV2_4/tensor_namesConst*
valueBBdense/W*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2

save/Assign_4Assigndense/Wsave/RestoreV2_4*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
Q
save/RestoreV2_5/tensor_namesConst*
valueBBdense/b*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2

save/Assign_5Assigndense/bsave/RestoreV2_5*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
[
save/RestoreV2_6/tensor_namesConst*
dtype0*&
valueBBtrain/beta1_power
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2

save/Assign_6Assigntrain/beta1_powersave/RestoreV2_6*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
[
save/RestoreV2_7/tensor_namesConst*&
valueBBtrain/beta2_power*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2

save/Assign_7Assigntrain/beta2_powersave/RestoreV2_7*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
\
save/RestoreV2_8/tensor_namesConst*'
valueBBtrain/conv1/W/Adam*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2

save/Assign_8Assigntrain/conv1/W/Adamsave/RestoreV2_8*
T0*
_class
loc:@conv1/W*
validate_shape(*
use_locking(
^
save/RestoreV2_9/tensor_namesConst*)
value BBtrain/conv1/W/Adam_1*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2

save/Assign_9Assigntrain/conv1/W/Adam_1save/RestoreV2_9*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
]
save/RestoreV2_10/tensor_namesConst*'
valueBBtrain/conv1/b/Adam*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2

save/Assign_10Assigntrain/conv1/b/Adamsave/RestoreV2_10*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
_
save/RestoreV2_11/tensor_namesConst*)
value BBtrain/conv1/b/Adam_1*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2

save/Assign_11Assigntrain/conv1/b/Adam_1save/RestoreV2_11*
T0*
_class
loc:@conv1/b*
validate_shape(*
use_locking(
]
save/RestoreV2_12/tensor_namesConst*'
valueBBtrain/conv2/W/Adam*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2

save/Assign_12Assigntrain/conv2/W/Adamsave/RestoreV2_12*
use_locking(*
T0*
_class
loc:@conv2/W*
validate_shape(
_
save/RestoreV2_13/tensor_namesConst*)
value BBtrain/conv2/W/Adam_1*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2

save/Assign_13Assigntrain/conv2/W/Adam_1save/RestoreV2_13*
use_locking(*
T0*
_class
loc:@conv2/W*
validate_shape(
]
save/RestoreV2_14/tensor_namesConst*'
valueBBtrain/conv2/b/Adam*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2

save/Assign_14Assigntrain/conv2/b/Adamsave/RestoreV2_14*
use_locking(*
T0*
_class
loc:@conv2/b*
validate_shape(
_
save/RestoreV2_15/tensor_namesConst*)
value BBtrain/conv2/b/Adam_1*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2

save/Assign_15Assigntrain/conv2/b/Adam_1save/RestoreV2_15*
use_locking(*
T0*
_class
loc:@conv2/b*
validate_shape(
]
save/RestoreV2_16/tensor_namesConst*'
valueBBtrain/dense/W/Adam*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2

save/Assign_16Assigntrain/dense/W/Adamsave/RestoreV2_16*
T0*
_class
loc:@dense/W*
validate_shape(*
use_locking(
_
save/RestoreV2_17/tensor_namesConst*)
value BBtrain/dense/W/Adam_1*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2

save/Assign_17Assigntrain/dense/W/Adam_1save/RestoreV2_17*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
]
save/RestoreV2_18/tensor_namesConst*'
valueBBtrain/dense/b/Adam*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2

save/Assign_18Assigntrain/dense/b/Adamsave/RestoreV2_18*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
_
save/RestoreV2_19/tensor_namesConst*)
value BBtrain/dense/b/Adam_1*
dtype0
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2

save/Assign_19Assigntrain/dense/b/Adam_1save/RestoreV2_19*
T0*
_class
loc:@dense/b*
validate_shape(*
use_locking(
ą
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19

initNoOp^conv1/W/Assign^conv1/b/Assign^conv2/W/Assign^conv2/b/Assign^dense/W/Assign^dense/b/Assign^train/beta1_power/Assign^train/beta2_power/Assign^train/conv1/W/Adam/Assign^train/conv1/W/Adam_1/Assign^train/conv1/b/Adam/Assign^train/conv1/b/Adam_1/Assign^train/conv2/W/Adam/Assign^train/conv2/W/Adam_1/Assign^train/conv2/b/Adam/Assign^train/conv2/b/Adam_1/Assign^train/dense/W/Adam/Assign^train/dense/W/Adam_1/Assign^train/dense/b/Adam/Assign^train/dense/b/Adam_1/Assign"