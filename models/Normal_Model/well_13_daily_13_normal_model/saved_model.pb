��
��
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
|
dense_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*!
shared_namedense_164/kernel
u
$dense_164/kernel/Read/ReadVariableOpReadVariableOpdense_164/kernel*
_output_shapes

:2*
dtype0
t
dense_164/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_164/bias
m
"dense_164/bias/Read/ReadVariableOpReadVariableOpdense_164/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
gru_164/gru_cell_164/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namegru_164/gru_cell_164/kernel
�
/gru_164/gru_cell_164/kernel/Read/ReadVariableOpReadVariableOpgru_164/gru_cell_164/kernel*
_output_shapes
:	�*
dtype0
�
%gru_164/gru_cell_164/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*6
shared_name'%gru_164/gru_cell_164/recurrent_kernel
�
9gru_164/gru_cell_164/recurrent_kernel/Read/ReadVariableOpReadVariableOp%gru_164/gru_cell_164/recurrent_kernel*
_output_shapes
:	2�*
dtype0
�
gru_164/gru_cell_164/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_namegru_164/gru_cell_164/bias
�
-gru_164/gru_cell_164/bias/Read/ReadVariableOpReadVariableOpgru_164/gru_cell_164/bias*
_output_shapes
:	�*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
�
Adam/dense_164/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_164/kernel/m
�
+Adam/dense_164/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_164/kernel/m*
_output_shapes

:2*
dtype0
�
Adam/dense_164/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_164/bias/m
{
)Adam/dense_164/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_164/bias/m*
_output_shapes
:*
dtype0
�
"Adam/gru_164/gru_cell_164/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/gru_164/gru_cell_164/kernel/m
�
6Adam/gru_164/gru_cell_164/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/gru_164/gru_cell_164/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/gru_164/gru_cell_164/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/gru_164/gru_cell_164/recurrent_kernel/m
�
@Adam/gru_164/gru_cell_164/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/gru_164/gru_cell_164/recurrent_kernel/m*
_output_shapes
:	2�*
dtype0
�
 Adam/gru_164/gru_cell_164/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*1
shared_name" Adam/gru_164/gru_cell_164/bias/m
�
4Adam/gru_164/gru_cell_164/bias/m/Read/ReadVariableOpReadVariableOp Adam/gru_164/gru_cell_164/bias/m*
_output_shapes
:	�*
dtype0
�
Adam/dense_164/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_164/kernel/v
�
+Adam/dense_164/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_164/kernel/v*
_output_shapes

:2*
dtype0
�
Adam/dense_164/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_164/bias/v
{
)Adam/dense_164/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_164/bias/v*
_output_shapes
:*
dtype0
�
"Adam/gru_164/gru_cell_164/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/gru_164/gru_cell_164/kernel/v
�
6Adam/gru_164/gru_cell_164/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/gru_164/gru_cell_164/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/gru_164/gru_cell_164/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2�*=
shared_name.,Adam/gru_164/gru_cell_164/recurrent_kernel/v
�
@Adam/gru_164/gru_cell_164/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/gru_164/gru_cell_164/recurrent_kernel/v*
_output_shapes
:	2�*
dtype0
�
 Adam/gru_164/gru_cell_164/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*1
shared_name" Adam/gru_164/gru_cell_164/bias/v
�
4Adam/gru_164/gru_cell_164/bias/v/Read/ReadVariableOpReadVariableOp Adam/gru_164/gru_cell_164/bias/v*
_output_shapes
:	�*
dtype0

NoOpNoOp
�!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*� 
value� B�  B� 
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
l
	cell


state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
�
iter

beta_1

beta_2
	decay
learning_ratem;m<m=m>m?v@vAvBvCvD
 
#
0
1
2
3
4
#
0
1
2
3
4
�

layers
regularization_losses
trainable_variables
	variables
layer_metrics
non_trainable_variables
 metrics
!layer_regularization_losses
 
~

kernel
recurrent_kernel
bias
"regularization_losses
#trainable_variables
$	variables
%	keras_api
 
 

0
1
2

0
1
2
�

&layers
regularization_losses
trainable_variables
	variables
'non_trainable_variables
(layer_metrics

)states
*metrics
+layer_regularization_losses
\Z
VARIABLE_VALUEdense_164/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_164/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�

,layers
regularization_losses
trainable_variables
	variables
-layer_metrics
.non_trainable_variables
/metrics
0layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEgru_164/gru_cell_164/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%gru_164/gru_cell_164/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEgru_164/gru_cell_164/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
 

10
 
 

0
1
2

0
1
2
�

2layers
"regularization_losses
#trainable_variables
$	variables
3layer_metrics
4non_trainable_variables
5metrics
6layer_regularization_losses

	0
 
 
 
 
 
 
 
 
 
 
4
	7total
	8count
9	variables
:	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

70
81

9	variables
}
VARIABLE_VALUEAdam/dense_164/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_164/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/gru_164/gru_cell_164/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/gru_164/gru_cell_164/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/gru_164/gru_cell_164/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_164/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_164/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/gru_164/gru_cell_164/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/gru_164/gru_cell_164/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE Adam/gru_164/gru_cell_164/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_gru_164_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_164_inputgru_164/gru_cell_164/biasgru_164/gru_cell_164/kernel%gru_164/gru_cell_164/recurrent_kerneldense_164/kerneldense_164/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1077957
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_164/kernel/Read/ReadVariableOp"dense_164/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/gru_164/gru_cell_164/kernel/Read/ReadVariableOp9gru_164/gru_cell_164/recurrent_kernel/Read/ReadVariableOp-gru_164/gru_cell_164/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_164/kernel/m/Read/ReadVariableOp)Adam/dense_164/bias/m/Read/ReadVariableOp6Adam/gru_164/gru_cell_164/kernel/m/Read/ReadVariableOp@Adam/gru_164/gru_cell_164/recurrent_kernel/m/Read/ReadVariableOp4Adam/gru_164/gru_cell_164/bias/m/Read/ReadVariableOp+Adam/dense_164/kernel/v/Read/ReadVariableOp)Adam/dense_164/bias/v/Read/ReadVariableOp6Adam/gru_164/gru_cell_164/kernel/v/Read/ReadVariableOp@Adam/gru_164/gru_cell_164/recurrent_kernel/v/Read/ReadVariableOp4Adam/gru_164/gru_cell_164/bias/v/Read/ReadVariableOpConst*#
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_1079185
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_164/kerneldense_164/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_164/gru_cell_164/kernel%gru_164/gru_cell_164/recurrent_kernelgru_164/gru_cell_164/biastotalcountAdam/dense_164/kernel/mAdam/dense_164/bias/m"Adam/gru_164/gru_cell_164/kernel/m,Adam/gru_164/gru_cell_164/recurrent_kernel/m Adam/gru_164/gru_cell_164/bias/mAdam/dense_164/kernel/vAdam/dense_164/bias/v"Adam/gru_164/gru_cell_164/kernel/v,Adam/gru_164/gru_cell_164/recurrent_kernel/v Adam/gru_164/gru_cell_164/bias/v*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_1079261�
�F
�
while_body_1077553
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_164_readvariableop_resource_07
3while_gru_cell_164_matmul_readvariableop_resource_09
5while_gru_cell_164_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_164_readvariableop_resource5
1while_gru_cell_164_matmul_readvariableop_resource7
3while_gru_cell_164_matmul_1_readvariableop_resource��(while/gru_cell_164/MatMul/ReadVariableOp�*while/gru_cell_164/MatMul_1/ReadVariableOp�!while/gru_cell_164/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
!while/gru_cell_164/ReadVariableOpReadVariableOp,while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02#
!while/gru_cell_164/ReadVariableOp�
while/gru_cell_164/unstackUnpack)while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
while/gru_cell_164/unstack�
(while/gru_cell_164/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/gru_cell_164/MatMul/ReadVariableOp�
while/gru_cell_164/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul�
while/gru_cell_164/BiasAddBiasAdd#while/gru_cell_164/MatMul:product:0#while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAddv
while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_164/Const�
"while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"while/gru_cell_164/split/split_dim�
while/gru_cell_164/splitSplit+while/gru_cell_164/split/split_dim:output:0#while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split�
*while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype02,
*while/gru_cell_164/MatMul_1/ReadVariableOp�
while/gru_cell_164/MatMul_1MatMulwhile_placeholder_22while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul_1�
while/gru_cell_164/BiasAdd_1BiasAdd%while/gru_cell_164/MatMul_1:product:0#while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAdd_1�
while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
while/gru_cell_164/Const_1�
$while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$while/gru_cell_164/split_1/split_dim�
while/gru_cell_164/split_1SplitV%while/gru_cell_164/BiasAdd_1:output:0#while/gru_cell_164/Const_1:output:0-while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split_1�
while/gru_cell_164/addAddV2!while/gru_cell_164/split:output:0#while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add�
while/gru_cell_164/add_1AddV2!while/gru_cell_164/split:output:1#while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_1�
while/gru_cell_164/mulMulwhile/gru_cell_164/add_1:z:0#while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul�
while/gru_cell_164/add_2AddV2!while/gru_cell_164/split:output:2while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_2�
while/gru_cell_164/TanhTanhwhile/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/Tanh�
while/gru_cell_164/mul_1Mulwhile/gru_cell_164/add:z:0while_placeholder_2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_1y
while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/gru_cell_164/sub/x�
while/gru_cell_164/subSub!while/gru_cell_164/sub/x:output:0while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/sub�
while/gru_cell_164/mul_2Mulwhile/gru_cell_164/sub:z:0while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_2�
while/gru_cell_164/add_3AddV2while/gru_cell_164/mul_1:z:0while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_3�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/gru_cell_164/add_3:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22
while/Identity_4"l
3while_gru_cell_164_matmul_1_readvariableop_resource5while_gru_cell_164_matmul_1_readvariableop_resource_0"h
1while_gru_cell_164_matmul_readvariableop_resource3while_gru_cell_164_matmul_readvariableop_resource_0"Z
*while_gru_cell_164_readvariableop_resource,while_gru_cell_164_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2T
(while/gru_cell_164/MatMul/ReadVariableOp(while/gru_cell_164/MatMul/ReadVariableOp2X
*while/gru_cell_164/MatMul_1/ReadVariableOp*while/gru_cell_164/MatMul_1/ReadVariableOp2F
!while/gru_cell_164/ReadVariableOp!while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
K__inference_sequential_164_layer_call_and_return_conditional_losses_1077919

inputs
gru_164_1077906
gru_164_1077908
gru_164_1077910
dense_164_1077913
dense_164_1077915
identity��!dense_164/StatefulPartitionedCall�gru_164/StatefulPartitionedCall�
gru_164/StatefulPartitionedCallStatefulPartitionedCallinputsgru_164_1077906gru_164_1077908gru_164_1077910*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_gru_164_layer_call_and_return_conditional_losses_10777962!
gru_164/StatefulPartitionedCall�
!dense_164/StatefulPartitionedCallStatefulPartitionedCall(gru_164/StatefulPartitionedCall:output:0dense_164_1077913dense_164_1077915*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_10778362#
!dense_164/StatefulPartitionedCall�
IdentityIdentity*dense_164/StatefulPartitionedCall:output:0"^dense_164/StatefulPartitionedCall ^gru_164/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2B
gru_164/StatefulPartitionedCallgru_164/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�`
�
#__inference__traced_restore_1079261
file_prefix%
!assignvariableop_dense_164_kernel%
!assignvariableop_1_dense_164_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate2
.assignvariableop_7_gru_164_gru_cell_164_kernel<
8assignvariableop_8_gru_164_gru_cell_164_recurrent_kernel0
,assignvariableop_9_gru_164_gru_cell_164_bias
assignvariableop_10_total
assignvariableop_11_count/
+assignvariableop_12_adam_dense_164_kernel_m-
)assignvariableop_13_adam_dense_164_bias_m:
6assignvariableop_14_adam_gru_164_gru_cell_164_kernel_mD
@assignvariableop_15_adam_gru_164_gru_cell_164_recurrent_kernel_m8
4assignvariableop_16_adam_gru_164_gru_cell_164_bias_m/
+assignvariableop_17_adam_dense_164_kernel_v-
)assignvariableop_18_adam_dense_164_bias_v:
6assignvariableop_19_adam_gru_164_gru_cell_164_kernel_vD
@assignvariableop_20_adam_gru_164_gru_cell_164_recurrent_kernel_v8
4assignvariableop_21_adam_gru_164_gru_cell_164_bias_v
identity_23��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_dense_164_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_164_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_gru_164_gru_cell_164_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_gru_164_gru_cell_164_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_gru_164_gru_cell_164_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp+assignvariableop_12_adam_dense_164_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_dense_164_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp6assignvariableop_14_adam_gru_164_gru_cell_164_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp@assignvariableop_15_adam_gru_164_gru_cell_164_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_gru_164_gru_cell_164_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_164_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_164_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_gru_164_gru_cell_164_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_gru_164_gru_cell_164_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_gru_164_gru_cell_164_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_22�
Identity_23IdentityIdentity_22:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_23"#
identity_23Identity_23:output:0*m
_input_shapes\
Z: ::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
gru_164_while_cond_1078023,
(gru_164_while_gru_164_while_loop_counter2
.gru_164_while_gru_164_while_maximum_iterations
gru_164_while_placeholder
gru_164_while_placeholder_1
gru_164_while_placeholder_2.
*gru_164_while_less_gru_164_strided_slice_1E
Agru_164_while_gru_164_while_cond_1078023___redundant_placeholder0E
Agru_164_while_gru_164_while_cond_1078023___redundant_placeholder1E
Agru_164_while_gru_164_while_cond_1078023___redundant_placeholder2E
Agru_164_while_gru_164_while_cond_1078023___redundant_placeholder3
gru_164_while_identity
�
gru_164/while/LessLessgru_164_while_placeholder*gru_164_while_less_gru_164_strided_slice_1*
T0*
_output_shapes
: 2
gru_164/while/Lessu
gru_164/while/IdentityIdentitygru_164/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_164/while/Identity"9
gru_164_while_identitygru_164/while/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1077291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1077291___redundant_placeholder05
1while_while_cond_1077291___redundant_placeholder15
1while_while_cond_1077291___redundant_placeholder25
1while_while_cond_1077291___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
+__inference_dense_164_layer_call_fn_1078992

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_10778362
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������2::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�	
�
.__inference_gru_cell_164_layer_call_fn_1079096

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_10770332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������22

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������:���������2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�
�
while_cond_1078862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1078862___redundant_placeholder05
1while_while_cond_1078862___redundant_placeholder15
1while_while_cond_1078862___redundant_placeholder25
1while_while_cond_1078862___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�	
�
F__inference_dense_164_layer_call_and_return_conditional_losses_1077836

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�F
�
while_body_1077708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_164_readvariableop_resource_07
3while_gru_cell_164_matmul_readvariableop_resource_09
5while_gru_cell_164_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_164_readvariableop_resource5
1while_gru_cell_164_matmul_readvariableop_resource7
3while_gru_cell_164_matmul_1_readvariableop_resource��(while/gru_cell_164/MatMul/ReadVariableOp�*while/gru_cell_164/MatMul_1/ReadVariableOp�!while/gru_cell_164/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
!while/gru_cell_164/ReadVariableOpReadVariableOp,while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02#
!while/gru_cell_164/ReadVariableOp�
while/gru_cell_164/unstackUnpack)while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
while/gru_cell_164/unstack�
(while/gru_cell_164/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/gru_cell_164/MatMul/ReadVariableOp�
while/gru_cell_164/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul�
while/gru_cell_164/BiasAddBiasAdd#while/gru_cell_164/MatMul:product:0#while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAddv
while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_164/Const�
"while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"while/gru_cell_164/split/split_dim�
while/gru_cell_164/splitSplit+while/gru_cell_164/split/split_dim:output:0#while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split�
*while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype02,
*while/gru_cell_164/MatMul_1/ReadVariableOp�
while/gru_cell_164/MatMul_1MatMulwhile_placeholder_22while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul_1�
while/gru_cell_164/BiasAdd_1BiasAdd%while/gru_cell_164/MatMul_1:product:0#while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAdd_1�
while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
while/gru_cell_164/Const_1�
$while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$while/gru_cell_164/split_1/split_dim�
while/gru_cell_164/split_1SplitV%while/gru_cell_164/BiasAdd_1:output:0#while/gru_cell_164/Const_1:output:0-while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split_1�
while/gru_cell_164/addAddV2!while/gru_cell_164/split:output:0#while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add�
while/gru_cell_164/add_1AddV2!while/gru_cell_164/split:output:1#while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_1�
while/gru_cell_164/mulMulwhile/gru_cell_164/add_1:z:0#while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul�
while/gru_cell_164/add_2AddV2!while/gru_cell_164/split:output:2while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_2�
while/gru_cell_164/TanhTanhwhile/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/Tanh�
while/gru_cell_164/mul_1Mulwhile/gru_cell_164/add:z:0while_placeholder_2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_1y
while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/gru_cell_164/sub/x�
while/gru_cell_164/subSub!while/gru_cell_164/sub/x:output:0while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/sub�
while/gru_cell_164/mul_2Mulwhile/gru_cell_164/sub:z:0while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_2�
while/gru_cell_164/add_3AddV2while/gru_cell_164/mul_1:z:0while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_3�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/gru_cell_164/add_3:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22
while/Identity_4"l
3while_gru_cell_164_matmul_1_readvariableop_resource5while_gru_cell_164_matmul_1_readvariableop_resource_0"h
1while_gru_cell_164_matmul_readvariableop_resource3while_gru_cell_164_matmul_readvariableop_resource_0"Z
*while_gru_cell_164_readvariableop_resource,while_gru_cell_164_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2T
(while/gru_cell_164/MatMul/ReadVariableOp(while/gru_cell_164/MatMul/ReadVariableOp2X
*while/gru_cell_164/MatMul_1/ReadVariableOp*while/gru_cell_164/MatMul_1/ReadVariableOp2F
!while/gru_cell_164/ReadVariableOp!while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
0__inference_sequential_164_layer_call_fn_1077901
gru_164_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallgru_164_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_164_layer_call_and_return_conditional_losses_10778882
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namegru_164_input
�
�
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_1079030

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	�*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2	
unstack�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:����������2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
split�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:����������2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
split_1/split_dim�
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:���������22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:���������22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:���������22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:���������22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:���������22
TanhZ
mul_1Muladd:z:0states_0*
T0*'
_output_shapes
:���������22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:���������22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:���������22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:���������22
add_3�
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:���������22

Identity�

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:���������22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������:���������2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�"
�
while_body_1077410
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0 
while_gru_cell_164_1077432_0 
while_gru_cell_164_1077434_0 
while_gru_cell_164_1077436_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_164_1077432
while_gru_cell_164_1077434
while_gru_cell_164_1077436��*while/gru_cell_164/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/gru_cell_164/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_164_1077432_0while_gru_cell_164_1077434_0while_gru_cell_164_1077436_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_10770332,
*while/gru_cell_164/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/gru_cell_164/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_164/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_164/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_164/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_164/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/gru_cell_164/StatefulPartitionedCall:output:1+^while/gru_cell_164/StatefulPartitionedCall*
T0*'
_output_shapes
:���������22
while/Identity_4":
while_gru_cell_164_1077432while_gru_cell_164_1077432_0":
while_gru_cell_164_1077434while_gru_cell_164_1077434_0":
while_gru_cell_164_1077436while_gru_cell_164_1077436_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2X
*while/gru_cell_164/StatefulPartitionedCall*while/gru_cell_164/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
0__inference_sequential_164_layer_call_fn_1078294

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_164_layer_call_and_return_conditional_losses_10778882
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
D__inference_gru_164_layer_call_and_return_conditional_losses_1078951

inputs(
$gru_cell_164_readvariableop_resource/
+gru_cell_164_matmul_readvariableop_resource1
-gru_cell_164_matmul_1_readvariableop_resource
identity��"gru_cell_164/MatMul/ReadVariableOp�$gru_cell_164/MatMul_1/ReadVariableOp�gru_cell_164/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
gru_cell_164/ReadVariableOpReadVariableOp$gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype02
gru_cell_164/ReadVariableOp�
gru_cell_164/unstackUnpack#gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
gru_cell_164/unstack�
"gru_cell_164/MatMul/ReadVariableOpReadVariableOp+gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"gru_cell_164/MatMul/ReadVariableOp�
gru_cell_164/MatMulMatMulstrided_slice_2:output:0*gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul�
gru_cell_164/BiasAddBiasAddgru_cell_164/MatMul:product:0gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAddj
gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_164/Const�
gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
gru_cell_164/split/split_dim�
gru_cell_164/splitSplit%gru_cell_164/split/split_dim:output:0gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split�
$gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02&
$gru_cell_164/MatMul_1/ReadVariableOp�
gru_cell_164/MatMul_1MatMulzeros:output:0,gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul_1�
gru_cell_164/BiasAdd_1BiasAddgru_cell_164/MatMul_1:product:0gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAdd_1�
gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
gru_cell_164/Const_1�
gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
gru_cell_164/split_1/split_dim�
gru_cell_164/split_1SplitVgru_cell_164/BiasAdd_1:output:0gru_cell_164/Const_1:output:0'gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split_1�
gru_cell_164/addAddV2gru_cell_164/split:output:0gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add�
gru_cell_164/add_1AddV2gru_cell_164/split:output:1gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
gru_cell_164/add_1�
gru_cell_164/mulMulgru_cell_164/add_1:z:0gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
gru_cell_164/mul�
gru_cell_164/add_2AddV2gru_cell_164/split:output:2gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_2x
gru_cell_164/TanhTanhgru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/Tanh�
gru_cell_164/mul_1Mulgru_cell_164/add:z:0zeros:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_1m
gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
gru_cell_164/sub/x�
gru_cell_164/subSubgru_cell_164/sub/x:output:0gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/sub�
gru_cell_164/mul_2Mulgru_cell_164/sub:z:0gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_2�
gru_cell_164/add_3AddV2gru_cell_164/mul_1:z:0gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_3�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_164_readvariableop_resource+gru_cell_164_matmul_readvariableop_resource-gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_1078863*
condR
while_cond_1078862*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitystrided_slice_3:output:0#^gru_cell_164/MatMul/ReadVariableOp%^gru_cell_164/MatMul_1/ReadVariableOp^gru_cell_164/ReadVariableOp^while*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������:::2H
"gru_cell_164/MatMul/ReadVariableOp"gru_cell_164/MatMul/ReadVariableOp2L
$gru_cell_164/MatMul_1/ReadVariableOp$gru_cell_164/MatMul_1/ReadVariableOp2:
gru_cell_164/ReadVariableOpgru_cell_164/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
.__inference_gru_cell_164_layer_call_fn_1079082

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_10769952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������22

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:���������22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������:���������2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�R
�	
gru_164_while_body_1078024,
(gru_164_while_gru_164_while_loop_counter2
.gru_164_while_gru_164_while_maximum_iterations
gru_164_while_placeholder
gru_164_while_placeholder_1
gru_164_while_placeholder_2+
'gru_164_while_gru_164_strided_slice_1_0g
cgru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensor_08
4gru_164_while_gru_cell_164_readvariableop_resource_0?
;gru_164_while_gru_cell_164_matmul_readvariableop_resource_0A
=gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0
gru_164_while_identity
gru_164_while_identity_1
gru_164_while_identity_2
gru_164_while_identity_3
gru_164_while_identity_4)
%gru_164_while_gru_164_strided_slice_1e
agru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensor6
2gru_164_while_gru_cell_164_readvariableop_resource=
9gru_164_while_gru_cell_164_matmul_readvariableop_resource?
;gru_164_while_gru_cell_164_matmul_1_readvariableop_resource��0gru_164/while/gru_cell_164/MatMul/ReadVariableOp�2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp�)gru_164/while/gru_cell_164/ReadVariableOp�
?gru_164/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?gru_164/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1gru_164/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensor_0gru_164_while_placeholderHgru_164/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1gru_164/while/TensorArrayV2Read/TensorListGetItem�
)gru_164/while/gru_cell_164/ReadVariableOpReadVariableOp4gru_164_while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02+
)gru_164/while/gru_cell_164/ReadVariableOp�
"gru_164/while/gru_cell_164/unstackUnpack1gru_164/while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2$
"gru_164/while/gru_cell_164/unstack�
0gru_164/while/gru_cell_164/MatMul/ReadVariableOpReadVariableOp;gru_164_while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype022
0gru_164/while/gru_cell_164/MatMul/ReadVariableOp�
!gru_164/while/gru_cell_164/MatMulMatMul8gru_164/while/TensorArrayV2Read/TensorListGetItem:item:08gru_164/while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!gru_164/while/gru_cell_164/MatMul�
"gru_164/while/gru_cell_164/BiasAddBiasAdd+gru_164/while/gru_cell_164/MatMul:product:0+gru_164/while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2$
"gru_164/while/gru_cell_164/BiasAdd�
 gru_164/while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 gru_164/while/gru_cell_164/Const�
*gru_164/while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*gru_164/while/gru_cell_164/split/split_dim�
 gru_164/while/gru_cell_164/splitSplit3gru_164/while/gru_cell_164/split/split_dim:output:0+gru_164/while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2"
 gru_164/while/gru_cell_164/split�
2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp=gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype024
2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp�
#gru_164/while/gru_cell_164/MatMul_1MatMulgru_164_while_placeholder_2:gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#gru_164/while/gru_cell_164/MatMul_1�
$gru_164/while/gru_cell_164/BiasAdd_1BiasAdd-gru_164/while/gru_cell_164/MatMul_1:product:0+gru_164/while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2&
$gru_164/while/gru_cell_164/BiasAdd_1�
"gru_164/while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2$
"gru_164/while/gru_cell_164/Const_1�
,gru_164/while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,gru_164/while/gru_cell_164/split_1/split_dim�
"gru_164/while/gru_cell_164/split_1SplitV-gru_164/while/gru_cell_164/BiasAdd_1:output:0+gru_164/while/gru_cell_164/Const_1:output:05gru_164/while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2$
"gru_164/while/gru_cell_164/split_1�
gru_164/while/gru_cell_164/addAddV2)gru_164/while/gru_cell_164/split:output:0+gru_164/while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22 
gru_164/while/gru_cell_164/add�
 gru_164/while/gru_cell_164/add_1AddV2)gru_164/while/gru_cell_164/split:output:1+gru_164/while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/add_1�
gru_164/while/gru_cell_164/mulMul$gru_164/while/gru_cell_164/add_1:z:0+gru_164/while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22 
gru_164/while/gru_cell_164/mul�
 gru_164/while/gru_cell_164/add_2AddV2)gru_164/while/gru_cell_164/split:output:2"gru_164/while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/add_2�
gru_164/while/gru_cell_164/TanhTanh$gru_164/while/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22!
gru_164/while/gru_cell_164/Tanh�
 gru_164/while/gru_cell_164/mul_1Mul"gru_164/while/gru_cell_164/add:z:0gru_164_while_placeholder_2*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/mul_1�
 gru_164/while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2"
 gru_164/while/gru_cell_164/sub/x�
gru_164/while/gru_cell_164/subSub)gru_164/while/gru_cell_164/sub/x:output:0"gru_164/while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22 
gru_164/while/gru_cell_164/sub�
 gru_164/while/gru_cell_164/mul_2Mul"gru_164/while/gru_cell_164/sub:z:0#gru_164/while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/mul_2�
 gru_164/while/gru_cell_164/add_3AddV2$gru_164/while/gru_cell_164/mul_1:z:0$gru_164/while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/add_3�
2gru_164/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_164_while_placeholder_1gru_164_while_placeholder$gru_164/while/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype024
2gru_164/while/TensorArrayV2Write/TensorListSetIteml
gru_164/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_164/while/add/y�
gru_164/while/addAddV2gru_164_while_placeholdergru_164/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_164/while/addp
gru_164/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_164/while/add_1/y�
gru_164/while/add_1AddV2(gru_164_while_gru_164_while_loop_countergru_164/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_164/while/add_1�
gru_164/while/IdentityIdentitygru_164/while/add_1:z:01^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
gru_164/while/Identity�
gru_164/while/Identity_1Identity.gru_164_while_gru_164_while_maximum_iterations1^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
gru_164/while/Identity_1�
gru_164/while/Identity_2Identitygru_164/while/add:z:01^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
gru_164/while/Identity_2�
gru_164/while/Identity_3IdentityBgru_164/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
gru_164/while/Identity_3�
gru_164/while/Identity_4Identity$gru_164/while/gru_cell_164/add_3:z:01^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22
gru_164/while/Identity_4"P
%gru_164_while_gru_164_strided_slice_1'gru_164_while_gru_164_strided_slice_1_0"|
;gru_164_while_gru_cell_164_matmul_1_readvariableop_resource=gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0"x
9gru_164_while_gru_cell_164_matmul_readvariableop_resource;gru_164_while_gru_cell_164_matmul_readvariableop_resource_0"j
2gru_164_while_gru_cell_164_readvariableop_resource4gru_164_while_gru_cell_164_readvariableop_resource_0"9
gru_164_while_identitygru_164/while/Identity:output:0"=
gru_164_while_identity_1!gru_164/while/Identity_1:output:0"=
gru_164_while_identity_2!gru_164/while/Identity_2:output:0"=
gru_164_while_identity_3!gru_164/while/Identity_3:output:0"=
gru_164_while_identity_4!gru_164/while/Identity_4:output:0"�
agru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensorcgru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2d
0gru_164/while/gru_cell_164/MatMul/ReadVariableOp0gru_164/while/gru_cell_164/MatMul/ReadVariableOp2h
2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp2V
)gru_164/while/gru_cell_164/ReadVariableOp)gru_164/while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_gru_164_layer_call_fn_1078962

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_gru_164_layer_call_and_return_conditional_losses_10776412
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_1076995

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	�*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2	
unstack�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:����������2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
split�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:����������2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
split_1/split_dim�
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:���������22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:���������22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:���������22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:���������22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:���������22
TanhX
mul_1Muladd:z:0states*
T0*'
_output_shapes
:���������22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:���������22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:���������22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:���������22
add_3�
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:���������22

Identity�

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:���������22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������:���������2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�"
�
while_body_1077292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0 
while_gru_cell_164_1077314_0 
while_gru_cell_164_1077316_0 
while_gru_cell_164_1077318_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_164_1077314
while_gru_cell_164_1077316
while_gru_cell_164_1077318��*while/gru_cell_164/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
*while/gru_cell_164/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_164_1077314_0while_gru_cell_164_1077316_0while_gru_cell_164_1077318_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_10769952,
*while/gru_cell_164/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/gru_cell_164/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_164/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_164/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_164/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_164/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity3while/gru_cell_164/StatefulPartitionedCall:output:1+^while/gru_cell_164/StatefulPartitionedCall*
T0*'
_output_shapes
:���������22
while/Identity_4":
while_gru_cell_164_1077314while_gru_cell_164_1077314_0":
while_gru_cell_164_1077316while_gru_cell_164_1077316_0":
while_gru_cell_164_1077318while_gru_cell_164_1077318_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2X
*while/gru_cell_164/StatefulPartitionedCall*while/gru_cell_164/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�Y
�
D__inference_gru_164_layer_call_and_return_conditional_losses_1077641

inputs(
$gru_cell_164_readvariableop_resource/
+gru_cell_164_matmul_readvariableop_resource1
-gru_cell_164_matmul_1_readvariableop_resource
identity��"gru_cell_164/MatMul/ReadVariableOp�$gru_cell_164/MatMul_1/ReadVariableOp�gru_cell_164/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
gru_cell_164/ReadVariableOpReadVariableOp$gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype02
gru_cell_164/ReadVariableOp�
gru_cell_164/unstackUnpack#gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
gru_cell_164/unstack�
"gru_cell_164/MatMul/ReadVariableOpReadVariableOp+gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"gru_cell_164/MatMul/ReadVariableOp�
gru_cell_164/MatMulMatMulstrided_slice_2:output:0*gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul�
gru_cell_164/BiasAddBiasAddgru_cell_164/MatMul:product:0gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAddj
gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_164/Const�
gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
gru_cell_164/split/split_dim�
gru_cell_164/splitSplit%gru_cell_164/split/split_dim:output:0gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split�
$gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02&
$gru_cell_164/MatMul_1/ReadVariableOp�
gru_cell_164/MatMul_1MatMulzeros:output:0,gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul_1�
gru_cell_164/BiasAdd_1BiasAddgru_cell_164/MatMul_1:product:0gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAdd_1�
gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
gru_cell_164/Const_1�
gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
gru_cell_164/split_1/split_dim�
gru_cell_164/split_1SplitVgru_cell_164/BiasAdd_1:output:0gru_cell_164/Const_1:output:0'gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split_1�
gru_cell_164/addAddV2gru_cell_164/split:output:0gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add�
gru_cell_164/add_1AddV2gru_cell_164/split:output:1gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
gru_cell_164/add_1�
gru_cell_164/mulMulgru_cell_164/add_1:z:0gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
gru_cell_164/mul�
gru_cell_164/add_2AddV2gru_cell_164/split:output:2gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_2x
gru_cell_164/TanhTanhgru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/Tanh�
gru_cell_164/mul_1Mulgru_cell_164/add:z:0zeros:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_1m
gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
gru_cell_164/sub/x�
gru_cell_164/subSubgru_cell_164/sub/x:output:0gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/sub�
gru_cell_164/mul_2Mulgru_cell_164/sub:z:0gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_2�
gru_cell_164/add_3AddV2gru_cell_164/mul_1:z:0gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_3�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_164_readvariableop_resource+gru_cell_164_matmul_readvariableop_resource-gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_1077553*
condR
while_cond_1077552*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitystrided_slice_3:output:0#^gru_cell_164/MatMul/ReadVariableOp%^gru_cell_164/MatMul_1/ReadVariableOp^gru_cell_164/ReadVariableOp^while*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������:::2H
"gru_cell_164/MatMul/ReadVariableOp"gru_cell_164/MatMul/ReadVariableOp2L
$gru_cell_164/MatMul_1/ReadVariableOp$gru_cell_164/MatMul_1/ReadVariableOp2:
gru_cell_164/ReadVariableOpgru_cell_164/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�F
�
while_body_1078708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_164_readvariableop_resource_07
3while_gru_cell_164_matmul_readvariableop_resource_09
5while_gru_cell_164_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_164_readvariableop_resource5
1while_gru_cell_164_matmul_readvariableop_resource7
3while_gru_cell_164_matmul_1_readvariableop_resource��(while/gru_cell_164/MatMul/ReadVariableOp�*while/gru_cell_164/MatMul_1/ReadVariableOp�!while/gru_cell_164/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
!while/gru_cell_164/ReadVariableOpReadVariableOp,while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02#
!while/gru_cell_164/ReadVariableOp�
while/gru_cell_164/unstackUnpack)while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
while/gru_cell_164/unstack�
(while/gru_cell_164/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/gru_cell_164/MatMul/ReadVariableOp�
while/gru_cell_164/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul�
while/gru_cell_164/BiasAddBiasAdd#while/gru_cell_164/MatMul:product:0#while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAddv
while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_164/Const�
"while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"while/gru_cell_164/split/split_dim�
while/gru_cell_164/splitSplit+while/gru_cell_164/split/split_dim:output:0#while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split�
*while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype02,
*while/gru_cell_164/MatMul_1/ReadVariableOp�
while/gru_cell_164/MatMul_1MatMulwhile_placeholder_22while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul_1�
while/gru_cell_164/BiasAdd_1BiasAdd%while/gru_cell_164/MatMul_1:product:0#while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAdd_1�
while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
while/gru_cell_164/Const_1�
$while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$while/gru_cell_164/split_1/split_dim�
while/gru_cell_164/split_1SplitV%while/gru_cell_164/BiasAdd_1:output:0#while/gru_cell_164/Const_1:output:0-while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split_1�
while/gru_cell_164/addAddV2!while/gru_cell_164/split:output:0#while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add�
while/gru_cell_164/add_1AddV2!while/gru_cell_164/split:output:1#while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_1�
while/gru_cell_164/mulMulwhile/gru_cell_164/add_1:z:0#while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul�
while/gru_cell_164/add_2AddV2!while/gru_cell_164/split:output:2while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_2�
while/gru_cell_164/TanhTanhwhile/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/Tanh�
while/gru_cell_164/mul_1Mulwhile/gru_cell_164/add:z:0while_placeholder_2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_1y
while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/gru_cell_164/sub/x�
while/gru_cell_164/subSub!while/gru_cell_164/sub/x:output:0while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/sub�
while/gru_cell_164/mul_2Mulwhile/gru_cell_164/sub:z:0while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_2�
while/gru_cell_164/add_3AddV2while/gru_cell_164/mul_1:z:0while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_3�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/gru_cell_164/add_3:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22
while/Identity_4"l
3while_gru_cell_164_matmul_1_readvariableop_resource5while_gru_cell_164_matmul_1_readvariableop_resource_0"h
1while_gru_cell_164_matmul_readvariableop_resource3while_gru_cell_164_matmul_readvariableop_resource_0"Z
*while_gru_cell_164_readvariableop_resource,while_gru_cell_164_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2T
(while/gru_cell_164/MatMul/ReadVariableOp(while/gru_cell_164/MatMul/ReadVariableOp2X
*while/gru_cell_164/MatMul_1/ReadVariableOp*while/gru_cell_164/MatMul_1/ReadVariableOp2F
!while/gru_cell_164/ReadVariableOp!while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
0__inference_sequential_164_layer_call_fn_1078309

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_164_layer_call_and_return_conditional_losses_10779192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1078530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1078530___redundant_placeholder05
1while_while_cond_1078530___redundant_placeholder15
1while_while_cond_1078530___redundant_placeholder25
1while_while_cond_1078530___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�7
�

 __inference__traced_save_1079185
file_prefix/
+savev2_dense_164_kernel_read_readvariableop-
)savev2_dense_164_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_gru_164_gru_cell_164_kernel_read_readvariableopD
@savev2_gru_164_gru_cell_164_recurrent_kernel_read_readvariableop8
4savev2_gru_164_gru_cell_164_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_164_kernel_m_read_readvariableop4
0savev2_adam_dense_164_bias_m_read_readvariableopA
=savev2_adam_gru_164_gru_cell_164_kernel_m_read_readvariableopK
Gsavev2_adam_gru_164_gru_cell_164_recurrent_kernel_m_read_readvariableop?
;savev2_adam_gru_164_gru_cell_164_bias_m_read_readvariableop6
2savev2_adam_dense_164_kernel_v_read_readvariableop4
0savev2_adam_dense_164_bias_v_read_readvariableopA
=savev2_adam_gru_164_gru_cell_164_kernel_v_read_readvariableopK
Gsavev2_adam_gru_164_gru_cell_164_recurrent_kernel_v_read_readvariableop?
;savev2_adam_gru_164_gru_cell_164_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_164_kernel_read_readvariableop)savev2_dense_164_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_gru_164_gru_cell_164_kernel_read_readvariableop@savev2_gru_164_gru_cell_164_recurrent_kernel_read_readvariableop4savev2_gru_164_gru_cell_164_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_164_kernel_m_read_readvariableop0savev2_adam_dense_164_bias_m_read_readvariableop=savev2_adam_gru_164_gru_cell_164_kernel_m_read_readvariableopGsavev2_adam_gru_164_gru_cell_164_recurrent_kernel_m_read_readvariableop;savev2_adam_gru_164_gru_cell_164_bias_m_read_readvariableop2savev2_adam_dense_164_kernel_v_read_readvariableop0savev2_adam_dense_164_bias_v_read_readvariableop=savev2_adam_gru_164_gru_cell_164_kernel_v_read_readvariableopGsavev2_adam_gru_164_gru_cell_164_recurrent_kernel_v_read_readvariableop;savev2_adam_gru_164_gru_cell_164_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :2:: : : : : :	�:	2�:	�: : :2::	�:	2�:	�:2::	�:	2�:	�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%	!

_output_shapes
:	2�:%
!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	2�:%!

_output_shapes
:	�:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	2�:%!

_output_shapes
:	�:

_output_shapes
: 
�Z
�
D__inference_gru_164_layer_call_and_return_conditional_losses_1078464
inputs_0(
$gru_cell_164_readvariableop_resource/
+gru_cell_164_matmul_readvariableop_resource1
-gru_cell_164_matmul_1_readvariableop_resource
identity��"gru_cell_164/MatMul/ReadVariableOp�$gru_cell_164/MatMul_1/ReadVariableOp�gru_cell_164/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
gru_cell_164/ReadVariableOpReadVariableOp$gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype02
gru_cell_164/ReadVariableOp�
gru_cell_164/unstackUnpack#gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
gru_cell_164/unstack�
"gru_cell_164/MatMul/ReadVariableOpReadVariableOp+gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"gru_cell_164/MatMul/ReadVariableOp�
gru_cell_164/MatMulMatMulstrided_slice_2:output:0*gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul�
gru_cell_164/BiasAddBiasAddgru_cell_164/MatMul:product:0gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAddj
gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_164/Const�
gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
gru_cell_164/split/split_dim�
gru_cell_164/splitSplit%gru_cell_164/split/split_dim:output:0gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split�
$gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02&
$gru_cell_164/MatMul_1/ReadVariableOp�
gru_cell_164/MatMul_1MatMulzeros:output:0,gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul_1�
gru_cell_164/BiasAdd_1BiasAddgru_cell_164/MatMul_1:product:0gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAdd_1�
gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
gru_cell_164/Const_1�
gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
gru_cell_164/split_1/split_dim�
gru_cell_164/split_1SplitVgru_cell_164/BiasAdd_1:output:0gru_cell_164/Const_1:output:0'gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split_1�
gru_cell_164/addAddV2gru_cell_164/split:output:0gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add�
gru_cell_164/add_1AddV2gru_cell_164/split:output:1gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
gru_cell_164/add_1�
gru_cell_164/mulMulgru_cell_164/add_1:z:0gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
gru_cell_164/mul�
gru_cell_164/add_2AddV2gru_cell_164/split:output:2gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_2x
gru_cell_164/TanhTanhgru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/Tanh�
gru_cell_164/mul_1Mulgru_cell_164/add:z:0zeros:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_1m
gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
gru_cell_164/sub/x�
gru_cell_164/subSubgru_cell_164/sub/x:output:0gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/sub�
gru_cell_164/mul_2Mulgru_cell_164/sub:z:0gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_2�
gru_cell_164/add_3AddV2gru_cell_164/mul_1:z:0gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_3�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_164_readvariableop_resource+gru_cell_164_matmul_readvariableop_resource-gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_1078376*
condR
while_cond_1078375*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitystrided_slice_3:output:0#^gru_cell_164/MatMul/ReadVariableOp%^gru_cell_164/MatMul_1/ReadVariableOp^gru_cell_164/ReadVariableOp^while*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������:::2H
"gru_cell_164/MatMul/ReadVariableOp"gru_cell_164/MatMul/ReadVariableOp2L
$gru_cell_164/MatMul_1/ReadVariableOp$gru_cell_164/MatMul_1/ReadVariableOp2:
gru_cell_164/ReadVariableOpgru_cell_164/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
)__inference_gru_164_layer_call_fn_1078973

inputs
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_gru_164_layer_call_and_return_conditional_losses_10777962
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_gru_164_layer_call_fn_1078630
inputs_0
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_gru_164_layer_call_and_return_conditional_losses_10773562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
ŏ
�
"__inference__wrapped_model_1076925
gru_164_input?
;sequential_164_gru_164_gru_cell_164_readvariableop_resourceF
Bsequential_164_gru_164_gru_cell_164_matmul_readvariableop_resourceH
Dsequential_164_gru_164_gru_cell_164_matmul_1_readvariableop_resource;
7sequential_164_dense_164_matmul_readvariableop_resource<
8sequential_164_dense_164_biasadd_readvariableop_resource
identity��/sequential_164/dense_164/BiasAdd/ReadVariableOp�.sequential_164/dense_164/MatMul/ReadVariableOp�9sequential_164/gru_164/gru_cell_164/MatMul/ReadVariableOp�;sequential_164/gru_164/gru_cell_164/MatMul_1/ReadVariableOp�2sequential_164/gru_164/gru_cell_164/ReadVariableOp�sequential_164/gru_164/whiley
sequential_164/gru_164/ShapeShapegru_164_input*
T0*
_output_shapes
:2
sequential_164/gru_164/Shape�
*sequential_164/gru_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_164/gru_164/strided_slice/stack�
,sequential_164/gru_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_164/gru_164/strided_slice/stack_1�
,sequential_164/gru_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_164/gru_164/strided_slice/stack_2�
$sequential_164/gru_164/strided_sliceStridedSlice%sequential_164/gru_164/Shape:output:03sequential_164/gru_164/strided_slice/stack:output:05sequential_164/gru_164/strided_slice/stack_1:output:05sequential_164/gru_164/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_164/gru_164/strided_slice�
"sequential_164/gru_164/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22$
"sequential_164/gru_164/zeros/mul/y�
 sequential_164/gru_164/zeros/mulMul-sequential_164/gru_164/strided_slice:output:0+sequential_164/gru_164/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_164/gru_164/zeros/mul�
#sequential_164/gru_164/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2%
#sequential_164/gru_164/zeros/Less/y�
!sequential_164/gru_164/zeros/LessLess$sequential_164/gru_164/zeros/mul:z:0,sequential_164/gru_164/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_164/gru_164/zeros/Less�
%sequential_164/gru_164/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22'
%sequential_164/gru_164/zeros/packed/1�
#sequential_164/gru_164/zeros/packedPack-sequential_164/gru_164/strided_slice:output:0.sequential_164/gru_164/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_164/gru_164/zeros/packed�
"sequential_164/gru_164/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_164/gru_164/zeros/Const�
sequential_164/gru_164/zerosFill,sequential_164/gru_164/zeros/packed:output:0+sequential_164/gru_164/zeros/Const:output:0*
T0*'
_output_shapes
:���������22
sequential_164/gru_164/zeros�
%sequential_164/gru_164/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_164/gru_164/transpose/perm�
 sequential_164/gru_164/transpose	Transposegru_164_input.sequential_164/gru_164/transpose/perm:output:0*
T0*+
_output_shapes
:���������2"
 sequential_164/gru_164/transpose�
sequential_164/gru_164/Shape_1Shape$sequential_164/gru_164/transpose:y:0*
T0*
_output_shapes
:2 
sequential_164/gru_164/Shape_1�
,sequential_164/gru_164/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_164/gru_164/strided_slice_1/stack�
.sequential_164/gru_164/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_164/gru_164/strided_slice_1/stack_1�
.sequential_164/gru_164/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_164/gru_164/strided_slice_1/stack_2�
&sequential_164/gru_164/strided_slice_1StridedSlice'sequential_164/gru_164/Shape_1:output:05sequential_164/gru_164/strided_slice_1/stack:output:07sequential_164/gru_164/strided_slice_1/stack_1:output:07sequential_164/gru_164/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_164/gru_164/strided_slice_1�
2sequential_164/gru_164/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������24
2sequential_164/gru_164/TensorArrayV2/element_shape�
$sequential_164/gru_164/TensorArrayV2TensorListReserve;sequential_164/gru_164/TensorArrayV2/element_shape:output:0/sequential_164/gru_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_164/gru_164/TensorArrayV2�
Lsequential_164/gru_164/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2N
Lsequential_164/gru_164/TensorArrayUnstack/TensorListFromTensor/element_shape�
>sequential_164/gru_164/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_164/gru_164/transpose:y:0Usequential_164/gru_164/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_164/gru_164/TensorArrayUnstack/TensorListFromTensor�
,sequential_164/gru_164/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_164/gru_164/strided_slice_2/stack�
.sequential_164/gru_164/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_164/gru_164/strided_slice_2/stack_1�
.sequential_164/gru_164/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_164/gru_164/strided_slice_2/stack_2�
&sequential_164/gru_164/strided_slice_2StridedSlice$sequential_164/gru_164/transpose:y:05sequential_164/gru_164/strided_slice_2/stack:output:07sequential_164/gru_164/strided_slice_2/stack_1:output:07sequential_164/gru_164/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2(
&sequential_164/gru_164/strided_slice_2�
2sequential_164/gru_164/gru_cell_164/ReadVariableOpReadVariableOp;sequential_164_gru_164_gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype024
2sequential_164/gru_164/gru_cell_164/ReadVariableOp�
+sequential_164/gru_164/gru_cell_164/unstackUnpack:sequential_164/gru_164/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2-
+sequential_164/gru_164/gru_cell_164/unstack�
9sequential_164/gru_164/gru_cell_164/MatMul/ReadVariableOpReadVariableOpBsequential_164_gru_164_gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02;
9sequential_164/gru_164/gru_cell_164/MatMul/ReadVariableOp�
*sequential_164/gru_164/gru_cell_164/MatMulMatMul/sequential_164/gru_164/strided_slice_2:output:0Asequential_164/gru_164/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2,
*sequential_164/gru_164/gru_cell_164/MatMul�
+sequential_164/gru_164/gru_cell_164/BiasAddBiasAdd4sequential_164/gru_164/gru_cell_164/MatMul:product:04sequential_164/gru_164/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2-
+sequential_164/gru_164/gru_cell_164/BiasAdd�
)sequential_164/gru_164/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_164/gru_164/gru_cell_164/Const�
3sequential_164/gru_164/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������25
3sequential_164/gru_164/gru_cell_164/split/split_dim�
)sequential_164/gru_164/gru_cell_164/splitSplit<sequential_164/gru_164/gru_cell_164/split/split_dim:output:04sequential_164/gru_164/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2+
)sequential_164/gru_164/gru_cell_164/split�
;sequential_164/gru_164/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOpDsequential_164_gru_164_gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02=
;sequential_164/gru_164/gru_cell_164/MatMul_1/ReadVariableOp�
,sequential_164/gru_164/gru_cell_164/MatMul_1MatMul%sequential_164/gru_164/zeros:output:0Csequential_164/gru_164/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2.
,sequential_164/gru_164/gru_cell_164/MatMul_1�
-sequential_164/gru_164/gru_cell_164/BiasAdd_1BiasAdd6sequential_164/gru_164/gru_cell_164/MatMul_1:product:04sequential_164/gru_164/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2/
-sequential_164/gru_164/gru_cell_164/BiasAdd_1�
+sequential_164/gru_164/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2-
+sequential_164/gru_164/gru_cell_164/Const_1�
5sequential_164/gru_164/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������27
5sequential_164/gru_164/gru_cell_164/split_1/split_dim�
+sequential_164/gru_164/gru_cell_164/split_1SplitV6sequential_164/gru_164/gru_cell_164/BiasAdd_1:output:04sequential_164/gru_164/gru_cell_164/Const_1:output:0>sequential_164/gru_164/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2-
+sequential_164/gru_164/gru_cell_164/split_1�
'sequential_164/gru_164/gru_cell_164/addAddV22sequential_164/gru_164/gru_cell_164/split:output:04sequential_164/gru_164/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22)
'sequential_164/gru_164/gru_cell_164/add�
)sequential_164/gru_164/gru_cell_164/add_1AddV22sequential_164/gru_164/gru_cell_164/split:output:14sequential_164/gru_164/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22+
)sequential_164/gru_164/gru_cell_164/add_1�
'sequential_164/gru_164/gru_cell_164/mulMul-sequential_164/gru_164/gru_cell_164/add_1:z:04sequential_164/gru_164/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22)
'sequential_164/gru_164/gru_cell_164/mul�
)sequential_164/gru_164/gru_cell_164/add_2AddV22sequential_164/gru_164/gru_cell_164/split:output:2+sequential_164/gru_164/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22+
)sequential_164/gru_164/gru_cell_164/add_2�
(sequential_164/gru_164/gru_cell_164/TanhTanh-sequential_164/gru_164/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22*
(sequential_164/gru_164/gru_cell_164/Tanh�
)sequential_164/gru_164/gru_cell_164/mul_1Mul+sequential_164/gru_164/gru_cell_164/add:z:0%sequential_164/gru_164/zeros:output:0*
T0*'
_output_shapes
:���������22+
)sequential_164/gru_164/gru_cell_164/mul_1�
)sequential_164/gru_164/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2+
)sequential_164/gru_164/gru_cell_164/sub/x�
'sequential_164/gru_164/gru_cell_164/subSub2sequential_164/gru_164/gru_cell_164/sub/x:output:0+sequential_164/gru_164/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22)
'sequential_164/gru_164/gru_cell_164/sub�
)sequential_164/gru_164/gru_cell_164/mul_2Mul+sequential_164/gru_164/gru_cell_164/sub:z:0,sequential_164/gru_164/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22+
)sequential_164/gru_164/gru_cell_164/mul_2�
)sequential_164/gru_164/gru_cell_164/add_3AddV2-sequential_164/gru_164/gru_cell_164/mul_1:z:0-sequential_164/gru_164/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22+
)sequential_164/gru_164/gru_cell_164/add_3�
4sequential_164/gru_164/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   26
4sequential_164/gru_164/TensorArrayV2_1/element_shape�
&sequential_164/gru_164/TensorArrayV2_1TensorListReserve=sequential_164/gru_164/TensorArrayV2_1/element_shape:output:0/sequential_164/gru_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_164/gru_164/TensorArrayV2_1|
sequential_164/gru_164/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_164/gru_164/time�
/sequential_164/gru_164/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������21
/sequential_164/gru_164/while/maximum_iterations�
)sequential_164/gru_164/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_164/gru_164/while/loop_counter�
sequential_164/gru_164/whileWhile2sequential_164/gru_164/while/loop_counter:output:08sequential_164/gru_164/while/maximum_iterations:output:0$sequential_164/gru_164/time:output:0/sequential_164/gru_164/TensorArrayV2_1:handle:0%sequential_164/gru_164/zeros:output:0/sequential_164/gru_164/strided_slice_1:output:0Nsequential_164/gru_164/TensorArrayUnstack/TensorListFromTensor:output_handle:0;sequential_164_gru_164_gru_cell_164_readvariableop_resourceBsequential_164_gru_164_gru_cell_164_matmul_readvariableop_resourceDsequential_164_gru_164_gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*5
body-R+
)sequential_164_gru_164_while_body_1076831*5
cond-R+
)sequential_164_gru_164_while_cond_1076830*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
sequential_164/gru_164/while�
Gsequential_164/gru_164/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2I
Gsequential_164/gru_164/TensorArrayV2Stack/TensorListStack/element_shape�
9sequential_164/gru_164/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_164/gru_164/while:output:3Psequential_164/gru_164/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype02;
9sequential_164/gru_164/TensorArrayV2Stack/TensorListStack�
,sequential_164/gru_164/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2.
,sequential_164/gru_164/strided_slice_3/stack�
.sequential_164/gru_164/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_164/gru_164/strided_slice_3/stack_1�
.sequential_164/gru_164/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_164/gru_164/strided_slice_3/stack_2�
&sequential_164/gru_164/strided_slice_3StridedSliceBsequential_164/gru_164/TensorArrayV2Stack/TensorListStack:tensor:05sequential_164/gru_164/strided_slice_3/stack:output:07sequential_164/gru_164/strided_slice_3/stack_1:output:07sequential_164/gru_164/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2(
&sequential_164/gru_164/strided_slice_3�
'sequential_164/gru_164/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_164/gru_164/transpose_1/perm�
"sequential_164/gru_164/transpose_1	TransposeBsequential_164/gru_164/TensorArrayV2Stack/TensorListStack:tensor:00sequential_164/gru_164/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������22$
"sequential_164/gru_164/transpose_1�
sequential_164/gru_164/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_164/gru_164/runtime�
.sequential_164/dense_164/MatMul/ReadVariableOpReadVariableOp7sequential_164_dense_164_matmul_readvariableop_resource*
_output_shapes

:2*
dtype020
.sequential_164/dense_164/MatMul/ReadVariableOp�
sequential_164/dense_164/MatMulMatMul/sequential_164/gru_164/strided_slice_3:output:06sequential_164/dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2!
sequential_164/dense_164/MatMul�
/sequential_164/dense_164/BiasAdd/ReadVariableOpReadVariableOp8sequential_164_dense_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_164/dense_164/BiasAdd/ReadVariableOp�
 sequential_164/dense_164/BiasAddBiasAdd)sequential_164/dense_164/MatMul:product:07sequential_164/dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2"
 sequential_164/dense_164/BiasAdd�
IdentityIdentity)sequential_164/dense_164/BiasAdd:output:00^sequential_164/dense_164/BiasAdd/ReadVariableOp/^sequential_164/dense_164/MatMul/ReadVariableOp:^sequential_164/gru_164/gru_cell_164/MatMul/ReadVariableOp<^sequential_164/gru_164/gru_cell_164/MatMul_1/ReadVariableOp3^sequential_164/gru_164/gru_cell_164/ReadVariableOp^sequential_164/gru_164/while*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2b
/sequential_164/dense_164/BiasAdd/ReadVariableOp/sequential_164/dense_164/BiasAdd/ReadVariableOp2`
.sequential_164/dense_164/MatMul/ReadVariableOp.sequential_164/dense_164/MatMul/ReadVariableOp2v
9sequential_164/gru_164/gru_cell_164/MatMul/ReadVariableOp9sequential_164/gru_164/gru_cell_164/MatMul/ReadVariableOp2z
;sequential_164/gru_164/gru_cell_164/MatMul_1/ReadVariableOp;sequential_164/gru_164/gru_cell_164/MatMul_1/ReadVariableOp2h
2sequential_164/gru_164/gru_cell_164/ReadVariableOp2sequential_164/gru_164/gru_cell_164/ReadVariableOp2<
sequential_164/gru_164/whilesequential_164/gru_164/while:Z V
+
_output_shapes
:���������
'
_user_specified_namegru_164_input
�q
�
K__inference_sequential_164_layer_call_and_return_conditional_losses_1078118

inputs0
,gru_164_gru_cell_164_readvariableop_resource7
3gru_164_gru_cell_164_matmul_readvariableop_resource9
5gru_164_gru_cell_164_matmul_1_readvariableop_resource,
(dense_164_matmul_readvariableop_resource-
)dense_164_biasadd_readvariableop_resource
identity�� dense_164/BiasAdd/ReadVariableOp�dense_164/MatMul/ReadVariableOp�*gru_164/gru_cell_164/MatMul/ReadVariableOp�,gru_164/gru_cell_164/MatMul_1/ReadVariableOp�#gru_164/gru_cell_164/ReadVariableOp�gru_164/whileT
gru_164/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_164/Shape�
gru_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_164/strided_slice/stack�
gru_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_164/strided_slice/stack_1�
gru_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_164/strided_slice/stack_2�
gru_164/strided_sliceStridedSlicegru_164/Shape:output:0$gru_164/strided_slice/stack:output:0&gru_164/strided_slice/stack_1:output:0&gru_164/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_164/strided_slicel
gru_164/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
gru_164/zeros/mul/y�
gru_164/zeros/mulMulgru_164/strided_slice:output:0gru_164/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_164/zeros/mulo
gru_164/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
gru_164/zeros/Less/y�
gru_164/zeros/LessLessgru_164/zeros/mul:z:0gru_164/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_164/zeros/Lessr
gru_164/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
gru_164/zeros/packed/1�
gru_164/zeros/packedPackgru_164/strided_slice:output:0gru_164/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_164/zeros/packedo
gru_164/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_164/zeros/Const�
gru_164/zerosFillgru_164/zeros/packed:output:0gru_164/zeros/Const:output:0*
T0*'
_output_shapes
:���������22
gru_164/zeros�
gru_164/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_164/transpose/perm�
gru_164/transpose	Transposeinputsgru_164/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
gru_164/transposeg
gru_164/Shape_1Shapegru_164/transpose:y:0*
T0*
_output_shapes
:2
gru_164/Shape_1�
gru_164/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_164/strided_slice_1/stack�
gru_164/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_1/stack_1�
gru_164/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_1/stack_2�
gru_164/strided_slice_1StridedSlicegru_164/Shape_1:output:0&gru_164/strided_slice_1/stack:output:0(gru_164/strided_slice_1/stack_1:output:0(gru_164/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_164/strided_slice_1�
#gru_164/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#gru_164/TensorArrayV2/element_shape�
gru_164/TensorArrayV2TensorListReserve,gru_164/TensorArrayV2/element_shape:output:0 gru_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_164/TensorArrayV2�
=gru_164/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=gru_164/TensorArrayUnstack/TensorListFromTensor/element_shape�
/gru_164/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_164/transpose:y:0Fgru_164/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_164/TensorArrayUnstack/TensorListFromTensor�
gru_164/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_164/strided_slice_2/stack�
gru_164/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_2/stack_1�
gru_164/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_2/stack_2�
gru_164/strided_slice_2StridedSlicegru_164/transpose:y:0&gru_164/strided_slice_2/stack:output:0(gru_164/strided_slice_2/stack_1:output:0(gru_164/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
gru_164/strided_slice_2�
#gru_164/gru_cell_164/ReadVariableOpReadVariableOp,gru_164_gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#gru_164/gru_cell_164/ReadVariableOp�
gru_164/gru_cell_164/unstackUnpack+gru_164/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
gru_164/gru_cell_164/unstack�
*gru_164/gru_cell_164/MatMul/ReadVariableOpReadVariableOp3gru_164_gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*gru_164/gru_cell_164/MatMul/ReadVariableOp�
gru_164/gru_cell_164/MatMulMatMul gru_164/strided_slice_2:output:02gru_164/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_164/gru_cell_164/MatMul�
gru_164/gru_cell_164/BiasAddBiasAdd%gru_164/gru_cell_164/MatMul:product:0%gru_164/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
gru_164/gru_cell_164/BiasAddz
gru_164/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_164/gru_cell_164/Const�
$gru_164/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$gru_164/gru_cell_164/split/split_dim�
gru_164/gru_cell_164/splitSplit-gru_164/gru_cell_164/split/split_dim:output:0%gru_164/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_164/gru_cell_164/split�
,gru_164/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp5gru_164_gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02.
,gru_164/gru_cell_164/MatMul_1/ReadVariableOp�
gru_164/gru_cell_164/MatMul_1MatMulgru_164/zeros:output:04gru_164/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_164/gru_cell_164/MatMul_1�
gru_164/gru_cell_164/BiasAdd_1BiasAdd'gru_164/gru_cell_164/MatMul_1:product:0%gru_164/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2 
gru_164/gru_cell_164/BiasAdd_1�
gru_164/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
gru_164/gru_cell_164/Const_1�
&gru_164/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&gru_164/gru_cell_164/split_1/split_dim�
gru_164/gru_cell_164/split_1SplitV'gru_164/gru_cell_164/BiasAdd_1:output:0%gru_164/gru_cell_164/Const_1:output:0/gru_164/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_164/gru_cell_164/split_1�
gru_164/gru_cell_164/addAddV2#gru_164/gru_cell_164/split:output:0%gru_164/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/add�
gru_164/gru_cell_164/add_1AddV2#gru_164/gru_cell_164/split:output:1%gru_164/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/add_1�
gru_164/gru_cell_164/mulMulgru_164/gru_cell_164/add_1:z:0%gru_164/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/mul�
gru_164/gru_cell_164/add_2AddV2#gru_164/gru_cell_164/split:output:2gru_164/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/add_2�
gru_164/gru_cell_164/TanhTanhgru_164/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/Tanh�
gru_164/gru_cell_164/mul_1Mulgru_164/gru_cell_164/add:z:0gru_164/zeros:output:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/mul_1}
gru_164/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
gru_164/gru_cell_164/sub/x�
gru_164/gru_cell_164/subSub#gru_164/gru_cell_164/sub/x:output:0gru_164/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/sub�
gru_164/gru_cell_164/mul_2Mulgru_164/gru_cell_164/sub:z:0gru_164/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/mul_2�
gru_164/gru_cell_164/add_3AddV2gru_164/gru_cell_164/mul_1:z:0gru_164/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/add_3�
%gru_164/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2'
%gru_164/TensorArrayV2_1/element_shape�
gru_164/TensorArrayV2_1TensorListReserve.gru_164/TensorArrayV2_1/element_shape:output:0 gru_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_164/TensorArrayV2_1^
gru_164/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_164/time�
 gru_164/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 gru_164/while/maximum_iterationsz
gru_164/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_164/while/loop_counter�
gru_164/whileWhile#gru_164/while/loop_counter:output:0)gru_164/while/maximum_iterations:output:0gru_164/time:output:0 gru_164/TensorArrayV2_1:handle:0gru_164/zeros:output:0 gru_164/strided_slice_1:output:0?gru_164/TensorArrayUnstack/TensorListFromTensor:output_handle:0,gru_164_gru_cell_164_readvariableop_resource3gru_164_gru_cell_164_matmul_readvariableop_resource5gru_164_gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*&
bodyR
gru_164_while_body_1078024*&
condR
gru_164_while_cond_1078023*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
gru_164/while�
8gru_164/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2:
8gru_164/TensorArrayV2Stack/TensorListStack/element_shape�
*gru_164/TensorArrayV2Stack/TensorListStackTensorListStackgru_164/while:output:3Agru_164/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype02,
*gru_164/TensorArrayV2Stack/TensorListStack�
gru_164/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
gru_164/strided_slice_3/stack�
gru_164/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_164/strided_slice_3/stack_1�
gru_164/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_3/stack_2�
gru_164/strided_slice_3StridedSlice3gru_164/TensorArrayV2Stack/TensorListStack:tensor:0&gru_164/strided_slice_3/stack:output:0(gru_164/strided_slice_3/stack_1:output:0(gru_164/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
gru_164/strided_slice_3�
gru_164/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_164/transpose_1/perm�
gru_164/transpose_1	Transpose3gru_164/TensorArrayV2Stack/TensorListStack:tensor:0!gru_164/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������22
gru_164/transpose_1v
gru_164/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_164/runtime�
dense_164/MatMul/ReadVariableOpReadVariableOp(dense_164_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02!
dense_164/MatMul/ReadVariableOp�
dense_164/MatMulMatMul gru_164/strided_slice_3:output:0'dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_164/MatMul�
 dense_164/BiasAdd/ReadVariableOpReadVariableOp)dense_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_164/BiasAdd/ReadVariableOp�
dense_164/BiasAddBiasAdddense_164/MatMul:product:0(dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_164/BiasAdd�
IdentityIdentitydense_164/BiasAdd:output:0!^dense_164/BiasAdd/ReadVariableOp ^dense_164/MatMul/ReadVariableOp+^gru_164/gru_cell_164/MatMul/ReadVariableOp-^gru_164/gru_cell_164/MatMul_1/ReadVariableOp$^gru_164/gru_cell_164/ReadVariableOp^gru_164/while*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2D
 dense_164/BiasAdd/ReadVariableOp dense_164/BiasAdd/ReadVariableOp2B
dense_164/MatMul/ReadVariableOpdense_164/MatMul/ReadVariableOp2X
*gru_164/gru_cell_164/MatMul/ReadVariableOp*gru_164/gru_cell_164/MatMul/ReadVariableOp2\
,gru_164/gru_cell_164/MatMul_1/ReadVariableOp,gru_164/gru_cell_164/MatMul_1/ReadVariableOp2J
#gru_164/gru_cell_164/ReadVariableOp#gru_164/gru_cell_164/ReadVariableOp2
gru_164/whilegru_164/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1077707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1077707___redundant_placeholder05
1while_while_cond_1077707___redundant_placeholder15
1while_while_cond_1077707___redundant_placeholder25
1while_while_cond_1077707___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1077409
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1077409___redundant_placeholder05
1while_while_cond_1077409___redundant_placeholder15
1while_while_cond_1077409___redundant_placeholder25
1while_while_cond_1077409___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1078375
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1078375___redundant_placeholder05
1while_while_cond_1078375___redundant_placeholder15
1while_while_cond_1078375___redundant_placeholder25
1while_while_cond_1078375___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
K__inference_sequential_164_layer_call_and_return_conditional_losses_1077853
gru_164_input
gru_164_1077819
gru_164_1077821
gru_164_1077823
dense_164_1077847
dense_164_1077849
identity��!dense_164/StatefulPartitionedCall�gru_164/StatefulPartitionedCall�
gru_164/StatefulPartitionedCallStatefulPartitionedCallgru_164_inputgru_164_1077819gru_164_1077821gru_164_1077823*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_gru_164_layer_call_and_return_conditional_losses_10776412!
gru_164/StatefulPartitionedCall�
!dense_164/StatefulPartitionedCallStatefulPartitionedCall(gru_164/StatefulPartitionedCall:output:0dense_164_1077847dense_164_1077849*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_10778362#
!dense_164/StatefulPartitionedCall�
IdentityIdentity*dense_164/StatefulPartitionedCall:output:0"^dense_164/StatefulPartitionedCall ^gru_164/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2B
gru_164/StatefulPartitionedCallgru_164/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namegru_164_input
�F
�
while_body_1078531
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_164_readvariableop_resource_07
3while_gru_cell_164_matmul_readvariableop_resource_09
5while_gru_cell_164_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_164_readvariableop_resource5
1while_gru_cell_164_matmul_readvariableop_resource7
3while_gru_cell_164_matmul_1_readvariableop_resource��(while/gru_cell_164/MatMul/ReadVariableOp�*while/gru_cell_164/MatMul_1/ReadVariableOp�!while/gru_cell_164/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
!while/gru_cell_164/ReadVariableOpReadVariableOp,while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02#
!while/gru_cell_164/ReadVariableOp�
while/gru_cell_164/unstackUnpack)while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
while/gru_cell_164/unstack�
(while/gru_cell_164/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/gru_cell_164/MatMul/ReadVariableOp�
while/gru_cell_164/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul�
while/gru_cell_164/BiasAddBiasAdd#while/gru_cell_164/MatMul:product:0#while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAddv
while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_164/Const�
"while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"while/gru_cell_164/split/split_dim�
while/gru_cell_164/splitSplit+while/gru_cell_164/split/split_dim:output:0#while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split�
*while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype02,
*while/gru_cell_164/MatMul_1/ReadVariableOp�
while/gru_cell_164/MatMul_1MatMulwhile_placeholder_22while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul_1�
while/gru_cell_164/BiasAdd_1BiasAdd%while/gru_cell_164/MatMul_1:product:0#while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAdd_1�
while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
while/gru_cell_164/Const_1�
$while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$while/gru_cell_164/split_1/split_dim�
while/gru_cell_164/split_1SplitV%while/gru_cell_164/BiasAdd_1:output:0#while/gru_cell_164/Const_1:output:0-while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split_1�
while/gru_cell_164/addAddV2!while/gru_cell_164/split:output:0#while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add�
while/gru_cell_164/add_1AddV2!while/gru_cell_164/split:output:1#while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_1�
while/gru_cell_164/mulMulwhile/gru_cell_164/add_1:z:0#while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul�
while/gru_cell_164/add_2AddV2!while/gru_cell_164/split:output:2while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_2�
while/gru_cell_164/TanhTanhwhile/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/Tanh�
while/gru_cell_164/mul_1Mulwhile/gru_cell_164/add:z:0while_placeholder_2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_1y
while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/gru_cell_164/sub/x�
while/gru_cell_164/subSub!while/gru_cell_164/sub/x:output:0while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/sub�
while/gru_cell_164/mul_2Mulwhile/gru_cell_164/sub:z:0while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_2�
while/gru_cell_164/add_3AddV2while/gru_cell_164/mul_1:z:0while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_3�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/gru_cell_164/add_3:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22
while/Identity_4"l
3while_gru_cell_164_matmul_1_readvariableop_resource5while_gru_cell_164_matmul_1_readvariableop_resource_0"h
1while_gru_cell_164_matmul_readvariableop_resource3while_gru_cell_164_matmul_readvariableop_resource_0"Z
*while_gru_cell_164_readvariableop_resource,while_gru_cell_164_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2T
(while/gru_cell_164/MatMul/ReadVariableOp(while/gru_cell_164/MatMul/ReadVariableOp2X
*while/gru_cell_164/MatMul_1/ReadVariableOp*while/gru_cell_164/MatMul_1/ReadVariableOp2F
!while/gru_cell_164/ReadVariableOp!while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�j
�
)sequential_164_gru_164_while_body_1076831J
Fsequential_164_gru_164_while_sequential_164_gru_164_while_loop_counterP
Lsequential_164_gru_164_while_sequential_164_gru_164_while_maximum_iterations,
(sequential_164_gru_164_while_placeholder.
*sequential_164_gru_164_while_placeholder_1.
*sequential_164_gru_164_while_placeholder_2I
Esequential_164_gru_164_while_sequential_164_gru_164_strided_slice_1_0�
�sequential_164_gru_164_while_tensorarrayv2read_tensorlistgetitem_sequential_164_gru_164_tensorarrayunstack_tensorlistfromtensor_0G
Csequential_164_gru_164_while_gru_cell_164_readvariableop_resource_0N
Jsequential_164_gru_164_while_gru_cell_164_matmul_readvariableop_resource_0P
Lsequential_164_gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0)
%sequential_164_gru_164_while_identity+
'sequential_164_gru_164_while_identity_1+
'sequential_164_gru_164_while_identity_2+
'sequential_164_gru_164_while_identity_3+
'sequential_164_gru_164_while_identity_4G
Csequential_164_gru_164_while_sequential_164_gru_164_strided_slice_1�
sequential_164_gru_164_while_tensorarrayv2read_tensorlistgetitem_sequential_164_gru_164_tensorarrayunstack_tensorlistfromtensorE
Asequential_164_gru_164_while_gru_cell_164_readvariableop_resourceL
Hsequential_164_gru_164_while_gru_cell_164_matmul_readvariableop_resourceN
Jsequential_164_gru_164_while_gru_cell_164_matmul_1_readvariableop_resource��?sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOp�Asequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp�8sequential_164/gru_164/while/gru_cell_164/ReadVariableOp�
Nsequential_164/gru_164/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2P
Nsequential_164/gru_164/while/TensorArrayV2Read/TensorListGetItem/element_shape�
@sequential_164/gru_164/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_164_gru_164_while_tensorarrayv2read_tensorlistgetitem_sequential_164_gru_164_tensorarrayunstack_tensorlistfromtensor_0(sequential_164_gru_164_while_placeholderWsequential_164/gru_164/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02B
@sequential_164/gru_164/while/TensorArrayV2Read/TensorListGetItem�
8sequential_164/gru_164/while/gru_cell_164/ReadVariableOpReadVariableOpCsequential_164_gru_164_while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02:
8sequential_164/gru_164/while/gru_cell_164/ReadVariableOp�
1sequential_164/gru_164/while/gru_cell_164/unstackUnpack@sequential_164/gru_164/while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num23
1sequential_164/gru_164/while/gru_cell_164/unstack�
?sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOpReadVariableOpJsequential_164_gru_164_while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02A
?sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOp�
0sequential_164/gru_164/while/gru_cell_164/MatMulMatMulGsequential_164/gru_164/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������22
0sequential_164/gru_164/while/gru_cell_164/MatMul�
1sequential_164/gru_164/while/gru_cell_164/BiasAddBiasAdd:sequential_164/gru_164/while/gru_cell_164/MatMul:product:0:sequential_164/gru_164/while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������23
1sequential_164/gru_164/while/gru_cell_164/BiasAdd�
/sequential_164/gru_164/while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_164/gru_164/while/gru_cell_164/Const�
9sequential_164/gru_164/while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2;
9sequential_164/gru_164/while/gru_cell_164/split/split_dim�
/sequential_164/gru_164/while/gru_cell_164/splitSplitBsequential_164/gru_164/while/gru_cell_164/split/split_dim:output:0:sequential_164/gru_164/while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split21
/sequential_164/gru_164/while/gru_cell_164/split�
Asequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOpLsequential_164_gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype02C
Asequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp�
2sequential_164/gru_164/while/gru_cell_164/MatMul_1MatMul*sequential_164_gru_164_while_placeholder_2Isequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������24
2sequential_164/gru_164/while/gru_cell_164/MatMul_1�
3sequential_164/gru_164/while/gru_cell_164/BiasAdd_1BiasAdd<sequential_164/gru_164/while/gru_cell_164/MatMul_1:product:0:sequential_164/gru_164/while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������25
3sequential_164/gru_164/while/gru_cell_164/BiasAdd_1�
1sequential_164/gru_164/while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����23
1sequential_164/gru_164/while/gru_cell_164/Const_1�
;sequential_164/gru_164/while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2=
;sequential_164/gru_164/while/gru_cell_164/split_1/split_dim�
1sequential_164/gru_164/while/gru_cell_164/split_1SplitV<sequential_164/gru_164/while/gru_cell_164/BiasAdd_1:output:0:sequential_164/gru_164/while/gru_cell_164/Const_1:output:0Dsequential_164/gru_164/while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split23
1sequential_164/gru_164/while/gru_cell_164/split_1�
-sequential_164/gru_164/while/gru_cell_164/addAddV28sequential_164/gru_164/while/gru_cell_164/split:output:0:sequential_164/gru_164/while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22/
-sequential_164/gru_164/while/gru_cell_164/add�
/sequential_164/gru_164/while/gru_cell_164/add_1AddV28sequential_164/gru_164/while/gru_cell_164/split:output:1:sequential_164/gru_164/while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������221
/sequential_164/gru_164/while/gru_cell_164/add_1�
-sequential_164/gru_164/while/gru_cell_164/mulMul3sequential_164/gru_164/while/gru_cell_164/add_1:z:0:sequential_164/gru_164/while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22/
-sequential_164/gru_164/while/gru_cell_164/mul�
/sequential_164/gru_164/while/gru_cell_164/add_2AddV28sequential_164/gru_164/while/gru_cell_164/split:output:21sequential_164/gru_164/while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������221
/sequential_164/gru_164/while/gru_cell_164/add_2�
.sequential_164/gru_164/while/gru_cell_164/TanhTanh3sequential_164/gru_164/while/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������220
.sequential_164/gru_164/while/gru_cell_164/Tanh�
/sequential_164/gru_164/while/gru_cell_164/mul_1Mul1sequential_164/gru_164/while/gru_cell_164/add:z:0*sequential_164_gru_164_while_placeholder_2*
T0*'
_output_shapes
:���������221
/sequential_164/gru_164/while/gru_cell_164/mul_1�
/sequential_164/gru_164/while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?21
/sequential_164/gru_164/while/gru_cell_164/sub/x�
-sequential_164/gru_164/while/gru_cell_164/subSub8sequential_164/gru_164/while/gru_cell_164/sub/x:output:01sequential_164/gru_164/while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22/
-sequential_164/gru_164/while/gru_cell_164/sub�
/sequential_164/gru_164/while/gru_cell_164/mul_2Mul1sequential_164/gru_164/while/gru_cell_164/sub:z:02sequential_164/gru_164/while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������221
/sequential_164/gru_164/while/gru_cell_164/mul_2�
/sequential_164/gru_164/while/gru_cell_164/add_3AddV23sequential_164/gru_164/while/gru_cell_164/mul_1:z:03sequential_164/gru_164/while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������221
/sequential_164/gru_164/while/gru_cell_164/add_3�
Asequential_164/gru_164/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_164_gru_164_while_placeholder_1(sequential_164_gru_164_while_placeholder3sequential_164/gru_164/while/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype02C
Asequential_164/gru_164/while/TensorArrayV2Write/TensorListSetItem�
"sequential_164/gru_164/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_164/gru_164/while/add/y�
 sequential_164/gru_164/while/addAddV2(sequential_164_gru_164_while_placeholder+sequential_164/gru_164/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_164/gru_164/while/add�
$sequential_164/gru_164/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_164/gru_164/while/add_1/y�
"sequential_164/gru_164/while/add_1AddV2Fsequential_164_gru_164_while_sequential_164_gru_164_while_loop_counter-sequential_164/gru_164/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_164/gru_164/while/add_1�
%sequential_164/gru_164/while/IdentityIdentity&sequential_164/gru_164/while/add_1:z:0@^sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOpB^sequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp9^sequential_164/gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_164/gru_164/while/Identity�
'sequential_164/gru_164/while/Identity_1IdentityLsequential_164_gru_164_while_sequential_164_gru_164_while_maximum_iterations@^sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOpB^sequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp9^sequential_164/gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2)
'sequential_164/gru_164/while/Identity_1�
'sequential_164/gru_164/while/Identity_2Identity$sequential_164/gru_164/while/add:z:0@^sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOpB^sequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp9^sequential_164/gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2)
'sequential_164/gru_164/while/Identity_2�
'sequential_164/gru_164/while/Identity_3IdentityQsequential_164/gru_164/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOpB^sequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp9^sequential_164/gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2)
'sequential_164/gru_164/while/Identity_3�
'sequential_164/gru_164/while/Identity_4Identity3sequential_164/gru_164/while/gru_cell_164/add_3:z:0@^sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOpB^sequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp9^sequential_164/gru_164/while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22)
'sequential_164/gru_164/while/Identity_4"�
Jsequential_164_gru_164_while_gru_cell_164_matmul_1_readvariableop_resourceLsequential_164_gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0"�
Hsequential_164_gru_164_while_gru_cell_164_matmul_readvariableop_resourceJsequential_164_gru_164_while_gru_cell_164_matmul_readvariableop_resource_0"�
Asequential_164_gru_164_while_gru_cell_164_readvariableop_resourceCsequential_164_gru_164_while_gru_cell_164_readvariableop_resource_0"W
%sequential_164_gru_164_while_identity.sequential_164/gru_164/while/Identity:output:0"[
'sequential_164_gru_164_while_identity_10sequential_164/gru_164/while/Identity_1:output:0"[
'sequential_164_gru_164_while_identity_20sequential_164/gru_164/while/Identity_2:output:0"[
'sequential_164_gru_164_while_identity_30sequential_164/gru_164/while/Identity_3:output:0"[
'sequential_164_gru_164_while_identity_40sequential_164/gru_164/while/Identity_4:output:0"�
Csequential_164_gru_164_while_sequential_164_gru_164_strided_slice_1Esequential_164_gru_164_while_sequential_164_gru_164_strided_slice_1_0"�
sequential_164_gru_164_while_tensorarrayv2read_tensorlistgetitem_sequential_164_gru_164_tensorarrayunstack_tensorlistfromtensor�sequential_164_gru_164_while_tensorarrayv2read_tensorlistgetitem_sequential_164_gru_164_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2�
?sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOp?sequential_164/gru_164/while/gru_cell_164/MatMul/ReadVariableOp2�
Asequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOpAsequential_164/gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp2t
8sequential_164/gru_164/while/gru_cell_164/ReadVariableOp8sequential_164/gru_164/while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
)sequential_164_gru_164_while_cond_1076830J
Fsequential_164_gru_164_while_sequential_164_gru_164_while_loop_counterP
Lsequential_164_gru_164_while_sequential_164_gru_164_while_maximum_iterations,
(sequential_164_gru_164_while_placeholder.
*sequential_164_gru_164_while_placeholder_1.
*sequential_164_gru_164_while_placeholder_2L
Hsequential_164_gru_164_while_less_sequential_164_gru_164_strided_slice_1c
_sequential_164_gru_164_while_sequential_164_gru_164_while_cond_1076830___redundant_placeholder0c
_sequential_164_gru_164_while_sequential_164_gru_164_while_cond_1076830___redundant_placeholder1c
_sequential_164_gru_164_while_sequential_164_gru_164_while_cond_1076830___redundant_placeholder2c
_sequential_164_gru_164_while_sequential_164_gru_164_while_cond_1076830___redundant_placeholder3)
%sequential_164_gru_164_while_identity
�
!sequential_164/gru_164/while/LessLess(sequential_164_gru_164_while_placeholderHsequential_164_gru_164_while_less_sequential_164_gru_164_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_164/gru_164/while/Less�
%sequential_164/gru_164/while/IdentityIdentity%sequential_164/gru_164/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_164/gru_164/while/Identity"W
%sequential_164_gru_164_while_identity.sequential_164/gru_164/while/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�=
�
D__inference_gru_164_layer_call_and_return_conditional_losses_1077356

inputs
gru_cell_164_1077280
gru_cell_164_1077282
gru_cell_164_1077284
identity��$gru_cell_164/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$gru_cell_164/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_164_1077280gru_cell_164_1077282gru_cell_164_1077284*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_10769952&
$gru_cell_164/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_164_1077280gru_cell_164_1077282gru_cell_164_1077284*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_1077292*
condR
while_cond_1077291*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitystrided_slice_3:output:0%^gru_cell_164/StatefulPartitionedCall^while*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������:::2L
$gru_cell_164/StatefulPartitionedCall$gru_cell_164/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�R
�	
gru_164_while_body_1078185,
(gru_164_while_gru_164_while_loop_counter2
.gru_164_while_gru_164_while_maximum_iterations
gru_164_while_placeholder
gru_164_while_placeholder_1
gru_164_while_placeholder_2+
'gru_164_while_gru_164_strided_slice_1_0g
cgru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensor_08
4gru_164_while_gru_cell_164_readvariableop_resource_0?
;gru_164_while_gru_cell_164_matmul_readvariableop_resource_0A
=gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0
gru_164_while_identity
gru_164_while_identity_1
gru_164_while_identity_2
gru_164_while_identity_3
gru_164_while_identity_4)
%gru_164_while_gru_164_strided_slice_1e
agru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensor6
2gru_164_while_gru_cell_164_readvariableop_resource=
9gru_164_while_gru_cell_164_matmul_readvariableop_resource?
;gru_164_while_gru_cell_164_matmul_1_readvariableop_resource��0gru_164/while/gru_cell_164/MatMul/ReadVariableOp�2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp�)gru_164/while/gru_cell_164/ReadVariableOp�
?gru_164/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2A
?gru_164/while/TensorArrayV2Read/TensorListGetItem/element_shape�
1gru_164/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensor_0gru_164_while_placeholderHgru_164/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype023
1gru_164/while/TensorArrayV2Read/TensorListGetItem�
)gru_164/while/gru_cell_164/ReadVariableOpReadVariableOp4gru_164_while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02+
)gru_164/while/gru_cell_164/ReadVariableOp�
"gru_164/while/gru_cell_164/unstackUnpack1gru_164/while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2$
"gru_164/while/gru_cell_164/unstack�
0gru_164/while/gru_cell_164/MatMul/ReadVariableOpReadVariableOp;gru_164_while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype022
0gru_164/while/gru_cell_164/MatMul/ReadVariableOp�
!gru_164/while/gru_cell_164/MatMulMatMul8gru_164/while/TensorArrayV2Read/TensorListGetItem:item:08gru_164/while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!gru_164/while/gru_cell_164/MatMul�
"gru_164/while/gru_cell_164/BiasAddBiasAdd+gru_164/while/gru_cell_164/MatMul:product:0+gru_164/while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2$
"gru_164/while/gru_cell_164/BiasAdd�
 gru_164/while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 gru_164/while/gru_cell_164/Const�
*gru_164/while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2,
*gru_164/while/gru_cell_164/split/split_dim�
 gru_164/while/gru_cell_164/splitSplit3gru_164/while/gru_cell_164/split/split_dim:output:0+gru_164/while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2"
 gru_164/while/gru_cell_164/split�
2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp=gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype024
2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp�
#gru_164/while/gru_cell_164/MatMul_1MatMulgru_164_while_placeholder_2:gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#gru_164/while/gru_cell_164/MatMul_1�
$gru_164/while/gru_cell_164/BiasAdd_1BiasAdd-gru_164/while/gru_cell_164/MatMul_1:product:0+gru_164/while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2&
$gru_164/while/gru_cell_164/BiasAdd_1�
"gru_164/while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2$
"gru_164/while/gru_cell_164/Const_1�
,gru_164/while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2.
,gru_164/while/gru_cell_164/split_1/split_dim�
"gru_164/while/gru_cell_164/split_1SplitV-gru_164/while/gru_cell_164/BiasAdd_1:output:0+gru_164/while/gru_cell_164/Const_1:output:05gru_164/while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2$
"gru_164/while/gru_cell_164/split_1�
gru_164/while/gru_cell_164/addAddV2)gru_164/while/gru_cell_164/split:output:0+gru_164/while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22 
gru_164/while/gru_cell_164/add�
 gru_164/while/gru_cell_164/add_1AddV2)gru_164/while/gru_cell_164/split:output:1+gru_164/while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/add_1�
gru_164/while/gru_cell_164/mulMul$gru_164/while/gru_cell_164/add_1:z:0+gru_164/while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22 
gru_164/while/gru_cell_164/mul�
 gru_164/while/gru_cell_164/add_2AddV2)gru_164/while/gru_cell_164/split:output:2"gru_164/while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/add_2�
gru_164/while/gru_cell_164/TanhTanh$gru_164/while/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22!
gru_164/while/gru_cell_164/Tanh�
 gru_164/while/gru_cell_164/mul_1Mul"gru_164/while/gru_cell_164/add:z:0gru_164_while_placeholder_2*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/mul_1�
 gru_164/while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2"
 gru_164/while/gru_cell_164/sub/x�
gru_164/while/gru_cell_164/subSub)gru_164/while/gru_cell_164/sub/x:output:0"gru_164/while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22 
gru_164/while/gru_cell_164/sub�
 gru_164/while/gru_cell_164/mul_2Mul"gru_164/while/gru_cell_164/sub:z:0#gru_164/while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/mul_2�
 gru_164/while/gru_cell_164/add_3AddV2$gru_164/while/gru_cell_164/mul_1:z:0$gru_164/while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22"
 gru_164/while/gru_cell_164/add_3�
2gru_164/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_164_while_placeholder_1gru_164_while_placeholder$gru_164/while/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype024
2gru_164/while/TensorArrayV2Write/TensorListSetIteml
gru_164/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_164/while/add/y�
gru_164/while/addAddV2gru_164_while_placeholdergru_164/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_164/while/addp
gru_164/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_164/while/add_1/y�
gru_164/while/add_1AddV2(gru_164_while_gru_164_while_loop_countergru_164/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_164/while/add_1�
gru_164/while/IdentityIdentitygru_164/while/add_1:z:01^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
gru_164/while/Identity�
gru_164/while/Identity_1Identity.gru_164_while_gru_164_while_maximum_iterations1^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
gru_164/while/Identity_1�
gru_164/while/Identity_2Identitygru_164/while/add:z:01^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
gru_164/while/Identity_2�
gru_164/while/Identity_3IdentityBgru_164/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
gru_164/while/Identity_3�
gru_164/while/Identity_4Identity$gru_164/while/gru_cell_164/add_3:z:01^gru_164/while/gru_cell_164/MatMul/ReadVariableOp3^gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp*^gru_164/while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22
gru_164/while/Identity_4"P
%gru_164_while_gru_164_strided_slice_1'gru_164_while_gru_164_strided_slice_1_0"|
;gru_164_while_gru_cell_164_matmul_1_readvariableop_resource=gru_164_while_gru_cell_164_matmul_1_readvariableop_resource_0"x
9gru_164_while_gru_cell_164_matmul_readvariableop_resource;gru_164_while_gru_cell_164_matmul_readvariableop_resource_0"j
2gru_164_while_gru_cell_164_readvariableop_resource4gru_164_while_gru_cell_164_readvariableop_resource_0"9
gru_164_while_identitygru_164/while/Identity:output:0"=
gru_164_while_identity_1!gru_164/while/Identity_1:output:0"=
gru_164_while_identity_2!gru_164/while/Identity_2:output:0"=
gru_164_while_identity_3!gru_164/while/Identity_3:output:0"=
gru_164_while_identity_4!gru_164/while/Identity_4:output:0"�
agru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensorcgru_164_while_tensorarrayv2read_tensorlistgetitem_gru_164_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2d
0gru_164/while/gru_cell_164/MatMul/ReadVariableOp0gru_164/while/gru_cell_164/MatMul/ReadVariableOp2h
2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp2gru_164/while/gru_cell_164/MatMul_1/ReadVariableOp2V
)gru_164/while/gru_cell_164/ReadVariableOp)gru_164/while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�q
�
K__inference_sequential_164_layer_call_and_return_conditional_losses_1078279

inputs0
,gru_164_gru_cell_164_readvariableop_resource7
3gru_164_gru_cell_164_matmul_readvariableop_resource9
5gru_164_gru_cell_164_matmul_1_readvariableop_resource,
(dense_164_matmul_readvariableop_resource-
)dense_164_biasadd_readvariableop_resource
identity�� dense_164/BiasAdd/ReadVariableOp�dense_164/MatMul/ReadVariableOp�*gru_164/gru_cell_164/MatMul/ReadVariableOp�,gru_164/gru_cell_164/MatMul_1/ReadVariableOp�#gru_164/gru_cell_164/ReadVariableOp�gru_164/whileT
gru_164/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_164/Shape�
gru_164/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_164/strided_slice/stack�
gru_164/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_164/strided_slice/stack_1�
gru_164/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_164/strided_slice/stack_2�
gru_164/strided_sliceStridedSlicegru_164/Shape:output:0$gru_164/strided_slice/stack:output:0&gru_164/strided_slice/stack_1:output:0&gru_164/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_164/strided_slicel
gru_164/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
gru_164/zeros/mul/y�
gru_164/zeros/mulMulgru_164/strided_slice:output:0gru_164/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_164/zeros/mulo
gru_164/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
gru_164/zeros/Less/y�
gru_164/zeros/LessLessgru_164/zeros/mul:z:0gru_164/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_164/zeros/Lessr
gru_164/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
gru_164/zeros/packed/1�
gru_164/zeros/packedPackgru_164/strided_slice:output:0gru_164/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_164/zeros/packedo
gru_164/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_164/zeros/Const�
gru_164/zerosFillgru_164/zeros/packed:output:0gru_164/zeros/Const:output:0*
T0*'
_output_shapes
:���������22
gru_164/zeros�
gru_164/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_164/transpose/perm�
gru_164/transpose	Transposeinputsgru_164/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
gru_164/transposeg
gru_164/Shape_1Shapegru_164/transpose:y:0*
T0*
_output_shapes
:2
gru_164/Shape_1�
gru_164/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_164/strided_slice_1/stack�
gru_164/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_1/stack_1�
gru_164/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_1/stack_2�
gru_164/strided_slice_1StridedSlicegru_164/Shape_1:output:0&gru_164/strided_slice_1/stack:output:0(gru_164/strided_slice_1/stack_1:output:0(gru_164/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_164/strided_slice_1�
#gru_164/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2%
#gru_164/TensorArrayV2/element_shape�
gru_164/TensorArrayV2TensorListReserve,gru_164/TensorArrayV2/element_shape:output:0 gru_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_164/TensorArrayV2�
=gru_164/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2?
=gru_164/TensorArrayUnstack/TensorListFromTensor/element_shape�
/gru_164/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_164/transpose:y:0Fgru_164/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_164/TensorArrayUnstack/TensorListFromTensor�
gru_164/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_164/strided_slice_2/stack�
gru_164/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_2/stack_1�
gru_164/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_2/stack_2�
gru_164/strided_slice_2StridedSlicegru_164/transpose:y:0&gru_164/strided_slice_2/stack:output:0(gru_164/strided_slice_2/stack_1:output:0(gru_164/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
gru_164/strided_slice_2�
#gru_164/gru_cell_164/ReadVariableOpReadVariableOp,gru_164_gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#gru_164/gru_cell_164/ReadVariableOp�
gru_164/gru_cell_164/unstackUnpack+gru_164/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
gru_164/gru_cell_164/unstack�
*gru_164/gru_cell_164/MatMul/ReadVariableOpReadVariableOp3gru_164_gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02,
*gru_164/gru_cell_164/MatMul/ReadVariableOp�
gru_164/gru_cell_164/MatMulMatMul gru_164/strided_slice_2:output:02gru_164/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_164/gru_cell_164/MatMul�
gru_164/gru_cell_164/BiasAddBiasAdd%gru_164/gru_cell_164/MatMul:product:0%gru_164/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
gru_164/gru_cell_164/BiasAddz
gru_164/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_164/gru_cell_164/Const�
$gru_164/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$gru_164/gru_cell_164/split/split_dim�
gru_164/gru_cell_164/splitSplit-gru_164/gru_cell_164/split/split_dim:output:0%gru_164/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_164/gru_cell_164/split�
,gru_164/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp5gru_164_gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02.
,gru_164/gru_cell_164/MatMul_1/ReadVariableOp�
gru_164/gru_cell_164/MatMul_1MatMulgru_164/zeros:output:04gru_164/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_164/gru_cell_164/MatMul_1�
gru_164/gru_cell_164/BiasAdd_1BiasAdd'gru_164/gru_cell_164/MatMul_1:product:0%gru_164/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2 
gru_164/gru_cell_164/BiasAdd_1�
gru_164/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
gru_164/gru_cell_164/Const_1�
&gru_164/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&gru_164/gru_cell_164/split_1/split_dim�
gru_164/gru_cell_164/split_1SplitV'gru_164/gru_cell_164/BiasAdd_1:output:0%gru_164/gru_cell_164/Const_1:output:0/gru_164/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_164/gru_cell_164/split_1�
gru_164/gru_cell_164/addAddV2#gru_164/gru_cell_164/split:output:0%gru_164/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/add�
gru_164/gru_cell_164/add_1AddV2#gru_164/gru_cell_164/split:output:1%gru_164/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/add_1�
gru_164/gru_cell_164/mulMulgru_164/gru_cell_164/add_1:z:0%gru_164/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/mul�
gru_164/gru_cell_164/add_2AddV2#gru_164/gru_cell_164/split:output:2gru_164/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/add_2�
gru_164/gru_cell_164/TanhTanhgru_164/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/Tanh�
gru_164/gru_cell_164/mul_1Mulgru_164/gru_cell_164/add:z:0gru_164/zeros:output:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/mul_1}
gru_164/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
gru_164/gru_cell_164/sub/x�
gru_164/gru_cell_164/subSub#gru_164/gru_cell_164/sub/x:output:0gru_164/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/sub�
gru_164/gru_cell_164/mul_2Mulgru_164/gru_cell_164/sub:z:0gru_164/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/mul_2�
gru_164/gru_cell_164/add_3AddV2gru_164/gru_cell_164/mul_1:z:0gru_164/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
gru_164/gru_cell_164/add_3�
%gru_164/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2'
%gru_164/TensorArrayV2_1/element_shape�
gru_164/TensorArrayV2_1TensorListReserve.gru_164/TensorArrayV2_1/element_shape:output:0 gru_164/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_164/TensorArrayV2_1^
gru_164/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_164/time�
 gru_164/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 gru_164/while/maximum_iterationsz
gru_164/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_164/while/loop_counter�
gru_164/whileWhile#gru_164/while/loop_counter:output:0)gru_164/while/maximum_iterations:output:0gru_164/time:output:0 gru_164/TensorArrayV2_1:handle:0gru_164/zeros:output:0 gru_164/strided_slice_1:output:0?gru_164/TensorArrayUnstack/TensorListFromTensor:output_handle:0,gru_164_gru_cell_164_readvariableop_resource3gru_164_gru_cell_164_matmul_readvariableop_resource5gru_164_gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*&
bodyR
gru_164_while_body_1078185*&
condR
gru_164_while_cond_1078184*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
gru_164/while�
8gru_164/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2:
8gru_164/TensorArrayV2Stack/TensorListStack/element_shape�
*gru_164/TensorArrayV2Stack/TensorListStackTensorListStackgru_164/while:output:3Agru_164/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype02,
*gru_164/TensorArrayV2Stack/TensorListStack�
gru_164/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
gru_164/strided_slice_3/stack�
gru_164/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_164/strided_slice_3/stack_1�
gru_164/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_164/strided_slice_3/stack_2�
gru_164/strided_slice_3StridedSlice3gru_164/TensorArrayV2Stack/TensorListStack:tensor:0&gru_164/strided_slice_3/stack:output:0(gru_164/strided_slice_3/stack_1:output:0(gru_164/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
gru_164/strided_slice_3�
gru_164/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_164/transpose_1/perm�
gru_164/transpose_1	Transpose3gru_164/TensorArrayV2Stack/TensorListStack:tensor:0!gru_164/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������22
gru_164/transpose_1v
gru_164/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_164/runtime�
dense_164/MatMul/ReadVariableOpReadVariableOp(dense_164_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02!
dense_164/MatMul/ReadVariableOp�
dense_164/MatMulMatMul gru_164/strided_slice_3:output:0'dense_164/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_164/MatMul�
 dense_164/BiasAdd/ReadVariableOpReadVariableOp)dense_164_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_164/BiasAdd/ReadVariableOp�
dense_164/BiasAddBiasAdddense_164/MatMul:product:0(dense_164/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_164/BiasAdd�
IdentityIdentitydense_164/BiasAdd:output:0!^dense_164/BiasAdd/ReadVariableOp ^dense_164/MatMul/ReadVariableOp+^gru_164/gru_cell_164/MatMul/ReadVariableOp-^gru_164/gru_cell_164/MatMul_1/ReadVariableOp$^gru_164/gru_cell_164/ReadVariableOp^gru_164/while*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2D
 dense_164/BiasAdd/ReadVariableOp dense_164/BiasAdd/ReadVariableOp2B
dense_164/MatMul/ReadVariableOpdense_164/MatMul/ReadVariableOp2X
*gru_164/gru_cell_164/MatMul/ReadVariableOp*gru_164/gru_cell_164/MatMul/ReadVariableOp2\
,gru_164/gru_cell_164/MatMul_1/ReadVariableOp,gru_164/gru_cell_164/MatMul_1/ReadVariableOp2J
#gru_164/gru_cell_164/ReadVariableOp#gru_164/gru_cell_164/ReadVariableOp2
gru_164/whilegru_164/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
D__inference_gru_164_layer_call_and_return_conditional_losses_1077796

inputs(
$gru_cell_164_readvariableop_resource/
+gru_cell_164_matmul_readvariableop_resource1
-gru_cell_164_matmul_1_readvariableop_resource
identity��"gru_cell_164/MatMul/ReadVariableOp�$gru_cell_164/MatMul_1/ReadVariableOp�gru_cell_164/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
gru_cell_164/ReadVariableOpReadVariableOp$gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype02
gru_cell_164/ReadVariableOp�
gru_cell_164/unstackUnpack#gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
gru_cell_164/unstack�
"gru_cell_164/MatMul/ReadVariableOpReadVariableOp+gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"gru_cell_164/MatMul/ReadVariableOp�
gru_cell_164/MatMulMatMulstrided_slice_2:output:0*gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul�
gru_cell_164/BiasAddBiasAddgru_cell_164/MatMul:product:0gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAddj
gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_164/Const�
gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
gru_cell_164/split/split_dim�
gru_cell_164/splitSplit%gru_cell_164/split/split_dim:output:0gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split�
$gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02&
$gru_cell_164/MatMul_1/ReadVariableOp�
gru_cell_164/MatMul_1MatMulzeros:output:0,gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul_1�
gru_cell_164/BiasAdd_1BiasAddgru_cell_164/MatMul_1:product:0gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAdd_1�
gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
gru_cell_164/Const_1�
gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
gru_cell_164/split_1/split_dim�
gru_cell_164/split_1SplitVgru_cell_164/BiasAdd_1:output:0gru_cell_164/Const_1:output:0'gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split_1�
gru_cell_164/addAddV2gru_cell_164/split:output:0gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add�
gru_cell_164/add_1AddV2gru_cell_164/split:output:1gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
gru_cell_164/add_1�
gru_cell_164/mulMulgru_cell_164/add_1:z:0gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
gru_cell_164/mul�
gru_cell_164/add_2AddV2gru_cell_164/split:output:2gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_2x
gru_cell_164/TanhTanhgru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/Tanh�
gru_cell_164/mul_1Mulgru_cell_164/add:z:0zeros:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_1m
gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
gru_cell_164/sub/x�
gru_cell_164/subSubgru_cell_164/sub/x:output:0gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/sub�
gru_cell_164/mul_2Mulgru_cell_164/sub:z:0gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_2�
gru_cell_164/add_3AddV2gru_cell_164/mul_1:z:0gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_3�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_164_readvariableop_resource+gru_cell_164_matmul_readvariableop_resource-gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_1077708*
condR
while_cond_1077707*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitystrided_slice_3:output:0#^gru_cell_164/MatMul/ReadVariableOp%^gru_cell_164/MatMul_1/ReadVariableOp^gru_cell_164/ReadVariableOp^while*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������:::2H
"gru_cell_164/MatMul/ReadVariableOp"gru_cell_164/MatMul/ReadVariableOp2L
$gru_cell_164/MatMul_1/ReadVariableOp$gru_cell_164/MatMul_1/ReadVariableOp2:
gru_cell_164/ReadVariableOpgru_cell_164/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_1079068

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	�*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2	
unstack�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:����������2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
split�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:����������2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
split_1/split_dim�
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:���������22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:���������22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:���������22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:���������22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:���������22
TanhZ
mul_1Muladd:z:0states_0*
T0*'
_output_shapes
:���������22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:���������22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:���������22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:���������22
add_3�
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:���������22

Identity�

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:���������22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������:���������2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������2
"
_user_specified_name
states/0
�F
�
while_body_1078376
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_164_readvariableop_resource_07
3while_gru_cell_164_matmul_readvariableop_resource_09
5while_gru_cell_164_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_164_readvariableop_resource5
1while_gru_cell_164_matmul_readvariableop_resource7
3while_gru_cell_164_matmul_1_readvariableop_resource��(while/gru_cell_164/MatMul/ReadVariableOp�*while/gru_cell_164/MatMul_1/ReadVariableOp�!while/gru_cell_164/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
!while/gru_cell_164/ReadVariableOpReadVariableOp,while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02#
!while/gru_cell_164/ReadVariableOp�
while/gru_cell_164/unstackUnpack)while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
while/gru_cell_164/unstack�
(while/gru_cell_164/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/gru_cell_164/MatMul/ReadVariableOp�
while/gru_cell_164/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul�
while/gru_cell_164/BiasAddBiasAdd#while/gru_cell_164/MatMul:product:0#while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAddv
while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_164/Const�
"while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"while/gru_cell_164/split/split_dim�
while/gru_cell_164/splitSplit+while/gru_cell_164/split/split_dim:output:0#while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split�
*while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype02,
*while/gru_cell_164/MatMul_1/ReadVariableOp�
while/gru_cell_164/MatMul_1MatMulwhile_placeholder_22while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul_1�
while/gru_cell_164/BiasAdd_1BiasAdd%while/gru_cell_164/MatMul_1:product:0#while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAdd_1�
while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
while/gru_cell_164/Const_1�
$while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$while/gru_cell_164/split_1/split_dim�
while/gru_cell_164/split_1SplitV%while/gru_cell_164/BiasAdd_1:output:0#while/gru_cell_164/Const_1:output:0-while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split_1�
while/gru_cell_164/addAddV2!while/gru_cell_164/split:output:0#while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add�
while/gru_cell_164/add_1AddV2!while/gru_cell_164/split:output:1#while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_1�
while/gru_cell_164/mulMulwhile/gru_cell_164/add_1:z:0#while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul�
while/gru_cell_164/add_2AddV2!while/gru_cell_164/split:output:2while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_2�
while/gru_cell_164/TanhTanhwhile/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/Tanh�
while/gru_cell_164/mul_1Mulwhile/gru_cell_164/add:z:0while_placeholder_2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_1y
while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/gru_cell_164/sub/x�
while/gru_cell_164/subSub!while/gru_cell_164/sub/x:output:0while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/sub�
while/gru_cell_164/mul_2Mulwhile/gru_cell_164/sub:z:0while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_2�
while/gru_cell_164/add_3AddV2while/gru_cell_164/mul_1:z:0while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_3�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/gru_cell_164/add_3:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22
while/Identity_4"l
3while_gru_cell_164_matmul_1_readvariableop_resource5while_gru_cell_164_matmul_1_readvariableop_resource_0"h
1while_gru_cell_164_matmul_readvariableop_resource3while_gru_cell_164_matmul_readvariableop_resource_0"Z
*while_gru_cell_164_readvariableop_resource,while_gru_cell_164_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2T
(while/gru_cell_164/MatMul/ReadVariableOp(while/gru_cell_164/MatMul/ReadVariableOp2X
*while/gru_cell_164/MatMul_1/ReadVariableOp*while/gru_cell_164/MatMul_1/ReadVariableOp2F
!while/gru_cell_164/ReadVariableOp!while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�	
�
gru_164_while_cond_1078184,
(gru_164_while_gru_164_while_loop_counter2
.gru_164_while_gru_164_while_maximum_iterations
gru_164_while_placeholder
gru_164_while_placeholder_1
gru_164_while_placeholder_2.
*gru_164_while_less_gru_164_strided_slice_1E
Agru_164_while_gru_164_while_cond_1078184___redundant_placeholder0E
Agru_164_while_gru_164_while_cond_1078184___redundant_placeholder1E
Agru_164_while_gru_164_while_cond_1078184___redundant_placeholder2E
Agru_164_while_gru_164_while_cond_1078184___redundant_placeholder3
gru_164_while_identity
�
gru_164/while/LessLessgru_164_while_placeholder*gru_164_while_less_gru_164_strided_slice_1*
T0*
_output_shapes
: 2
gru_164/while/Lessu
gru_164/while/IdentityIdentitygru_164/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_164/while/Identity"9
gru_164_while_identitygru_164/while/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_1077033

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1��MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�ReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	�*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2	
unstack�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:����������2	
BiasAddP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
split�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:����������2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
split_1/split_dim�
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:���������22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:���������22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:���������22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:���������22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:���������22
TanhX
mul_1Muladd:z:0states*
T0*'
_output_shapes
:���������22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:���������22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:���������22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:���������22
add_3�
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:���������22

Identity�

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:���������22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:���������:���������2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������2
 
_user_specified_namestates
�
�
)__inference_gru_164_layer_call_fn_1078641
inputs_0
unknown
	unknown_0
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_gru_164_layer_call_and_return_conditional_losses_10774742
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�F
�
while_body_1078863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_164_readvariableop_resource_07
3while_gru_cell_164_matmul_readvariableop_resource_09
5while_gru_cell_164_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_164_readvariableop_resource5
1while_gru_cell_164_matmul_readvariableop_resource7
3while_gru_cell_164_matmul_1_readvariableop_resource��(while/gru_cell_164/MatMul/ReadVariableOp�*while/gru_cell_164/MatMul_1/ReadVariableOp�!while/gru_cell_164/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
!while/gru_cell_164/ReadVariableOpReadVariableOp,while_gru_cell_164_readvariableop_resource_0*
_output_shapes
:	�*
dtype02#
!while/gru_cell_164/ReadVariableOp�
while/gru_cell_164/unstackUnpack)while/gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
while/gru_cell_164/unstack�
(while/gru_cell_164/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_164_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02*
(while/gru_cell_164/MatMul/ReadVariableOp�
while/gru_cell_164/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul�
while/gru_cell_164/BiasAddBiasAdd#while/gru_cell_164/MatMul:product:0#while/gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAddv
while/gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_164/Const�
"while/gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2$
"while/gru_cell_164/split/split_dim�
while/gru_cell_164/splitSplit+while/gru_cell_164/split/split_dim:output:0#while/gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split�
*while/gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_164_matmul_1_readvariableop_resource_0*
_output_shapes
:	2�*
dtype02,
*while/gru_cell_164/MatMul_1/ReadVariableOp�
while/gru_cell_164/MatMul_1MatMulwhile_placeholder_22while/gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/gru_cell_164/MatMul_1�
while/gru_cell_164/BiasAdd_1BiasAdd%while/gru_cell_164/MatMul_1:product:0#while/gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
while/gru_cell_164/BiasAdd_1�
while/gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
while/gru_cell_164/Const_1�
$while/gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$while/gru_cell_164/split_1/split_dim�
while/gru_cell_164/split_1SplitV%while/gru_cell_164/BiasAdd_1:output:0#while/gru_cell_164/Const_1:output:0-while/gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
while/gru_cell_164/split_1�
while/gru_cell_164/addAddV2!while/gru_cell_164/split:output:0#while/gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add�
while/gru_cell_164/add_1AddV2!while/gru_cell_164/split:output:1#while/gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_1�
while/gru_cell_164/mulMulwhile/gru_cell_164/add_1:z:0#while/gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul�
while/gru_cell_164/add_2AddV2!while/gru_cell_164/split:output:2while/gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_2�
while/gru_cell_164/TanhTanhwhile/gru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/Tanh�
while/gru_cell_164/mul_1Mulwhile/gru_cell_164/add:z:0while_placeholder_2*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_1y
while/gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
while/gru_cell_164/sub/x�
while/gru_cell_164/subSub!while/gru_cell_164/sub/x:output:0while/gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/sub�
while/gru_cell_164/mul_2Mulwhile/gru_cell_164/sub:z:0while/gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/mul_2�
while/gru_cell_164/add_3AddV2while/gru_cell_164/mul_1:z:0while/gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
while/gru_cell_164/add_3�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_164/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1�
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity�
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1�
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/gru_cell_164/add_3:z:0)^while/gru_cell_164/MatMul/ReadVariableOp+^while/gru_cell_164/MatMul_1/ReadVariableOp"^while/gru_cell_164/ReadVariableOp*
T0*'
_output_shapes
:���������22
while/Identity_4"l
3while_gru_cell_164_matmul_1_readvariableop_resource5while_gru_cell_164_matmul_1_readvariableop_resource_0"h
1while_gru_cell_164_matmul_readvariableop_resource3while_gru_cell_164_matmul_readvariableop_resource_0"Z
*while_gru_cell_164_readvariableop_resource,while_gru_cell_164_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :���������2: : :::2T
(while/gru_cell_164/MatMul/ReadVariableOp(while/gru_cell_164/MatMul/ReadVariableOp2X
*while/gru_cell_164/MatMul_1/ReadVariableOp*while/gru_cell_164/MatMul_1/ReadVariableOp2F
!while/gru_cell_164/ReadVariableOp!while/gru_cell_164/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
: 
�
�
0__inference_sequential_164_layer_call_fn_1077932
gru_164_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallgru_164_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_164_layer_call_and_return_conditional_losses_10779192
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namegru_164_input
�Z
�
D__inference_gru_164_layer_call_and_return_conditional_losses_1078619
inputs_0(
$gru_cell_164_readvariableop_resource/
+gru_cell_164_matmul_readvariableop_resource1
-gru_cell_164_matmul_1_readvariableop_resource
identity��"gru_cell_164/MatMul/ReadVariableOp�$gru_cell_164/MatMul_1/ReadVariableOp�gru_cell_164/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
gru_cell_164/ReadVariableOpReadVariableOp$gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype02
gru_cell_164/ReadVariableOp�
gru_cell_164/unstackUnpack#gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
gru_cell_164/unstack�
"gru_cell_164/MatMul/ReadVariableOpReadVariableOp+gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"gru_cell_164/MatMul/ReadVariableOp�
gru_cell_164/MatMulMatMulstrided_slice_2:output:0*gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul�
gru_cell_164/BiasAddBiasAddgru_cell_164/MatMul:product:0gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAddj
gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_164/Const�
gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
gru_cell_164/split/split_dim�
gru_cell_164/splitSplit%gru_cell_164/split/split_dim:output:0gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split�
$gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02&
$gru_cell_164/MatMul_1/ReadVariableOp�
gru_cell_164/MatMul_1MatMulzeros:output:0,gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul_1�
gru_cell_164/BiasAdd_1BiasAddgru_cell_164/MatMul_1:product:0gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAdd_1�
gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
gru_cell_164/Const_1�
gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
gru_cell_164/split_1/split_dim�
gru_cell_164/split_1SplitVgru_cell_164/BiasAdd_1:output:0gru_cell_164/Const_1:output:0'gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split_1�
gru_cell_164/addAddV2gru_cell_164/split:output:0gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add�
gru_cell_164/add_1AddV2gru_cell_164/split:output:1gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
gru_cell_164/add_1�
gru_cell_164/mulMulgru_cell_164/add_1:z:0gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
gru_cell_164/mul�
gru_cell_164/add_2AddV2gru_cell_164/split:output:2gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_2x
gru_cell_164/TanhTanhgru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/Tanh�
gru_cell_164/mul_1Mulgru_cell_164/add:z:0zeros:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_1m
gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
gru_cell_164/sub/x�
gru_cell_164/subSubgru_cell_164/sub/x:output:0gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/sub�
gru_cell_164/mul_2Mulgru_cell_164/sub:z:0gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_2�
gru_cell_164/add_3AddV2gru_cell_164/mul_1:z:0gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_3�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_164_readvariableop_resource+gru_cell_164_matmul_readvariableop_resource-gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_1078531*
condR
while_cond_1078530*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitystrided_slice_3:output:0#^gru_cell_164/MatMul/ReadVariableOp%^gru_cell_164/MatMul_1/ReadVariableOp^gru_cell_164/ReadVariableOp^while*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������:::2H
"gru_cell_164/MatMul/ReadVariableOp"gru_cell_164/MatMul/ReadVariableOp2L
$gru_cell_164/MatMul_1/ReadVariableOp$gru_cell_164/MatMul_1/ReadVariableOp2:
gru_cell_164/ReadVariableOpgru_cell_164/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1078707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1078707___redundant_placeholder05
1while_while_cond_1078707___redundant_placeholder15
1while_while_cond_1078707___redundant_placeholder25
1while_while_cond_1078707___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�Y
�
D__inference_gru_164_layer_call_and_return_conditional_losses_1078796

inputs(
$gru_cell_164_readvariableop_resource/
+gru_cell_164_matmul_readvariableop_resource1
-gru_cell_164_matmul_1_readvariableop_resource
identity��"gru_cell_164/MatMul/ReadVariableOp�$gru_cell_164/MatMul_1/ReadVariableOp�gru_cell_164/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
gru_cell_164/ReadVariableOpReadVariableOp$gru_cell_164_readvariableop_resource*
_output_shapes
:	�*
dtype02
gru_cell_164/ReadVariableOp�
gru_cell_164/unstackUnpack#gru_cell_164/ReadVariableOp:value:0*
T0*"
_output_shapes
:�:�*	
num2
gru_cell_164/unstack�
"gru_cell_164/MatMul/ReadVariableOpReadVariableOp+gru_cell_164_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"gru_cell_164/MatMul/ReadVariableOp�
gru_cell_164/MatMulMatMulstrided_slice_2:output:0*gru_cell_164/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul�
gru_cell_164/BiasAddBiasAddgru_cell_164/MatMul:product:0gru_cell_164/unstack:output:0*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAddj
gru_cell_164/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_164/Const�
gru_cell_164/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
gru_cell_164/split/split_dim�
gru_cell_164/splitSplit%gru_cell_164/split/split_dim:output:0gru_cell_164/BiasAdd:output:0*
T0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split�
$gru_cell_164/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_164_matmul_1_readvariableop_resource*
_output_shapes
:	2�*
dtype02&
$gru_cell_164/MatMul_1/ReadVariableOp�
gru_cell_164/MatMul_1MatMulzeros:output:0,gru_cell_164/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
gru_cell_164/MatMul_1�
gru_cell_164/BiasAdd_1BiasAddgru_cell_164/MatMul_1:product:0gru_cell_164/unstack:output:1*
T0*(
_output_shapes
:����������2
gru_cell_164/BiasAdd_1�
gru_cell_164/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   ����2
gru_cell_164/Const_1�
gru_cell_164/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
gru_cell_164/split_1/split_dim�
gru_cell_164/split_1SplitVgru_cell_164/BiasAdd_1:output:0gru_cell_164/Const_1:output:0'gru_cell_164/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:���������2:���������2:���������2*
	num_split2
gru_cell_164/split_1�
gru_cell_164/addAddV2gru_cell_164/split:output:0gru_cell_164/split_1:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add�
gru_cell_164/add_1AddV2gru_cell_164/split:output:1gru_cell_164/split_1:output:1*
T0*'
_output_shapes
:���������22
gru_cell_164/add_1�
gru_cell_164/mulMulgru_cell_164/add_1:z:0gru_cell_164/split_1:output:2*
T0*'
_output_shapes
:���������22
gru_cell_164/mul�
gru_cell_164/add_2AddV2gru_cell_164/split:output:2gru_cell_164/mul:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_2x
gru_cell_164/TanhTanhgru_cell_164/add_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/Tanh�
gru_cell_164/mul_1Mulgru_cell_164/add:z:0zeros:output:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_1m
gru_cell_164/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
gru_cell_164/sub/x�
gru_cell_164/subSubgru_cell_164/sub/x:output:0gru_cell_164/add:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/sub�
gru_cell_164/mul_2Mulgru_cell_164/sub:z:0gru_cell_164/Tanh:y:0*
T0*'
_output_shapes
:���������22
gru_cell_164/mul_2�
gru_cell_164/add_3AddV2gru_cell_164/mul_1:z:0gru_cell_164/mul_2:z:0*
T0*'
_output_shapes
:���������22
gru_cell_164/add_3�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_164_readvariableop_resource+gru_cell_164_matmul_readvariableop_resource-gru_cell_164_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_1078708*
condR
while_cond_1078707*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitystrided_slice_3:output:0#^gru_cell_164/MatMul/ReadVariableOp%^gru_cell_164/MatMul_1/ReadVariableOp^gru_cell_164/ReadVariableOp^while*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:���������:::2H
"gru_cell_164/MatMul/ReadVariableOp"gru_cell_164/MatMul/ReadVariableOp2L
$gru_cell_164/MatMul_1/ReadVariableOp$gru_cell_164/MatMul_1/ReadVariableOp2:
gru_cell_164/ReadVariableOpgru_cell_164/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
K__inference_sequential_164_layer_call_and_return_conditional_losses_1077888

inputs
gru_164_1077875
gru_164_1077877
gru_164_1077879
dense_164_1077882
dense_164_1077884
identity��!dense_164/StatefulPartitionedCall�gru_164/StatefulPartitionedCall�
gru_164/StatefulPartitionedCallStatefulPartitionedCallinputsgru_164_1077875gru_164_1077877gru_164_1077879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_gru_164_layer_call_and_return_conditional_losses_10776412!
gru_164/StatefulPartitionedCall�
!dense_164/StatefulPartitionedCallStatefulPartitionedCall(gru_164/StatefulPartitionedCall:output:0dense_164_1077882dense_164_1077884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_10778362#
!dense_164/StatefulPartitionedCall�
IdentityIdentity*dense_164/StatefulPartitionedCall:output:0"^dense_164/StatefulPartitionedCall ^gru_164/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2B
gru_164/StatefulPartitionedCallgru_164/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
K__inference_sequential_164_layer_call_and_return_conditional_losses_1077869
gru_164_input
gru_164_1077856
gru_164_1077858
gru_164_1077860
dense_164_1077863
dense_164_1077865
identity��!dense_164/StatefulPartitionedCall�gru_164/StatefulPartitionedCall�
gru_164/StatefulPartitionedCallStatefulPartitionedCallgru_164_inputgru_164_1077856gru_164_1077858gru_164_1077860*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_gru_164_layer_call_and_return_conditional_losses_10777962!
gru_164/StatefulPartitionedCall�
!dense_164/StatefulPartitionedCallStatefulPartitionedCall(gru_164/StatefulPartitionedCall:output:0dense_164_1077863dense_164_1077865*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_164_layer_call_and_return_conditional_losses_10778362#
!dense_164/StatefulPartitionedCall�
IdentityIdentity*dense_164/StatefulPartitionedCall:output:0"^dense_164/StatefulPartitionedCall ^gru_164/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::2F
!dense_164/StatefulPartitionedCall!dense_164/StatefulPartitionedCall2B
gru_164/StatefulPartitionedCallgru_164/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namegru_164_input
�=
�
D__inference_gru_164_layer_call_and_return_conditional_losses_1077474

inputs
gru_cell_164_1077398
gru_cell_164_1077400
gru_cell_164_1077402
identity��$gru_cell_164/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :�2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
$gru_cell_164/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_164_1077398gru_cell_164_1077400gru_cell_164_1077402*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������2:���������2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_10770332&
$gru_cell_164/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_164_1077398gru_cell_164_1077400gru_cell_164_1077402*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_1077410*
condR
while_cond_1077409*8
output_shapes'
%: : : : :���������2: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����2   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime�
IdentityIdentitystrided_slice_3:output:0%^gru_cell_164/StatefulPartitionedCall^while*
T0*'
_output_shapes
:���������22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:������������������:::2L
$gru_cell_164/StatefulPartitionedCall$gru_cell_164/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_1077552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_1077552___redundant_placeholder05
1while_while_cond_1077552___redundant_placeholder15
1while_while_cond_1077552___redundant_placeholder25
1while_while_cond_1077552___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*@
_input_shapes/
-: : : : :���������2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������2:

_output_shapes
: :

_output_shapes
:
�
�
%__inference_signature_wrapper_1077957
gru_164_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallgru_164_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_10769252
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:���������:::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namegru_164_input
�	
�
F__inference_dense_164_layer_call_and_return_conditional_losses_1078983

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
gru_164_input:
serving_default_gru_164_input:0���������=
	dense_1640
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�!
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
E_default_save_signature
*F&call_and_return_all_conditional_losses
G__call__"�
_tf_keras_sequential�{"class_name": "Sequential", "name": "sequential_164", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_164", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_164_input"}}, {"class_name": "GRU", "config": {"name": "gru_164", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}, {"class_name": "Dense", "config": {"name": "dense_164", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 3]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_164", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_164_input"}}, {"class_name": "GRU", "config": {"name": "gru_164", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}, {"class_name": "Dense", "config": {"name": "dense_164", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mae", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
	cell


state_spec
regularization_losses
trainable_variables
	variables
	keras_api
*H&call_and_return_all_conditional_losses
I__call__"�
_tf_keras_rnn_layer�
{"class_name": "GRU", "name": "gru_164", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_164", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 3]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 3]}}
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*J&call_and_return_all_conditional_losses
K__call__"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_164", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_164", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
�
iter

beta_1

beta_2
	decay
learning_ratem;m<m=m>m?v@vAvBvCvD"
	optimizer
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
�

layers
regularization_losses
trainable_variables
	variables
layer_metrics
non_trainable_variables
 metrics
!layer_regularization_losses
G__call__
E_default_save_signature
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
,
Lserving_default"
signature_map
�

kernel
recurrent_kernel
bias
"regularization_losses
#trainable_variables
$	variables
%	keras_api
*M&call_and_return_all_conditional_losses
N__call__"�
_tf_keras_layer�{"class_name": "GRUCell", "name": "gru_cell_164", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_cell_164", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
�

&layers
regularization_losses
trainable_variables
	variables
'non_trainable_variables
(layer_metrics

)states
*metrics
+layer_regularization_losses
I__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
": 22dense_164/kernel
:2dense_164/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�

,layers
regularization_losses
trainable_variables
	variables
-layer_metrics
.non_trainable_variables
/metrics
0layer_regularization_losses
K__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	�2gru_164/gru_cell_164/kernel
8:6	2�2%gru_164/gru_cell_164/recurrent_kernel
,:*	�2gru_164/gru_cell_164/bias
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
�

2layers
"regularization_losses
#trainable_variables
$	variables
3layer_metrics
4non_trainable_variables
5metrics
6layer_regularization_losses
N__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
'
	0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	7total
	8count
9	variables
:	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
70
81"
trackable_list_wrapper
-
9	variables"
_generic_user_object
':%22Adam/dense_164/kernel/m
!:2Adam/dense_164/bias/m
3:1	�2"Adam/gru_164/gru_cell_164/kernel/m
=:;	2�2,Adam/gru_164/gru_cell_164/recurrent_kernel/m
1:/	�2 Adam/gru_164/gru_cell_164/bias/m
':%22Adam/dense_164/kernel/v
!:2Adam/dense_164/bias/v
3:1	�2"Adam/gru_164/gru_cell_164/kernel/v
=:;	2�2,Adam/gru_164/gru_cell_164/recurrent_kernel/v
1:/	�2 Adam/gru_164/gru_cell_164/bias/v
�2�
"__inference__wrapped_model_1076925�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *0�-
+�(
gru_164_input���������
�2�
K__inference_sequential_164_layer_call_and_return_conditional_losses_1078279
K__inference_sequential_164_layer_call_and_return_conditional_losses_1078118
K__inference_sequential_164_layer_call_and_return_conditional_losses_1077853
K__inference_sequential_164_layer_call_and_return_conditional_losses_1077869�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
0__inference_sequential_164_layer_call_fn_1078294
0__inference_sequential_164_layer_call_fn_1077932
0__inference_sequential_164_layer_call_fn_1077901
0__inference_sequential_164_layer_call_fn_1078309�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_gru_164_layer_call_and_return_conditional_losses_1078464
D__inference_gru_164_layer_call_and_return_conditional_losses_1078619
D__inference_gru_164_layer_call_and_return_conditional_losses_1078796
D__inference_gru_164_layer_call_and_return_conditional_losses_1078951�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
)__inference_gru_164_layer_call_fn_1078641
)__inference_gru_164_layer_call_fn_1078962
)__inference_gru_164_layer_call_fn_1078973
)__inference_gru_164_layer_call_fn_1078630�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dense_164_layer_call_and_return_conditional_losses_1078983�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_164_layer_call_fn_1078992�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_1077957gru_164_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_1079068
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_1079030�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
.__inference_gru_cell_164_layer_call_fn_1079096
.__inference_gru_cell_164_layer_call_fn_1079082�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
"__inference__wrapped_model_1076925z:�7
0�-
+�(
gru_164_input���������
� "5�2
0
	dense_164#� 
	dense_164����������
F__inference_dense_164_layer_call_and_return_conditional_losses_1078983\/�,
%�"
 �
inputs���������2
� "%�"
�
0���������
� ~
+__inference_dense_164_layer_call_fn_1078992O/�,
%�"
 �
inputs���������2
� "�����������
D__inference_gru_164_layer_call_and_return_conditional_losses_1078464}O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"
�
0���������2
� �
D__inference_gru_164_layer_call_and_return_conditional_losses_1078619}O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"
�
0���������2
� �
D__inference_gru_164_layer_call_and_return_conditional_losses_1078796m?�<
5�2
$�!
inputs���������

 
p

 
� "%�"
�
0���������2
� �
D__inference_gru_164_layer_call_and_return_conditional_losses_1078951m?�<
5�2
$�!
inputs���������

 
p 

 
� "%�"
�
0���������2
� �
)__inference_gru_164_layer_call_fn_1078630pO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "����������2�
)__inference_gru_164_layer_call_fn_1078641pO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "����������2�
)__inference_gru_164_layer_call_fn_1078962`?�<
5�2
$�!
inputs���������

 
p

 
� "����������2�
)__inference_gru_164_layer_call_fn_1078973`?�<
5�2
$�!
inputs���������

 
p 

 
� "����������2�
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_1079030�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������2
p
� "R�O
H�E
�
0/0���������2
$�!
�
0/1/0���������2
� �
I__inference_gru_cell_164_layer_call_and_return_conditional_losses_1079068�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������2
p 
� "R�O
H�E
�
0/0���������2
$�!
�
0/1/0���������2
� �
.__inference_gru_cell_164_layer_call_fn_1079082�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������2
p
� "D�A
�
0���������2
"�
�
1/0���������2�
.__inference_gru_cell_164_layer_call_fn_1079096�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������2
p 
� "D�A
�
0���������2
"�
�
1/0���������2�
K__inference_sequential_164_layer_call_and_return_conditional_losses_1077853rB�?
8�5
+�(
gru_164_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_164_layer_call_and_return_conditional_losses_1077869rB�?
8�5
+�(
gru_164_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_164_layer_call_and_return_conditional_losses_1078118k;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_164_layer_call_and_return_conditional_losses_1078279k;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
0__inference_sequential_164_layer_call_fn_1077901eB�?
8�5
+�(
gru_164_input���������
p

 
� "�����������
0__inference_sequential_164_layer_call_fn_1077932eB�?
8�5
+�(
gru_164_input���������
p 

 
� "�����������
0__inference_sequential_164_layer_call_fn_1078294^;�8
1�.
$�!
inputs���������
p

 
� "�����������
0__inference_sequential_164_layer_call_fn_1078309^;�8
1�.
$�!
inputs���������
p 

 
� "�����������
%__inference_signature_wrapper_1077957�K�H
� 
A�>
<
gru_164_input+�(
gru_164_input���������"5�2
0
	dense_164#� 
	dense_164���������