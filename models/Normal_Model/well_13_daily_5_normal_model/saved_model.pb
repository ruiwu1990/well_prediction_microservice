І░
Є▄
B
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
delete_old_dirsbool(ѕ
=
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
І
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
Й
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
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
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
њ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Ђ
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
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
ѕ"serve*2.4.12v2.4.0-49-g85c8b2a817f8ащ
|
dense_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*!
shared_namedense_124/kernel
u
$dense_124/kernel/Read/ReadVariableOpReadVariableOpdense_124/kernel*
_output_shapes

:2*
dtype0
t
dense_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_124/bias
m
"dense_124/bias/Read/ReadVariableOpReadVariableOpdense_124/bias*
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
Њ
gru_124/gru_cell_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ќ*,
shared_namegru_124/gru_cell_124/kernel
ї
/gru_124/gru_cell_124/kernel/Read/ReadVariableOpReadVariableOpgru_124/gru_cell_124/kernel*
_output_shapes
:	ќ*
dtype0
Д
%gru_124/gru_cell_124/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2ќ*6
shared_name'%gru_124/gru_cell_124/recurrent_kernel
а
9gru_124/gru_cell_124/recurrent_kernel/Read/ReadVariableOpReadVariableOp%gru_124/gru_cell_124/recurrent_kernel*
_output_shapes
:	2ќ*
dtype0
Ј
gru_124/gru_cell_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ќ**
shared_namegru_124/gru_cell_124/bias
ѕ
-gru_124/gru_cell_124/bias/Read/ReadVariableOpReadVariableOpgru_124/gru_cell_124/bias*
_output_shapes
:	ќ*
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
і
Adam/dense_124/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_124/kernel/m
Ѓ
+Adam/dense_124/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_124/kernel/m*
_output_shapes

:2*
dtype0
ѓ
Adam/dense_124/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_124/bias/m
{
)Adam/dense_124/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_124/bias/m*
_output_shapes
:*
dtype0
А
"Adam/gru_124/gru_cell_124/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ќ*3
shared_name$"Adam/gru_124/gru_cell_124/kernel/m
џ
6Adam/gru_124/gru_cell_124/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/gru_124/gru_cell_124/kernel/m*
_output_shapes
:	ќ*
dtype0
х
,Adam/gru_124/gru_cell_124/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2ќ*=
shared_name.,Adam/gru_124/gru_cell_124/recurrent_kernel/m
«
@Adam/gru_124/gru_cell_124/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/gru_124/gru_cell_124/recurrent_kernel/m*
_output_shapes
:	2ќ*
dtype0
Ю
 Adam/gru_124/gru_cell_124/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ќ*1
shared_name" Adam/gru_124/gru_cell_124/bias/m
ќ
4Adam/gru_124/gru_cell_124/bias/m/Read/ReadVariableOpReadVariableOp Adam/gru_124/gru_cell_124/bias/m*
_output_shapes
:	ќ*
dtype0
і
Adam/dense_124/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*(
shared_nameAdam/dense_124/kernel/v
Ѓ
+Adam/dense_124/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_124/kernel/v*
_output_shapes

:2*
dtype0
ѓ
Adam/dense_124/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_124/bias/v
{
)Adam/dense_124/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_124/bias/v*
_output_shapes
:*
dtype0
А
"Adam/gru_124/gru_cell_124/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ќ*3
shared_name$"Adam/gru_124/gru_cell_124/kernel/v
џ
6Adam/gru_124/gru_cell_124/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/gru_124/gru_cell_124/kernel/v*
_output_shapes
:	ќ*
dtype0
х
,Adam/gru_124/gru_cell_124/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2ќ*=
shared_name.,Adam/gru_124/gru_cell_124/recurrent_kernel/v
«
@Adam/gru_124/gru_cell_124/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/gru_124/gru_cell_124/recurrent_kernel/v*
_output_shapes
:	2ќ*
dtype0
Ю
 Adam/gru_124/gru_cell_124/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ќ*1
shared_name" Adam/gru_124/gru_cell_124/bias/v
ќ
4Adam/gru_124/gru_cell_124/bias/v/Read/ReadVariableOpReadVariableOp Adam/gru_124/gru_cell_124/bias/v*
_output_shapes
:	ќ*
dtype0

NoOpNoOp
а!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*█ 
valueЛ B╬  BК 
┐
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
џ
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
Г

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
╣

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
VARIABLE_VALUEdense_124/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_124/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Г

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
VARIABLE_VALUEgru_124/gru_cell_124/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%gru_124/gru_cell_124/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEgru_124/gru_cell_124/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
Г

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
VARIABLE_VALUEAdam/dense_124/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_124/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE"Adam/gru_124/gru_cell_124/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Јї
VARIABLE_VALUE,Adam/gru_124/gru_cell_124/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ѓђ
VARIABLE_VALUE Adam/gru_124/gru_cell_124/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_124/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_124/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ёѓ
VARIABLE_VALUE"Adam/gru_124/gru_cell_124/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Јї
VARIABLE_VALUE,Adam/gru_124/gru_cell_124/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѓђ
VARIABLE_VALUE Adam/gru_124/gru_cell_124/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ѕ
serving_default_gru_124_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
├
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_124_inputgru_124/gru_cell_124/biasgru_124/gru_cell_124/kernel%gru_124/gru_cell_124/recurrent_kerneldense_124/kerneldense_124/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference_signature_wrapper_820086
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ё

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_124/kernel/Read/ReadVariableOp"dense_124/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/gru_124/gru_cell_124/kernel/Read/ReadVariableOp9gru_124/gru_cell_124/recurrent_kernel/Read/ReadVariableOp-gru_124/gru_cell_124/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_124/kernel/m/Read/ReadVariableOp)Adam/dense_124/bias/m/Read/ReadVariableOp6Adam/gru_124/gru_cell_124/kernel/m/Read/ReadVariableOp@Adam/gru_124/gru_cell_124/recurrent_kernel/m/Read/ReadVariableOp4Adam/gru_124/gru_cell_124/bias/m/Read/ReadVariableOp+Adam/dense_124/kernel/v/Read/ReadVariableOp)Adam/dense_124/bias/v/Read/ReadVariableOp6Adam/gru_124/gru_cell_124/kernel/v/Read/ReadVariableOp@Adam/gru_124/gru_cell_124/recurrent_kernel/v/Read/ReadVariableOp4Adam/gru_124/gru_cell_124/bias/v/Read/ReadVariableOpConst*#
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
GPU 2J 8ѓ *(
f#R!
__inference__traced_save_821314
╚
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_124/kerneldense_124/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_124/gru_cell_124/kernel%gru_124/gru_cell_124/recurrent_kernelgru_124/gru_cell_124/biastotalcountAdam/dense_124/kernel/mAdam/dense_124/bias/m"Adam/gru_124/gru_cell_124/kernel/m,Adam/gru_124/gru_cell_124/recurrent_kernel/m Adam/gru_124/gru_cell_124/bias/mAdam/dense_124/kernel/vAdam/dense_124/bias/v"Adam/gru_124/gru_cell_124/kernel/v,Adam/gru_124/gru_cell_124/recurrent_kernel/v Adam/gru_124/gru_cell_124/bias/v*"
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
GPU 2J 8ѓ *+
f&R$
"__inference__traced_restore_821390 Њ
іq
├
J__inference_sequential_124_layer_call_and_return_conditional_losses_820408

inputs0
,gru_124_gru_cell_124_readvariableop_resource7
3gru_124_gru_cell_124_matmul_readvariableop_resource9
5gru_124_gru_cell_124_matmul_1_readvariableop_resource,
(dense_124_matmul_readvariableop_resource-
)dense_124_biasadd_readvariableop_resource
identityѕб dense_124/BiasAdd/ReadVariableOpбdense_124/MatMul/ReadVariableOpб*gru_124/gru_cell_124/MatMul/ReadVariableOpб,gru_124/gru_cell_124/MatMul_1/ReadVariableOpб#gru_124/gru_cell_124/ReadVariableOpбgru_124/whileT
gru_124/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_124/Shapeё
gru_124/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_124/strided_slice/stackѕ
gru_124/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_124/strided_slice/stack_1ѕ
gru_124/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_124/strided_slice/stack_2њ
gru_124/strided_sliceStridedSlicegru_124/Shape:output:0$gru_124/strided_slice/stack:output:0&gru_124/strided_slice/stack_1:output:0&gru_124/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_124/strided_slicel
gru_124/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
gru_124/zeros/mul/yї
gru_124/zeros/mulMulgru_124/strided_slice:output:0gru_124/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_124/zeros/mulo
gru_124/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
gru_124/zeros/Less/yЄ
gru_124/zeros/LessLessgru_124/zeros/mul:z:0gru_124/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_124/zeros/Lessr
gru_124/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
gru_124/zeros/packed/1Б
gru_124/zeros/packedPackgru_124/strided_slice:output:0gru_124/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_124/zeros/packedo
gru_124/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_124/zeros/ConstЋ
gru_124/zerosFillgru_124/zeros/packed:output:0gru_124/zeros/Const:output:0*
T0*'
_output_shapes
:         22
gru_124/zerosЁ
gru_124/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_124/transpose/permњ
gru_124/transpose	Transposeinputsgru_124/transpose/perm:output:0*
T0*+
_output_shapes
:         2
gru_124/transposeg
gru_124/Shape_1Shapegru_124/transpose:y:0*
T0*
_output_shapes
:2
gru_124/Shape_1ѕ
gru_124/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_124/strided_slice_1/stackї
gru_124/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_1/stack_1ї
gru_124/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_1/stack_2ъ
gru_124/strided_slice_1StridedSlicegru_124/Shape_1:output:0&gru_124/strided_slice_1/stack:output:0(gru_124/strided_slice_1/stack_1:output:0(gru_124/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_124/strided_slice_1Ћ
#gru_124/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#gru_124/TensorArrayV2/element_shapeм
gru_124/TensorArrayV2TensorListReserve,gru_124/TensorArrayV2/element_shape:output:0 gru_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_124/TensorArrayV2¤
=gru_124/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=gru_124/TensorArrayUnstack/TensorListFromTensor/element_shapeў
/gru_124/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_124/transpose:y:0Fgru_124/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_124/TensorArrayUnstack/TensorListFromTensorѕ
gru_124/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_124/strided_slice_2/stackї
gru_124/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_2/stack_1ї
gru_124/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_2/stack_2г
gru_124/strided_slice_2StridedSlicegru_124/transpose:y:0&gru_124/strided_slice_2/stack:output:0(gru_124/strided_slice_2/stack_1:output:0(gru_124/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
gru_124/strided_slice_2И
#gru_124/gru_cell_124/ReadVariableOpReadVariableOp,gru_124_gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype02%
#gru_124/gru_cell_124/ReadVariableOpФ
gru_124/gru_cell_124/unstackUnpack+gru_124/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
gru_124/gru_cell_124/unstack═
*gru_124/gru_cell_124/MatMul/ReadVariableOpReadVariableOp3gru_124_gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02,
*gru_124/gru_cell_124/MatMul/ReadVariableOp═
gru_124/gru_cell_124/MatMulMatMul gru_124/strided_slice_2:output:02gru_124/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_124/gru_cell_124/MatMul╚
gru_124/gru_cell_124/BiasAddBiasAdd%gru_124/gru_cell_124/MatMul:product:0%gru_124/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
gru_124/gru_cell_124/BiasAddz
gru_124/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_124/gru_cell_124/ConstЌ
$gru_124/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$gru_124/gru_cell_124/split/split_dimђ
gru_124/gru_cell_124/splitSplit-gru_124/gru_cell_124/split/split_dim:output:0%gru_124/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_124/gru_cell_124/splitМ
,gru_124/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp5gru_124_gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02.
,gru_124/gru_cell_124/MatMul_1/ReadVariableOp╔
gru_124/gru_cell_124/MatMul_1MatMulgru_124/zeros:output:04gru_124/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_124/gru_cell_124/MatMul_1╬
gru_124/gru_cell_124/BiasAdd_1BiasAdd'gru_124/gru_cell_124/MatMul_1:product:0%gru_124/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2 
gru_124/gru_cell_124/BiasAdd_1Љ
gru_124/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
gru_124/gru_cell_124/Const_1Џ
&gru_124/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&gru_124/gru_cell_124/split_1/split_dim╝
gru_124/gru_cell_124/split_1SplitV'gru_124/gru_cell_124/BiasAdd_1:output:0%gru_124/gru_cell_124/Const_1:output:0/gru_124/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_124/gru_cell_124/split_1╗
gru_124/gru_cell_124/addAddV2#gru_124/gru_cell_124/split:output:0%gru_124/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/add┐
gru_124/gru_cell_124/add_1AddV2#gru_124/gru_cell_124/split:output:1%gru_124/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/add_1┤
gru_124/gru_cell_124/mulMulgru_124/gru_cell_124/add_1:z:0%gru_124/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/mulХ
gru_124/gru_cell_124/add_2AddV2#gru_124/gru_cell_124/split:output:2gru_124/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/add_2љ
gru_124/gru_cell_124/TanhTanhgru_124/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/TanhД
gru_124/gru_cell_124/mul_1Mulgru_124/gru_cell_124/add:z:0gru_124/zeros:output:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/mul_1}
gru_124/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
gru_124/gru_cell_124/sub/x░
gru_124/gru_cell_124/subSub#gru_124/gru_cell_124/sub/x:output:0gru_124/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/sub«
gru_124/gru_cell_124/mul_2Mulgru_124/gru_cell_124/sub:z:0gru_124/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/mul_2│
gru_124/gru_cell_124/add_3AddV2gru_124/gru_cell_124/mul_1:z:0gru_124/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/add_3Ъ
%gru_124/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2'
%gru_124/TensorArrayV2_1/element_shapeп
gru_124/TensorArrayV2_1TensorListReserve.gru_124/TensorArrayV2_1/element_shape:output:0 gru_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_124/TensorArrayV2_1^
gru_124/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_124/timeЈ
 gru_124/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2"
 gru_124/while/maximum_iterationsz
gru_124/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_124/while/loop_counterЮ
gru_124/whileWhile#gru_124/while/loop_counter:output:0)gru_124/while/maximum_iterations:output:0gru_124/time:output:0 gru_124/TensorArrayV2_1:handle:0gru_124/zeros:output:0 gru_124/strided_slice_1:output:0?gru_124/TensorArrayUnstack/TensorListFromTensor:output_handle:0,gru_124_gru_cell_124_readvariableop_resource3gru_124_gru_cell_124_matmul_readvariableop_resource5gru_124_gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*%
bodyR
gru_124_while_body_820314*%
condR
gru_124_while_cond_820313*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
gru_124/while┼
8gru_124/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2:
8gru_124/TensorArrayV2Stack/TensorListStack/element_shapeѕ
*gru_124/TensorArrayV2Stack/TensorListStackTensorListStackgru_124/while:output:3Agru_124/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype02,
*gru_124/TensorArrayV2Stack/TensorListStackЉ
gru_124/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
gru_124/strided_slice_3/stackї
gru_124/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_124/strided_slice_3/stack_1ї
gru_124/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_3/stack_2╩
gru_124/strided_slice_3StridedSlice3gru_124/TensorArrayV2Stack/TensorListStack:tensor:0&gru_124/strided_slice_3/stack:output:0(gru_124/strided_slice_3/stack_1:output:0(gru_124/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
gru_124/strided_slice_3Ѕ
gru_124/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_124/transpose_1/perm┼
gru_124/transpose_1	Transpose3gru_124/TensorArrayV2Stack/TensorListStack:tensor:0!gru_124/transpose_1/perm:output:0*
T0*+
_output_shapes
:         22
gru_124/transpose_1v
gru_124/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_124/runtimeФ
dense_124/MatMul/ReadVariableOpReadVariableOp(dense_124_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02!
dense_124/MatMul/ReadVariableOpФ
dense_124/MatMulMatMul gru_124/strided_slice_3:output:0'dense_124/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_124/MatMulф
 dense_124/BiasAdd/ReadVariableOpReadVariableOp)dense_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_124/BiasAdd/ReadVariableOpЕ
dense_124/BiasAddBiasAdddense_124/MatMul:product:0(dense_124/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_124/BiasAdd┼
IdentityIdentitydense_124/BiasAdd:output:0!^dense_124/BiasAdd/ReadVariableOp ^dense_124/MatMul/ReadVariableOp+^gru_124/gru_cell_124/MatMul/ReadVariableOp-^gru_124/gru_cell_124/MatMul_1/ReadVariableOp$^gru_124/gru_cell_124/ReadVariableOp^gru_124/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::2D
 dense_124/BiasAdd/ReadVariableOp dense_124/BiasAdd/ReadVariableOp2B
dense_124/MatMul/ReadVariableOpdense_124/MatMul/ReadVariableOp2X
*gru_124/gru_cell_124/MatMul/ReadVariableOp*gru_124/gru_cell_124/MatMul/ReadVariableOp2\
,gru_124/gru_cell_124/MatMul_1/ReadVariableOp,gru_124/gru_cell_124/MatMul_1/ReadVariableOp2J
#gru_124/gru_cell_124/ReadVariableOp#gru_124/gru_cell_124/ReadVariableOp2
gru_124/whilegru_124/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Џ
ј
(__inference_gru_124_layer_call_fn_820770
inputs_0
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_gru_124_layer_call_and_return_conditional_losses_8196032
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
і"
Р
while_body_819539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_gru_cell_124_819561_0
while_gru_cell_124_819563_0
while_gru_cell_124_819565_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_124_819561
while_gru_cell_124_819563
while_gru_cell_124_819565ѕб*while/gru_cell_124/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemи
*while/gru_cell_124/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_124_819561_0while_gru_cell_124_819563_0while_gru_cell_124_819565_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_8191622,
*while/gru_cell_124/StatefulPartitionedCallэ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/gru_cell_124/StatefulPartitionedCall:output:0*
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
while/add_1І
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_124/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identityъ
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_124/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Ї
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_124/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2║
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_124/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3─
while/Identity_4Identity3while/gru_cell_124/StatefulPartitionedCall:output:1+^while/gru_cell_124/StatefulPartitionedCall*
T0*'
_output_shapes
:         22
while/Identity_4"8
while_gru_cell_124_819561while_gru_cell_124_819561_0"8
while_gru_cell_124_819563while_gru_cell_124_819563_0"8
while_gru_cell_124_819565while_gru_cell_124_819565_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2X
*while/gru_cell_124/StatefulPartitionedCall*while/gru_cell_124/StatefulPartitionedCall: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
Л
▒
/__inference_sequential_124_layer_call_fn_820423

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_124_layer_call_and_return_conditional_losses_8200172
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ў
ъ
J__inference_sequential_124_layer_call_and_return_conditional_losses_819998
gru_124_input
gru_124_819985
gru_124_819987
gru_124_819989
dense_124_819992
dense_124_819994
identityѕб!dense_124/StatefulPartitionedCallбgru_124/StatefulPartitionedCallе
gru_124/StatefulPartitionedCallStatefulPartitionedCallgru_124_inputgru_124_819985gru_124_819987gru_124_819989*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_gru_124_layer_call_and_return_conditional_losses_8199252!
gru_124/StatefulPartitionedCall╗
!dense_124/StatefulPartitionedCallStatefulPartitionedCall(gru_124/StatefulPartitionedCall:output:0dense_124_819992dense_124_819994*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_124_layer_call_and_return_conditional_losses_8199652#
!dense_124/StatefulPartitionedCall─
IdentityIdentity*dense_124/StatefulPartitionedCall:output:0"^dense_124/StatefulPartitionedCall ^gru_124/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2B
gru_124/StatefulPartitionedCallgru_124/StatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namegru_124_input
┬Ј
к
!__inference__wrapped_model_819054
gru_124_input?
;sequential_124_gru_124_gru_cell_124_readvariableop_resourceF
Bsequential_124_gru_124_gru_cell_124_matmul_readvariableop_resourceH
Dsequential_124_gru_124_gru_cell_124_matmul_1_readvariableop_resource;
7sequential_124_dense_124_matmul_readvariableop_resource<
8sequential_124_dense_124_biasadd_readvariableop_resource
identityѕб/sequential_124/dense_124/BiasAdd/ReadVariableOpб.sequential_124/dense_124/MatMul/ReadVariableOpб9sequential_124/gru_124/gru_cell_124/MatMul/ReadVariableOpб;sequential_124/gru_124/gru_cell_124/MatMul_1/ReadVariableOpб2sequential_124/gru_124/gru_cell_124/ReadVariableOpбsequential_124/gru_124/whiley
sequential_124/gru_124/ShapeShapegru_124_input*
T0*
_output_shapes
:2
sequential_124/gru_124/Shapeб
*sequential_124/gru_124/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_124/gru_124/strided_slice/stackд
,sequential_124/gru_124/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_124/gru_124/strided_slice/stack_1д
,sequential_124/gru_124/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_124/gru_124/strided_slice/stack_2В
$sequential_124/gru_124/strided_sliceStridedSlice%sequential_124/gru_124/Shape:output:03sequential_124/gru_124/strided_slice/stack:output:05sequential_124/gru_124/strided_slice/stack_1:output:05sequential_124/gru_124/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_124/gru_124/strided_sliceі
"sequential_124/gru_124/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22$
"sequential_124/gru_124/zeros/mul/y╚
 sequential_124/gru_124/zeros/mulMul-sequential_124/gru_124/strided_slice:output:0+sequential_124/gru_124/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_124/gru_124/zeros/mulЇ
#sequential_124/gru_124/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2%
#sequential_124/gru_124/zeros/Less/y├
!sequential_124/gru_124/zeros/LessLess$sequential_124/gru_124/zeros/mul:z:0,sequential_124/gru_124/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_124/gru_124/zeros/Lessљ
%sequential_124/gru_124/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22'
%sequential_124/gru_124/zeros/packed/1▀
#sequential_124/gru_124/zeros/packedPack-sequential_124/gru_124/strided_slice:output:0.sequential_124/gru_124/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_124/gru_124/zeros/packedЇ
"sequential_124/gru_124/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_124/gru_124/zeros/ConstЛ
sequential_124/gru_124/zerosFill,sequential_124/gru_124/zeros/packed:output:0+sequential_124/gru_124/zeros/Const:output:0*
T0*'
_output_shapes
:         22
sequential_124/gru_124/zerosБ
%sequential_124/gru_124/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_124/gru_124/transpose/permк
 sequential_124/gru_124/transpose	Transposegru_124_input.sequential_124/gru_124/transpose/perm:output:0*
T0*+
_output_shapes
:         2"
 sequential_124/gru_124/transposeћ
sequential_124/gru_124/Shape_1Shape$sequential_124/gru_124/transpose:y:0*
T0*
_output_shapes
:2 
sequential_124/gru_124/Shape_1д
,sequential_124/gru_124/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_124/gru_124/strided_slice_1/stackф
.sequential_124/gru_124/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_124/gru_124/strided_slice_1/stack_1ф
.sequential_124/gru_124/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_124/gru_124/strided_slice_1/stack_2Э
&sequential_124/gru_124/strided_slice_1StridedSlice'sequential_124/gru_124/Shape_1:output:05sequential_124/gru_124/strided_slice_1/stack:output:07sequential_124/gru_124/strided_slice_1/stack_1:output:07sequential_124/gru_124/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_124/gru_124/strided_slice_1│
2sequential_124/gru_124/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         24
2sequential_124/gru_124/TensorArrayV2/element_shapeј
$sequential_124/gru_124/TensorArrayV2TensorListReserve;sequential_124/gru_124/TensorArrayV2/element_shape:output:0/sequential_124/gru_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_124/gru_124/TensorArrayV2ь
Lsequential_124/gru_124/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2N
Lsequential_124/gru_124/TensorArrayUnstack/TensorListFromTensor/element_shapeн
>sequential_124/gru_124/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_124/gru_124/transpose:y:0Usequential_124/gru_124/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_124/gru_124/TensorArrayUnstack/TensorListFromTensorд
,sequential_124/gru_124/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_124/gru_124/strided_slice_2/stackф
.sequential_124/gru_124/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_124/gru_124/strided_slice_2/stack_1ф
.sequential_124/gru_124/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_124/gru_124/strided_slice_2/stack_2є
&sequential_124/gru_124/strided_slice_2StridedSlice$sequential_124/gru_124/transpose:y:05sequential_124/gru_124/strided_slice_2/stack:output:07sequential_124/gru_124/strided_slice_2/stack_1:output:07sequential_124/gru_124/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2(
&sequential_124/gru_124/strided_slice_2т
2sequential_124/gru_124/gru_cell_124/ReadVariableOpReadVariableOp;sequential_124_gru_124_gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype024
2sequential_124/gru_124/gru_cell_124/ReadVariableOpп
+sequential_124/gru_124/gru_cell_124/unstackUnpack:sequential_124/gru_124/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2-
+sequential_124/gru_124/gru_cell_124/unstackЩ
9sequential_124/gru_124/gru_cell_124/MatMul/ReadVariableOpReadVariableOpBsequential_124_gru_124_gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02;
9sequential_124/gru_124/gru_cell_124/MatMul/ReadVariableOpЅ
*sequential_124/gru_124/gru_cell_124/MatMulMatMul/sequential_124/gru_124/strided_slice_2:output:0Asequential_124/gru_124/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2,
*sequential_124/gru_124/gru_cell_124/MatMulё
+sequential_124/gru_124/gru_cell_124/BiasAddBiasAdd4sequential_124/gru_124/gru_cell_124/MatMul:product:04sequential_124/gru_124/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2-
+sequential_124/gru_124/gru_cell_124/BiasAddў
)sequential_124/gru_124/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_124/gru_124/gru_cell_124/Constх
3sequential_124/gru_124/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         25
3sequential_124/gru_124/gru_cell_124/split/split_dim╝
)sequential_124/gru_124/gru_cell_124/splitSplit<sequential_124/gru_124/gru_cell_124/split/split_dim:output:04sequential_124/gru_124/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2+
)sequential_124/gru_124/gru_cell_124/splitђ
;sequential_124/gru_124/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOpDsequential_124_gru_124_gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02=
;sequential_124/gru_124/gru_cell_124/MatMul_1/ReadVariableOpЁ
,sequential_124/gru_124/gru_cell_124/MatMul_1MatMul%sequential_124/gru_124/zeros:output:0Csequential_124/gru_124/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2.
,sequential_124/gru_124/gru_cell_124/MatMul_1і
-sequential_124/gru_124/gru_cell_124/BiasAdd_1BiasAdd6sequential_124/gru_124/gru_cell_124/MatMul_1:product:04sequential_124/gru_124/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2/
-sequential_124/gru_124/gru_cell_124/BiasAdd_1»
+sequential_124/gru_124/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2-
+sequential_124/gru_124/gru_cell_124/Const_1╣
5sequential_124/gru_124/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         27
5sequential_124/gru_124/gru_cell_124/split_1/split_dimЄ
+sequential_124/gru_124/gru_cell_124/split_1SplitV6sequential_124/gru_124/gru_cell_124/BiasAdd_1:output:04sequential_124/gru_124/gru_cell_124/Const_1:output:0>sequential_124/gru_124/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2-
+sequential_124/gru_124/gru_cell_124/split_1э
'sequential_124/gru_124/gru_cell_124/addAddV22sequential_124/gru_124/gru_cell_124/split:output:04sequential_124/gru_124/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22)
'sequential_124/gru_124/gru_cell_124/addч
)sequential_124/gru_124/gru_cell_124/add_1AddV22sequential_124/gru_124/gru_cell_124/split:output:14sequential_124/gru_124/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22+
)sequential_124/gru_124/gru_cell_124/add_1­
'sequential_124/gru_124/gru_cell_124/mulMul-sequential_124/gru_124/gru_cell_124/add_1:z:04sequential_124/gru_124/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22)
'sequential_124/gru_124/gru_cell_124/mulЫ
)sequential_124/gru_124/gru_cell_124/add_2AddV22sequential_124/gru_124/gru_cell_124/split:output:2+sequential_124/gru_124/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22+
)sequential_124/gru_124/gru_cell_124/add_2й
(sequential_124/gru_124/gru_cell_124/TanhTanh-sequential_124/gru_124/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22*
(sequential_124/gru_124/gru_cell_124/Tanhс
)sequential_124/gru_124/gru_cell_124/mul_1Mul+sequential_124/gru_124/gru_cell_124/add:z:0%sequential_124/gru_124/zeros:output:0*
T0*'
_output_shapes
:         22+
)sequential_124/gru_124/gru_cell_124/mul_1Џ
)sequential_124/gru_124/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2+
)sequential_124/gru_124/gru_cell_124/sub/xВ
'sequential_124/gru_124/gru_cell_124/subSub2sequential_124/gru_124/gru_cell_124/sub/x:output:0+sequential_124/gru_124/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22)
'sequential_124/gru_124/gru_cell_124/subЖ
)sequential_124/gru_124/gru_cell_124/mul_2Mul+sequential_124/gru_124/gru_cell_124/sub:z:0,sequential_124/gru_124/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22+
)sequential_124/gru_124/gru_cell_124/mul_2№
)sequential_124/gru_124/gru_cell_124/add_3AddV2-sequential_124/gru_124/gru_cell_124/mul_1:z:0-sequential_124/gru_124/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22+
)sequential_124/gru_124/gru_cell_124/add_3й
4sequential_124/gru_124/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   26
4sequential_124/gru_124/TensorArrayV2_1/element_shapeћ
&sequential_124/gru_124/TensorArrayV2_1TensorListReserve=sequential_124/gru_124/TensorArrayV2_1/element_shape:output:0/sequential_124/gru_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_124/gru_124/TensorArrayV2_1|
sequential_124/gru_124/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_124/gru_124/timeГ
/sequential_124/gru_124/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         21
/sequential_124/gru_124/while/maximum_iterationsў
)sequential_124/gru_124/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_124/gru_124/while/loop_counter№
sequential_124/gru_124/whileWhile2sequential_124/gru_124/while/loop_counter:output:08sequential_124/gru_124/while/maximum_iterations:output:0$sequential_124/gru_124/time:output:0/sequential_124/gru_124/TensorArrayV2_1:handle:0%sequential_124/gru_124/zeros:output:0/sequential_124/gru_124/strided_slice_1:output:0Nsequential_124/gru_124/TensorArrayUnstack/TensorListFromTensor:output_handle:0;sequential_124_gru_124_gru_cell_124_readvariableop_resourceBsequential_124_gru_124_gru_cell_124_matmul_readvariableop_resourceDsequential_124_gru_124_gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*4
body,R*
(sequential_124_gru_124_while_body_818960*4
cond,R*
(sequential_124_gru_124_while_cond_818959*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
sequential_124/gru_124/whileс
Gsequential_124/gru_124/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2I
Gsequential_124/gru_124/TensorArrayV2Stack/TensorListStack/element_shape─
9sequential_124/gru_124/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_124/gru_124/while:output:3Psequential_124/gru_124/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype02;
9sequential_124/gru_124/TensorArrayV2Stack/TensorListStack»
,sequential_124/gru_124/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2.
,sequential_124/gru_124/strided_slice_3/stackф
.sequential_124/gru_124/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_124/gru_124/strided_slice_3/stack_1ф
.sequential_124/gru_124/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_124/gru_124/strided_slice_3/stack_2ц
&sequential_124/gru_124/strided_slice_3StridedSliceBsequential_124/gru_124/TensorArrayV2Stack/TensorListStack:tensor:05sequential_124/gru_124/strided_slice_3/stack:output:07sequential_124/gru_124/strided_slice_3/stack_1:output:07sequential_124/gru_124/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2(
&sequential_124/gru_124/strided_slice_3Д
'sequential_124/gru_124/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_124/gru_124/transpose_1/permЂ
"sequential_124/gru_124/transpose_1	TransposeBsequential_124/gru_124/TensorArrayV2Stack/TensorListStack:tensor:00sequential_124/gru_124/transpose_1/perm:output:0*
T0*+
_output_shapes
:         22$
"sequential_124/gru_124/transpose_1ћ
sequential_124/gru_124/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_124/gru_124/runtimeп
.sequential_124/dense_124/MatMul/ReadVariableOpReadVariableOp7sequential_124_dense_124_matmul_readvariableop_resource*
_output_shapes

:2*
dtype020
.sequential_124/dense_124/MatMul/ReadVariableOpу
sequential_124/dense_124/MatMulMatMul/sequential_124/gru_124/strided_slice_3:output:06sequential_124/dense_124/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2!
sequential_124/dense_124/MatMulО
/sequential_124/dense_124/BiasAdd/ReadVariableOpReadVariableOp8sequential_124_dense_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_124/dense_124/BiasAdd/ReadVariableOpт
 sequential_124/dense_124/BiasAddBiasAdd)sequential_124/dense_124/MatMul:product:07sequential_124/dense_124/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2"
 sequential_124/dense_124/BiasAdd«
IdentityIdentity)sequential_124/dense_124/BiasAdd:output:00^sequential_124/dense_124/BiasAdd/ReadVariableOp/^sequential_124/dense_124/MatMul/ReadVariableOp:^sequential_124/gru_124/gru_cell_124/MatMul/ReadVariableOp<^sequential_124/gru_124/gru_cell_124/MatMul_1/ReadVariableOp3^sequential_124/gru_124/gru_cell_124/ReadVariableOp^sequential_124/gru_124/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::2b
/sequential_124/dense_124/BiasAdd/ReadVariableOp/sequential_124/dense_124/BiasAdd/ReadVariableOp2`
.sequential_124/dense_124/MatMul/ReadVariableOp.sequential_124/dense_124/MatMul/ReadVariableOp2v
9sequential_124/gru_124/gru_cell_124/MatMul/ReadVariableOp9sequential_124/gru_124/gru_cell_124/MatMul/ReadVariableOp2z
;sequential_124/gru_124/gru_cell_124/MatMul_1/ReadVariableOp;sequential_124/gru_124/gru_cell_124/MatMul_1/ReadVariableOp2h
2sequential_124/gru_124/gru_cell_124/ReadVariableOp2sequential_124/gru_124/gru_cell_124/ReadVariableOp2<
sequential_124/gru_124/whilesequential_124/gru_124/while:Z V
+
_output_shapes
:         
'
_user_specified_namegru_124_input
л
ф
while_cond_819538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_819538___redundant_placeholder04
0while_while_cond_819538___redundant_placeholder14
0while_while_cond_819538___redundant_placeholder24
0while_while_cond_819538___redundant_placeholder3
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
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
ы7
▓

__inference__traced_save_821314
file_prefix/
+savev2_dense_124_kernel_read_readvariableop-
)savev2_dense_124_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_gru_124_gru_cell_124_kernel_read_readvariableopD
@savev2_gru_124_gru_cell_124_recurrent_kernel_read_readvariableop8
4savev2_gru_124_gru_cell_124_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_124_kernel_m_read_readvariableop4
0savev2_adam_dense_124_bias_m_read_readvariableopA
=savev2_adam_gru_124_gru_cell_124_kernel_m_read_readvariableopK
Gsavev2_adam_gru_124_gru_cell_124_recurrent_kernel_m_read_readvariableop?
;savev2_adam_gru_124_gru_cell_124_bias_m_read_readvariableop6
2savev2_adam_dense_124_kernel_v_read_readvariableop4
0savev2_adam_dense_124_bias_v_read_readvariableopA
=savev2_adam_gru_124_gru_cell_124_kernel_v_read_readvariableopK
Gsavev2_adam_gru_124_gru_cell_124_recurrent_kernel_v_read_readvariableop?
;savev2_adam_gru_124_gru_cell_124_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
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
Const_1І
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
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameќ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*е
valueъBЏB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesХ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЙ

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_124_kernel_read_readvariableop)savev2_dense_124_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_gru_124_gru_cell_124_kernel_read_readvariableop@savev2_gru_124_gru_cell_124_recurrent_kernel_read_readvariableop4savev2_gru_124_gru_cell_124_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_124_kernel_m_read_readvariableop0savev2_adam_dense_124_bias_m_read_readvariableop=savev2_adam_gru_124_gru_cell_124_kernel_m_read_readvariableopGsavev2_adam_gru_124_gru_cell_124_recurrent_kernel_m_read_readvariableop;savev2_adam_gru_124_gru_cell_124_bias_m_read_readvariableop2savev2_adam_dense_124_kernel_v_read_readvariableop0savev2_adam_dense_124_bias_v_read_readvariableop=savev2_adam_gru_124_gru_cell_124_kernel_v_read_readvariableopGsavev2_adam_gru_124_gru_cell_124_recurrent_kernel_v_read_readvariableop;savev2_adam_gru_124_gru_cell_124_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
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

identity_1Identity_1:output:0*║
_input_shapesе
Ц: :2:: : : : : :	ќ:	2ќ:	ќ: : :2::	ќ:	2ќ:	ќ:2::	ќ:	2ќ:	ќ: 2(
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
:	ќ:%	!

_output_shapes
:	2ќ:%
!

_output_shapes
:	ќ:
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
:	ќ:%!

_output_shapes
:	2ќ:%!

_output_shapes
:	ќ:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	ќ:%!

_output_shapes
:	2ќ:%!

_output_shapes
:	ќ:

_output_shapes
: 
л
ф
while_cond_820504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_820504___redundant_placeholder04
0while_while_cond_820504___redundant_placeholder14
0while_while_cond_820504___redundant_placeholder24
0while_while_cond_820504___redundant_placeholder3
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
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
Ѓ
»
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_821197

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ѕбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpбReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	ќ*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2	
unstackј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ќ2	
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
         2
split/split_dimг
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
splitћ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ќ2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
split_1/split_dimМ
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:         22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         22
TanhZ
mul_1Muladd:z:0states_0*
T0*'
_output_shapes
:         22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:         22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         22
add_3а
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:         22

Identityц

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:         22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:         :         2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0
л
ф
while_cond_819836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_819836___redundant_placeholder04
0while_while_cond_819836___redundant_placeholder14
0while_while_cond_819836___redundant_placeholder24
0while_while_cond_819836___redundant_placeholder3
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
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
э<
▄
C__inference_gru_124_layer_call_and_return_conditional_losses_819485

inputs
gru_cell_124_819409
gru_cell_124_819411
gru_cell_124_819413
identityѕб$gru_cell_124/StatefulPartitionedCallбwhileD
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
strided_slice/stack_2Р
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
B :У2
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
zeros/packed/1Ѓ
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
:         22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
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
strided_slice_1/stack_2Ь
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Ё
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
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
strided_slice_2/stack_2Ч
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2Ш
$gru_cell_124/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_124_819409gru_cell_124_819411gru_cell_124_819413*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_8191242&
$gru_cell_124/StatefulPartitionedCallЈ
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2
TensorArrayV2_1/element_shapeИ
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЖ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_124_819409gru_cell_124_819411gru_cell_124_819413*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_819421*
condR
while_cond_819420*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   22
0TensorArrayV2Stack/TensorListStack/element_shapeы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2џ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm«
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЏ
IdentityIdentitystrided_slice_3:output:0%^gru_cell_124/StatefulPartitionedCall^while*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::2L
$gru_cell_124/StatefulPartitionedCall$gru_cell_124/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
»F
и
while_body_820660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_124_readvariableop_resource_07
3while_gru_cell_124_matmul_readvariableop_resource_09
5while_gru_cell_124_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_124_readvariableop_resource5
1while_gru_cell_124_matmul_readvariableop_resource7
3while_gru_cell_124_matmul_1_readvariableop_resourceѕб(while/gru_cell_124/MatMul/ReadVariableOpб*while/gru_cell_124/MatMul_1/ReadVariableOpб!while/gru_cell_124/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem┤
!while/gru_cell_124/ReadVariableOpReadVariableOp,while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02#
!while/gru_cell_124/ReadVariableOpЦ
while/gru_cell_124/unstackUnpack)while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
while/gru_cell_124/unstack╔
(while/gru_cell_124/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02*
(while/gru_cell_124/MatMul/ReadVariableOpО
while/gru_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul└
while/gru_cell_124/BiasAddBiasAdd#while/gru_cell_124/MatMul:product:0#while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAddv
while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_124/ConstЊ
"while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"while/gru_cell_124/split/split_dimЭ
while/gru_cell_124/splitSplit+while/gru_cell_124/split/split_dim:output:0#while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split¤
*while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype02,
*while/gru_cell_124/MatMul_1/ReadVariableOp└
while/gru_cell_124/MatMul_1MatMulwhile_placeholder_22while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul_1к
while/gru_cell_124/BiasAdd_1BiasAdd%while/gru_cell_124/MatMul_1:product:0#while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAdd_1Ї
while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
while/gru_cell_124/Const_1Ќ
$while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$while/gru_cell_124/split_1/split_dim▓
while/gru_cell_124/split_1SplitV%while/gru_cell_124/BiasAdd_1:output:0#while/gru_cell_124/Const_1:output:0-while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split_1│
while/gru_cell_124/addAddV2!while/gru_cell_124/split:output:0#while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/addи
while/gru_cell_124/add_1AddV2!while/gru_cell_124/split:output:1#while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_1г
while/gru_cell_124/mulMulwhile/gru_cell_124/add_1:z:0#while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul«
while/gru_cell_124/add_2AddV2!while/gru_cell_124/split:output:2while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_2і
while/gru_cell_124/TanhTanhwhile/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/Tanhъ
while/gru_cell_124/mul_1Mulwhile/gru_cell_124/add:z:0while_placeholder_2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_1y
while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
while/gru_cell_124/sub/xе
while/gru_cell_124/subSub!while/gru_cell_124/sub/x:output:0while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/subд
while/gru_cell_124/mul_2Mulwhile/gru_cell_124/sub:z:0while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_2Ф
while/gru_cell_124/add_3AddV2while/gru_cell_124/mul_1:z:0while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_3Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_124/add_3:z:0*
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
while/add_1┌
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityь
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1▄
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ѕ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identitywhile/gru_cell_124/add_3:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22
while/Identity_4"l
3while_gru_cell_124_matmul_1_readvariableop_resource5while_gru_cell_124_matmul_1_readvariableop_resource_0"h
1while_gru_cell_124_matmul_readvariableop_resource3while_gru_cell_124_matmul_readvariableop_resource_0"Z
*while_gru_cell_124_readvariableop_resource,while_gru_cell_124_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2T
(while/gru_cell_124/MatMul/ReadVariableOp(while/gru_cell_124/MatMul/ReadVariableOp2X
*while/gru_cell_124/MatMul_1/ReadVariableOp*while/gru_cell_124/MatMul_1/ReadVariableOp2F
!while/gru_cell_124/ReadVariableOp!while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
»F
и
while_body_819837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_124_readvariableop_resource_07
3while_gru_cell_124_matmul_readvariableop_resource_09
5while_gru_cell_124_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_124_readvariableop_resource5
1while_gru_cell_124_matmul_readvariableop_resource7
3while_gru_cell_124_matmul_1_readvariableop_resourceѕб(while/gru_cell_124/MatMul/ReadVariableOpб*while/gru_cell_124/MatMul_1/ReadVariableOpб!while/gru_cell_124/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem┤
!while/gru_cell_124/ReadVariableOpReadVariableOp,while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02#
!while/gru_cell_124/ReadVariableOpЦ
while/gru_cell_124/unstackUnpack)while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
while/gru_cell_124/unstack╔
(while/gru_cell_124/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02*
(while/gru_cell_124/MatMul/ReadVariableOpО
while/gru_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul└
while/gru_cell_124/BiasAddBiasAdd#while/gru_cell_124/MatMul:product:0#while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAddv
while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_124/ConstЊ
"while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"while/gru_cell_124/split/split_dimЭ
while/gru_cell_124/splitSplit+while/gru_cell_124/split/split_dim:output:0#while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split¤
*while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype02,
*while/gru_cell_124/MatMul_1/ReadVariableOp└
while/gru_cell_124/MatMul_1MatMulwhile_placeholder_22while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul_1к
while/gru_cell_124/BiasAdd_1BiasAdd%while/gru_cell_124/MatMul_1:product:0#while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAdd_1Ї
while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
while/gru_cell_124/Const_1Ќ
$while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$while/gru_cell_124/split_1/split_dim▓
while/gru_cell_124/split_1SplitV%while/gru_cell_124/BiasAdd_1:output:0#while/gru_cell_124/Const_1:output:0-while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split_1│
while/gru_cell_124/addAddV2!while/gru_cell_124/split:output:0#while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/addи
while/gru_cell_124/add_1AddV2!while/gru_cell_124/split:output:1#while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_1г
while/gru_cell_124/mulMulwhile/gru_cell_124/add_1:z:0#while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul«
while/gru_cell_124/add_2AddV2!while/gru_cell_124/split:output:2while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_2і
while/gru_cell_124/TanhTanhwhile/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/Tanhъ
while/gru_cell_124/mul_1Mulwhile/gru_cell_124/add:z:0while_placeholder_2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_1y
while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
while/gru_cell_124/sub/xе
while/gru_cell_124/subSub!while/gru_cell_124/sub/x:output:0while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/subд
while/gru_cell_124/mul_2Mulwhile/gru_cell_124/sub:z:0while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_2Ф
while/gru_cell_124/add_3AddV2while/gru_cell_124/mul_1:z:0while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_3Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_124/add_3:z:0*
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
while/add_1┌
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityь
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1▄
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ѕ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identitywhile/gru_cell_124/add_3:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22
while/Identity_4"l
3while_gru_cell_124_matmul_1_readvariableop_resource5while_gru_cell_124_matmul_1_readvariableop_resource_0"h
1while_gru_cell_124_matmul_readvariableop_resource3while_gru_cell_124_matmul_readvariableop_resource_0"Z
*while_gru_cell_124_readvariableop_resource,while_gru_cell_124_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2T
(while/gru_cell_124/MatMul/ReadVariableOp(while/gru_cell_124/MatMul/ReadVariableOp2X
*while/gru_cell_124/MatMul_1/ReadVariableOp*while/gru_cell_124/MatMul_1/ReadVariableOp2F
!while/gru_cell_124/ReadVariableOp!while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
»F
и
while_body_820505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_124_readvariableop_resource_07
3while_gru_cell_124_matmul_readvariableop_resource_09
5while_gru_cell_124_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_124_readvariableop_resource5
1while_gru_cell_124_matmul_readvariableop_resource7
3while_gru_cell_124_matmul_1_readvariableop_resourceѕб(while/gru_cell_124/MatMul/ReadVariableOpб*while/gru_cell_124/MatMul_1/ReadVariableOpб!while/gru_cell_124/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem┤
!while/gru_cell_124/ReadVariableOpReadVariableOp,while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02#
!while/gru_cell_124/ReadVariableOpЦ
while/gru_cell_124/unstackUnpack)while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
while/gru_cell_124/unstack╔
(while/gru_cell_124/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02*
(while/gru_cell_124/MatMul/ReadVariableOpО
while/gru_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul└
while/gru_cell_124/BiasAddBiasAdd#while/gru_cell_124/MatMul:product:0#while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAddv
while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_124/ConstЊ
"while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"while/gru_cell_124/split/split_dimЭ
while/gru_cell_124/splitSplit+while/gru_cell_124/split/split_dim:output:0#while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split¤
*while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype02,
*while/gru_cell_124/MatMul_1/ReadVariableOp└
while/gru_cell_124/MatMul_1MatMulwhile_placeholder_22while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul_1к
while/gru_cell_124/BiasAdd_1BiasAdd%while/gru_cell_124/MatMul_1:product:0#while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAdd_1Ї
while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
while/gru_cell_124/Const_1Ќ
$while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$while/gru_cell_124/split_1/split_dim▓
while/gru_cell_124/split_1SplitV%while/gru_cell_124/BiasAdd_1:output:0#while/gru_cell_124/Const_1:output:0-while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split_1│
while/gru_cell_124/addAddV2!while/gru_cell_124/split:output:0#while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/addи
while/gru_cell_124/add_1AddV2!while/gru_cell_124/split:output:1#while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_1г
while/gru_cell_124/mulMulwhile/gru_cell_124/add_1:z:0#while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul«
while/gru_cell_124/add_2AddV2!while/gru_cell_124/split:output:2while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_2і
while/gru_cell_124/TanhTanhwhile/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/Tanhъ
while/gru_cell_124/mul_1Mulwhile/gru_cell_124/add:z:0while_placeholder_2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_1y
while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
while/gru_cell_124/sub/xе
while/gru_cell_124/subSub!while/gru_cell_124/sub/x:output:0while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/subд
while/gru_cell_124/mul_2Mulwhile/gru_cell_124/sub:z:0while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_2Ф
while/gru_cell_124/add_3AddV2while/gru_cell_124/mul_1:z:0while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_3Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_124/add_3:z:0*
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
while/add_1┌
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityь
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1▄
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ѕ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identitywhile/gru_cell_124/add_3:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22
while/Identity_4"l
3while_gru_cell_124_matmul_1_readvariableop_resource5while_gru_cell_124_matmul_1_readvariableop_resource_0"h
1while_gru_cell_124_matmul_readvariableop_resource3while_gru_cell_124_matmul_readvariableop_resource_0"Z
*while_gru_cell_124_readvariableop_resource,while_gru_cell_124_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2T
(while/gru_cell_124/MatMul/ReadVariableOp(while/gru_cell_124/MatMul/ReadVariableOp2X
*while/gru_cell_124/MatMul_1/ReadVariableOp*while/gru_cell_124/MatMul_1/ReadVariableOp2F
!while/gru_cell_124/ReadVariableOp!while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
л
ф
while_cond_820991
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_820991___redundant_placeholder04
0while_while_cond_820991___redundant_placeholder14
0while_while_cond_820991___redundant_placeholder24
0while_while_cond_820991___redundant_placeholder3
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
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
УY
Р
C__inference_gru_124_layer_call_and_return_conditional_losses_820925

inputs(
$gru_cell_124_readvariableop_resource/
+gru_cell_124_matmul_readvariableop_resource1
-gru_cell_124_matmul_1_readvariableop_resource
identityѕб"gru_cell_124/MatMul/ReadVariableOpб$gru_cell_124/MatMul_1/ReadVariableOpбgru_cell_124/ReadVariableOpбwhileD
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
strided_slice/stack_2Р
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
B :У2
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
zeros/packed/1Ѓ
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
:         22
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
:         2
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
strided_slice_1/stack_2Ь
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Ё
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
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
strided_slice_2/stack_2Ч
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2а
gru_cell_124/ReadVariableOpReadVariableOp$gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
gru_cell_124/ReadVariableOpЊ
gru_cell_124/unstackUnpack#gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
gru_cell_124/unstackх
"gru_cell_124/MatMul/ReadVariableOpReadVariableOp+gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02$
"gru_cell_124/MatMul/ReadVariableOpГ
gru_cell_124/MatMulMatMulstrided_slice_2:output:0*gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMulе
gru_cell_124/BiasAddBiasAddgru_cell_124/MatMul:product:0gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAddj
gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_124/ConstЄ
gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
gru_cell_124/split/split_dimЯ
gru_cell_124/splitSplit%gru_cell_124/split/split_dim:output:0gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split╗
$gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02&
$gru_cell_124/MatMul_1/ReadVariableOpЕ
gru_cell_124/MatMul_1MatMulzeros:output:0,gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMul_1«
gru_cell_124/BiasAdd_1BiasAddgru_cell_124/MatMul_1:product:0gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAdd_1Ђ
gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
gru_cell_124/Const_1І
gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
gru_cell_124/split_1/split_dimћ
gru_cell_124/split_1SplitVgru_cell_124/BiasAdd_1:output:0gru_cell_124/Const_1:output:0'gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split_1Џ
gru_cell_124/addAddV2gru_cell_124/split:output:0gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/addЪ
gru_cell_124/add_1AddV2gru_cell_124/split:output:1gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
gru_cell_124/add_1ћ
gru_cell_124/mulMulgru_cell_124/add_1:z:0gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
gru_cell_124/mulќ
gru_cell_124/add_2AddV2gru_cell_124/split:output:2gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_2x
gru_cell_124/TanhTanhgru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/TanhЄ
gru_cell_124/mul_1Mulgru_cell_124/add:z:0zeros:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_1m
gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
gru_cell_124/sub/xљ
gru_cell_124/subSubgru_cell_124/sub/x:output:0gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/subј
gru_cell_124/mul_2Mulgru_cell_124/sub:z:0gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_2Њ
gru_cell_124/add_3AddV2gru_cell_124/mul_1:z:0gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_3Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2
TensorArrayV2_1/element_shapeИ
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterГ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_124_readvariableop_resource+gru_cell_124_matmul_readvariableop_resource-gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_820837*
condR
while_cond_820836*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   22
0TensorArrayV2Stack/TensorListStack/element_shapeУ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2џ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЦ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeя
IdentityIdentitystrided_slice_3:output:0#^gru_cell_124/MatMul/ReadVariableOp%^gru_cell_124/MatMul_1/ReadVariableOp^gru_cell_124/ReadVariableOp^while*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::2H
"gru_cell_124/MatMul/ReadVariableOp"gru_cell_124/MatMul/ReadVariableOp2L
$gru_cell_124/MatMul_1/ReadVariableOp$gru_cell_124/MatMul_1/ReadVariableOp2:
gru_cell_124/ReadVariableOpgru_cell_124/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ч
Г
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_819124

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ѕбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpбReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	ќ*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2	
unstackј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ќ2	
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
         2
split/split_dimг
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
splitћ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ќ2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
split_1/split_dimМ
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:         22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         22
TanhX
mul_1Muladd:z:0states*
T0*'
_output_shapes
:         22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:         22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         22
add_3а
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:         22

Identityц

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:         22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:         :         2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates
Ѓ
ї
(__inference_gru_124_layer_call_fn_821102

inputs
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_gru_124_layer_call_and_return_conditional_losses_8199252
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
вR
Д	
gru_124_while_body_820314,
(gru_124_while_gru_124_while_loop_counter2
.gru_124_while_gru_124_while_maximum_iterations
gru_124_while_placeholder
gru_124_while_placeholder_1
gru_124_while_placeholder_2+
'gru_124_while_gru_124_strided_slice_1_0g
cgru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensor_08
4gru_124_while_gru_cell_124_readvariableop_resource_0?
;gru_124_while_gru_cell_124_matmul_readvariableop_resource_0A
=gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0
gru_124_while_identity
gru_124_while_identity_1
gru_124_while_identity_2
gru_124_while_identity_3
gru_124_while_identity_4)
%gru_124_while_gru_124_strided_slice_1e
agru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensor6
2gru_124_while_gru_cell_124_readvariableop_resource=
9gru_124_while_gru_cell_124_matmul_readvariableop_resource?
;gru_124_while_gru_cell_124_matmul_1_readvariableop_resourceѕб0gru_124/while/gru_cell_124/MatMul/ReadVariableOpб2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpб)gru_124/while/gru_cell_124/ReadVariableOpМ
?gru_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2A
?gru_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeЃ
1gru_124/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensor_0gru_124_while_placeholderHgru_124/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype023
1gru_124/while/TensorArrayV2Read/TensorListGetItem╠
)gru_124/while/gru_cell_124/ReadVariableOpReadVariableOp4gru_124_while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02+
)gru_124/while/gru_cell_124/ReadVariableOpй
"gru_124/while/gru_cell_124/unstackUnpack1gru_124/while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2$
"gru_124/while/gru_cell_124/unstackр
0gru_124/while/gru_cell_124/MatMul/ReadVariableOpReadVariableOp;gru_124_while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype022
0gru_124/while/gru_cell_124/MatMul/ReadVariableOpэ
!gru_124/while/gru_cell_124/MatMulMatMul8gru_124/while/TensorArrayV2Read/TensorListGetItem:item:08gru_124/while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2#
!gru_124/while/gru_cell_124/MatMulЯ
"gru_124/while/gru_cell_124/BiasAddBiasAdd+gru_124/while/gru_cell_124/MatMul:product:0+gru_124/while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2$
"gru_124/while/gru_cell_124/BiasAddє
 gru_124/while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 gru_124/while/gru_cell_124/ConstБ
*gru_124/while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2,
*gru_124/while/gru_cell_124/split/split_dimў
 gru_124/while/gru_cell_124/splitSplit3gru_124/while/gru_cell_124/split/split_dim:output:0+gru_124/while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2"
 gru_124/while/gru_cell_124/splitу
2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp=gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype024
2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpЯ
#gru_124/while/gru_cell_124/MatMul_1MatMulgru_124_while_placeholder_2:gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2%
#gru_124/while/gru_cell_124/MatMul_1Т
$gru_124/while/gru_cell_124/BiasAdd_1BiasAdd-gru_124/while/gru_cell_124/MatMul_1:product:0+gru_124/while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2&
$gru_124/while/gru_cell_124/BiasAdd_1Ю
"gru_124/while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2$
"gru_124/while/gru_cell_124/Const_1Д
,gru_124/while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,gru_124/while/gru_cell_124/split_1/split_dim┌
"gru_124/while/gru_cell_124/split_1SplitV-gru_124/while/gru_cell_124/BiasAdd_1:output:0+gru_124/while/gru_cell_124/Const_1:output:05gru_124/while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2$
"gru_124/while/gru_cell_124/split_1М
gru_124/while/gru_cell_124/addAddV2)gru_124/while/gru_cell_124/split:output:0+gru_124/while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22 
gru_124/while/gru_cell_124/addО
 gru_124/while/gru_cell_124/add_1AddV2)gru_124/while/gru_cell_124/split:output:1+gru_124/while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/add_1╠
gru_124/while/gru_cell_124/mulMul$gru_124/while/gru_cell_124/add_1:z:0+gru_124/while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22 
gru_124/while/gru_cell_124/mul╬
 gru_124/while/gru_cell_124/add_2AddV2)gru_124/while/gru_cell_124/split:output:2"gru_124/while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/add_2б
gru_124/while/gru_cell_124/TanhTanh$gru_124/while/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22!
gru_124/while/gru_cell_124/TanhЙ
 gru_124/while/gru_cell_124/mul_1Mul"gru_124/while/gru_cell_124/add:z:0gru_124_while_placeholder_2*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/mul_1Ѕ
 gru_124/while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2"
 gru_124/while/gru_cell_124/sub/x╚
gru_124/while/gru_cell_124/subSub)gru_124/while/gru_cell_124/sub/x:output:0"gru_124/while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22 
gru_124/while/gru_cell_124/subк
 gru_124/while/gru_cell_124/mul_2Mul"gru_124/while/gru_cell_124/sub:z:0#gru_124/while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/mul_2╦
 gru_124/while/gru_cell_124/add_3AddV2$gru_124/while/gru_cell_124/mul_1:z:0$gru_124/while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/add_3ѕ
2gru_124/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_124_while_placeholder_1gru_124_while_placeholder$gru_124/while/gru_cell_124/add_3:z:0*
_output_shapes
: *
element_dtype024
2gru_124/while/TensorArrayV2Write/TensorListSetIteml
gru_124/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_124/while/add/yЅ
gru_124/while/addAddV2gru_124_while_placeholdergru_124/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_124/while/addp
gru_124/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_124/while/add_1/yъ
gru_124/while/add_1AddV2(gru_124_while_gru_124_while_loop_countergru_124/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_124/while/add_1і
gru_124/while/IdentityIdentitygru_124/while/add_1:z:01^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
gru_124/while/IdentityЦ
gru_124/while/Identity_1Identity.gru_124_while_gru_124_while_maximum_iterations1^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
gru_124/while/Identity_1ї
gru_124/while/Identity_2Identitygru_124/while/add:z:01^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
gru_124/while/Identity_2╣
gru_124/while/Identity_3IdentityBgru_124/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
gru_124/while/Identity_3г
gru_124/while/Identity_4Identity$gru_124/while/gru_cell_124/add_3:z:01^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22
gru_124/while/Identity_4"P
%gru_124_while_gru_124_strided_slice_1'gru_124_while_gru_124_strided_slice_1_0"|
;gru_124_while_gru_cell_124_matmul_1_readvariableop_resource=gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0"x
9gru_124_while_gru_cell_124_matmul_readvariableop_resource;gru_124_while_gru_cell_124_matmul_readvariableop_resource_0"j
2gru_124_while_gru_cell_124_readvariableop_resource4gru_124_while_gru_cell_124_readvariableop_resource_0"9
gru_124_while_identitygru_124/while/Identity:output:0"=
gru_124_while_identity_1!gru_124/while/Identity_1:output:0"=
gru_124_while_identity_2!gru_124/while/Identity_2:output:0"=
gru_124_while_identity_3!gru_124/while/Identity_3:output:0"=
gru_124_while_identity_4!gru_124/while/Identity_4:output:0"╚
agru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensorcgru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2d
0gru_124/while/gru_cell_124/MatMul/ReadVariableOp0gru_124/while/gru_cell_124/MatMul/ReadVariableOp2h
2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp2V
)gru_124/while/gru_cell_124/ReadVariableOp)gru_124/while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
Ѓ
Ќ
J__inference_sequential_124_layer_call_and_return_conditional_losses_820017

inputs
gru_124_820004
gru_124_820006
gru_124_820008
dense_124_820011
dense_124_820013
identityѕб!dense_124/StatefulPartitionedCallбgru_124/StatefulPartitionedCallА
gru_124/StatefulPartitionedCallStatefulPartitionedCallinputsgru_124_820004gru_124_820006gru_124_820008*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_gru_124_layer_call_and_return_conditional_losses_8197702!
gru_124/StatefulPartitionedCall╗
!dense_124/StatefulPartitionedCallStatefulPartitionedCall(gru_124/StatefulPartitionedCall:output:0dense_124_820011dense_124_820013*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_124_layer_call_and_return_conditional_losses_8199652#
!dense_124/StatefulPartitionedCall─
IdentityIdentity*dense_124/StatefulPartitionedCall:output:0"^dense_124/StatefulPartitionedCall ^gru_124/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2B
gru_124/StatefulPartitionedCallgru_124/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л
▒
/__inference_sequential_124_layer_call_fn_820438

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_124_layer_call_and_return_conditional_losses_8200482
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╣	
┬
gru_124_while_cond_820152,
(gru_124_while_gru_124_while_loop_counter2
.gru_124_while_gru_124_while_maximum_iterations
gru_124_while_placeholder
gru_124_while_placeholder_1
gru_124_while_placeholder_2.
*gru_124_while_less_gru_124_strided_slice_1D
@gru_124_while_gru_124_while_cond_820152___redundant_placeholder0D
@gru_124_while_gru_124_while_cond_820152___redundant_placeholder1D
@gru_124_while_gru_124_while_cond_820152___redundant_placeholder2D
@gru_124_while_gru_124_while_cond_820152___redundant_placeholder3
gru_124_while_identity
ў
gru_124/while/LessLessgru_124_while_placeholder*gru_124_while_less_gru_124_strided_slice_1*
T0*
_output_shapes
: 2
gru_124/while/Lessu
gru_124/while/IdentityIdentitygru_124/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_124/while/Identity"9
gru_124_while_identitygru_124/while/Identity:output:0*@
_input_shapes/
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
л
ф
while_cond_820659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_820659___redundant_placeholder04
0while_while_cond_820659___redundant_placeholder14
0while_while_cond_820659___redundant_placeholder24
0while_while_cond_820659___redundant_placeholder3
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
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
ъZ
С
C__inference_gru_124_layer_call_and_return_conditional_losses_820748
inputs_0(
$gru_cell_124_readvariableop_resource/
+gru_cell_124_matmul_readvariableop_resource1
-gru_cell_124_matmul_1_readvariableop_resource
identityѕб"gru_cell_124/MatMul/ReadVariableOpб$gru_cell_124/MatMul_1/ReadVariableOpбgru_cell_124/ReadVariableOpбwhileF
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
strided_slice/stack_2Р
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
B :У2
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
zeros/packed/1Ѓ
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
:         22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЁ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2
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
strided_slice_1/stack_2Ь
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Ё
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
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
strided_slice_2/stack_2Ч
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2а
gru_cell_124/ReadVariableOpReadVariableOp$gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
gru_cell_124/ReadVariableOpЊ
gru_cell_124/unstackUnpack#gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
gru_cell_124/unstackх
"gru_cell_124/MatMul/ReadVariableOpReadVariableOp+gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02$
"gru_cell_124/MatMul/ReadVariableOpГ
gru_cell_124/MatMulMatMulstrided_slice_2:output:0*gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMulе
gru_cell_124/BiasAddBiasAddgru_cell_124/MatMul:product:0gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAddj
gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_124/ConstЄ
gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
gru_cell_124/split/split_dimЯ
gru_cell_124/splitSplit%gru_cell_124/split/split_dim:output:0gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split╗
$gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02&
$gru_cell_124/MatMul_1/ReadVariableOpЕ
gru_cell_124/MatMul_1MatMulzeros:output:0,gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMul_1«
gru_cell_124/BiasAdd_1BiasAddgru_cell_124/MatMul_1:product:0gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAdd_1Ђ
gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
gru_cell_124/Const_1І
gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
gru_cell_124/split_1/split_dimћ
gru_cell_124/split_1SplitVgru_cell_124/BiasAdd_1:output:0gru_cell_124/Const_1:output:0'gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split_1Џ
gru_cell_124/addAddV2gru_cell_124/split:output:0gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/addЪ
gru_cell_124/add_1AddV2gru_cell_124/split:output:1gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
gru_cell_124/add_1ћ
gru_cell_124/mulMulgru_cell_124/add_1:z:0gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
gru_cell_124/mulќ
gru_cell_124/add_2AddV2gru_cell_124/split:output:2gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_2x
gru_cell_124/TanhTanhgru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/TanhЄ
gru_cell_124/mul_1Mulgru_cell_124/add:z:0zeros:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_1m
gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
gru_cell_124/sub/xљ
gru_cell_124/subSubgru_cell_124/sub/x:output:0gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/subј
gru_cell_124/mul_2Mulgru_cell_124/sub:z:0gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_2Њ
gru_cell_124/add_3AddV2gru_cell_124/mul_1:z:0gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_3Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2
TensorArrayV2_1/element_shapeИ
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterГ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_124_readvariableop_resource+gru_cell_124_matmul_readvariableop_resource-gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_820660*
condR
while_cond_820659*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   22
0TensorArrayV2Stack/TensorListStack/element_shapeы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2џ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm«
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeя
IdentityIdentitystrided_slice_3:output:0#^gru_cell_124/MatMul/ReadVariableOp%^gru_cell_124/MatMul_1/ReadVariableOp^gru_cell_124/ReadVariableOp^while*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::2H
"gru_cell_124/MatMul/ReadVariableOp"gru_cell_124/MatMul/ReadVariableOp2L
$gru_cell_124/MatMul_1/ReadVariableOp$gru_cell_124/MatMul_1/ReadVariableOp2:
gru_cell_124/ReadVariableOpgru_cell_124/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ъZ
С
C__inference_gru_124_layer_call_and_return_conditional_losses_820593
inputs_0(
$gru_cell_124_readvariableop_resource/
+gru_cell_124_matmul_readvariableop_resource1
-gru_cell_124_matmul_1_readvariableop_resource
identityѕб"gru_cell_124/MatMul/ReadVariableOpб$gru_cell_124/MatMul_1/ReadVariableOpбgru_cell_124/ReadVariableOpбwhileF
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
strided_slice/stack_2Р
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
B :У2
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
zeros/packed/1Ѓ
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
:         22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЁ
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2
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
strided_slice_1/stack_2Ь
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Ё
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
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
strided_slice_2/stack_2Ч
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2а
gru_cell_124/ReadVariableOpReadVariableOp$gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
gru_cell_124/ReadVariableOpЊ
gru_cell_124/unstackUnpack#gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
gru_cell_124/unstackх
"gru_cell_124/MatMul/ReadVariableOpReadVariableOp+gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02$
"gru_cell_124/MatMul/ReadVariableOpГ
gru_cell_124/MatMulMatMulstrided_slice_2:output:0*gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMulе
gru_cell_124/BiasAddBiasAddgru_cell_124/MatMul:product:0gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAddj
gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_124/ConstЄ
gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
gru_cell_124/split/split_dimЯ
gru_cell_124/splitSplit%gru_cell_124/split/split_dim:output:0gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split╗
$gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02&
$gru_cell_124/MatMul_1/ReadVariableOpЕ
gru_cell_124/MatMul_1MatMulzeros:output:0,gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMul_1«
gru_cell_124/BiasAdd_1BiasAddgru_cell_124/MatMul_1:product:0gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAdd_1Ђ
gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
gru_cell_124/Const_1І
gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
gru_cell_124/split_1/split_dimћ
gru_cell_124/split_1SplitVgru_cell_124/BiasAdd_1:output:0gru_cell_124/Const_1:output:0'gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split_1Џ
gru_cell_124/addAddV2gru_cell_124/split:output:0gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/addЪ
gru_cell_124/add_1AddV2gru_cell_124/split:output:1gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
gru_cell_124/add_1ћ
gru_cell_124/mulMulgru_cell_124/add_1:z:0gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
gru_cell_124/mulќ
gru_cell_124/add_2AddV2gru_cell_124/split:output:2gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_2x
gru_cell_124/TanhTanhgru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/TanhЄ
gru_cell_124/mul_1Mulgru_cell_124/add:z:0zeros:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_1m
gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
gru_cell_124/sub/xљ
gru_cell_124/subSubgru_cell_124/sub/x:output:0gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/subј
gru_cell_124/mul_2Mulgru_cell_124/sub:z:0gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_2Њ
gru_cell_124/add_3AddV2gru_cell_124/mul_1:z:0gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_3Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2
TensorArrayV2_1/element_shapeИ
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterГ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_124_readvariableop_resource+gru_cell_124_matmul_readvariableop_resource-gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_820505*
condR
while_cond_820504*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   22
0TensorArrayV2Stack/TensorListStack/element_shapeы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2џ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm«
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeя
IdentityIdentitystrided_slice_3:output:0#^gru_cell_124/MatMul/ReadVariableOp%^gru_cell_124/MatMul_1/ReadVariableOp^gru_cell_124/ReadVariableOp^while*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::2H
"gru_cell_124/MatMul/ReadVariableOp"gru_cell_124/MatMul/ReadVariableOp2L
$gru_cell_124/MatMul_1/ReadVariableOp$gru_cell_124/MatMul_1/ReadVariableOp2:
gru_cell_124/ReadVariableOpgru_cell_124/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
»F
и
while_body_820992
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_124_readvariableop_resource_07
3while_gru_cell_124_matmul_readvariableop_resource_09
5while_gru_cell_124_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_124_readvariableop_resource5
1while_gru_cell_124_matmul_readvariableop_resource7
3while_gru_cell_124_matmul_1_readvariableop_resourceѕб(while/gru_cell_124/MatMul/ReadVariableOpб*while/gru_cell_124/MatMul_1/ReadVariableOpб!while/gru_cell_124/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem┤
!while/gru_cell_124/ReadVariableOpReadVariableOp,while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02#
!while/gru_cell_124/ReadVariableOpЦ
while/gru_cell_124/unstackUnpack)while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
while/gru_cell_124/unstack╔
(while/gru_cell_124/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02*
(while/gru_cell_124/MatMul/ReadVariableOpО
while/gru_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul└
while/gru_cell_124/BiasAddBiasAdd#while/gru_cell_124/MatMul:product:0#while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAddv
while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_124/ConstЊ
"while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"while/gru_cell_124/split/split_dimЭ
while/gru_cell_124/splitSplit+while/gru_cell_124/split/split_dim:output:0#while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split¤
*while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype02,
*while/gru_cell_124/MatMul_1/ReadVariableOp└
while/gru_cell_124/MatMul_1MatMulwhile_placeholder_22while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul_1к
while/gru_cell_124/BiasAdd_1BiasAdd%while/gru_cell_124/MatMul_1:product:0#while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAdd_1Ї
while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
while/gru_cell_124/Const_1Ќ
$while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$while/gru_cell_124/split_1/split_dim▓
while/gru_cell_124/split_1SplitV%while/gru_cell_124/BiasAdd_1:output:0#while/gru_cell_124/Const_1:output:0-while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split_1│
while/gru_cell_124/addAddV2!while/gru_cell_124/split:output:0#while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/addи
while/gru_cell_124/add_1AddV2!while/gru_cell_124/split:output:1#while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_1г
while/gru_cell_124/mulMulwhile/gru_cell_124/add_1:z:0#while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul«
while/gru_cell_124/add_2AddV2!while/gru_cell_124/split:output:2while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_2і
while/gru_cell_124/TanhTanhwhile/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/Tanhъ
while/gru_cell_124/mul_1Mulwhile/gru_cell_124/add:z:0while_placeholder_2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_1y
while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
while/gru_cell_124/sub/xе
while/gru_cell_124/subSub!while/gru_cell_124/sub/x:output:0while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/subд
while/gru_cell_124/mul_2Mulwhile/gru_cell_124/sub:z:0while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_2Ф
while/gru_cell_124/add_3AddV2while/gru_cell_124/mul_1:z:0while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_3Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_124/add_3:z:0*
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
while/add_1┌
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityь
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1▄
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ѕ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identitywhile/gru_cell_124/add_3:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22
while/Identity_4"l
3while_gru_cell_124_matmul_1_readvariableop_resource5while_gru_cell_124_matmul_1_readvariableop_resource_0"h
1while_gru_cell_124_matmul_readvariableop_resource3while_gru_cell_124_matmul_readvariableop_resource_0"Z
*while_gru_cell_124_readvariableop_resource,while_gru_cell_124_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2T
(while/gru_cell_124/MatMul/ReadVariableOp(while/gru_cell_124/MatMul/ReadVariableOp2X
*while/gru_cell_124/MatMul_1/ReadVariableOp*while/gru_cell_124/MatMul_1/ReadVariableOp2F
!while/gru_cell_124/ReadVariableOp!while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
Я	
»
-__inference_gru_cell_124_layer_call_fn_821225

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ѕбStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_8191622
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identityњ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:         :         2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0
УY
Р
C__inference_gru_124_layer_call_and_return_conditional_losses_821080

inputs(
$gru_cell_124_readvariableop_resource/
+gru_cell_124_matmul_readvariableop_resource1
-gru_cell_124_matmul_1_readvariableop_resource
identityѕб"gru_cell_124/MatMul/ReadVariableOpб$gru_cell_124/MatMul_1/ReadVariableOpбgru_cell_124/ReadVariableOpбwhileD
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
strided_slice/stack_2Р
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
B :У2
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
zeros/packed/1Ѓ
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
:         22
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
:         2
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
strided_slice_1/stack_2Ь
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Ё
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
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
strided_slice_2/stack_2Ч
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2а
gru_cell_124/ReadVariableOpReadVariableOp$gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
gru_cell_124/ReadVariableOpЊ
gru_cell_124/unstackUnpack#gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
gru_cell_124/unstackх
"gru_cell_124/MatMul/ReadVariableOpReadVariableOp+gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02$
"gru_cell_124/MatMul/ReadVariableOpГ
gru_cell_124/MatMulMatMulstrided_slice_2:output:0*gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMulе
gru_cell_124/BiasAddBiasAddgru_cell_124/MatMul:product:0gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAddj
gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_124/ConstЄ
gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
gru_cell_124/split/split_dimЯ
gru_cell_124/splitSplit%gru_cell_124/split/split_dim:output:0gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split╗
$gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02&
$gru_cell_124/MatMul_1/ReadVariableOpЕ
gru_cell_124/MatMul_1MatMulzeros:output:0,gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMul_1«
gru_cell_124/BiasAdd_1BiasAddgru_cell_124/MatMul_1:product:0gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAdd_1Ђ
gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
gru_cell_124/Const_1І
gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
gru_cell_124/split_1/split_dimћ
gru_cell_124/split_1SplitVgru_cell_124/BiasAdd_1:output:0gru_cell_124/Const_1:output:0'gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split_1Џ
gru_cell_124/addAddV2gru_cell_124/split:output:0gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/addЪ
gru_cell_124/add_1AddV2gru_cell_124/split:output:1gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
gru_cell_124/add_1ћ
gru_cell_124/mulMulgru_cell_124/add_1:z:0gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
gru_cell_124/mulќ
gru_cell_124/add_2AddV2gru_cell_124/split:output:2gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_2x
gru_cell_124/TanhTanhgru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/TanhЄ
gru_cell_124/mul_1Mulgru_cell_124/add:z:0zeros:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_1m
gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
gru_cell_124/sub/xљ
gru_cell_124/subSubgru_cell_124/sub/x:output:0gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/subј
gru_cell_124/mul_2Mulgru_cell_124/sub:z:0gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_2Њ
gru_cell_124/add_3AddV2gru_cell_124/mul_1:z:0gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_3Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2
TensorArrayV2_1/element_shapeИ
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterГ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_124_readvariableop_resource+gru_cell_124_matmul_readvariableop_resource-gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_820992*
condR
while_cond_820991*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   22
0TensorArrayV2Stack/TensorListStack/element_shapeУ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2џ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЦ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeя
IdentityIdentitystrided_slice_3:output:0#^gru_cell_124/MatMul/ReadVariableOp%^gru_cell_124/MatMul_1/ReadVariableOp^gru_cell_124/ReadVariableOp^while*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::2H
"gru_cell_124/MatMul/ReadVariableOp"gru_cell_124/MatMul/ReadVariableOp2L
$gru_cell_124/MatMul_1/ReadVariableOp$gru_cell_124/MatMul_1/ReadVariableOp2:
gru_cell_124/ReadVariableOpgru_cell_124/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Џ
ј
(__inference_gru_124_layer_call_fn_820759
inputs_0
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_gru_124_layer_call_and_return_conditional_losses_8194852
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Њ	
я
E__inference_dense_124_layer_call_and_return_conditional_losses_819965

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
В`
┴
"__inference__traced_restore_821390
file_prefix%
!assignvariableop_dense_124_kernel%
!assignvariableop_1_dense_124_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate2
.assignvariableop_7_gru_124_gru_cell_124_kernel<
8assignvariableop_8_gru_124_gru_cell_124_recurrent_kernel0
,assignvariableop_9_gru_124_gru_cell_124_bias
assignvariableop_10_total
assignvariableop_11_count/
+assignvariableop_12_adam_dense_124_kernel_m-
)assignvariableop_13_adam_dense_124_bias_m:
6assignvariableop_14_adam_gru_124_gru_cell_124_kernel_mD
@assignvariableop_15_adam_gru_124_gru_cell_124_recurrent_kernel_m8
4assignvariableop_16_adam_gru_124_gru_cell_124_bias_m/
+assignvariableop_17_adam_dense_124_kernel_v-
)assignvariableop_18_adam_dense_124_bias_v:
6assignvariableop_19_adam_gru_124_gru_cell_124_kernel_vD
@assignvariableop_20_adam_gru_124_gru_cell_124_recurrent_kernel_v8
4assignvariableop_21_adam_gru_124_gru_cell_124_bias_v
identity_23ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ю
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*е
valueъBЏB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╝
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesъ
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

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_dense_124_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_124_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2А
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Б
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Б
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5б
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ф
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7│
AssignVariableOp_7AssignVariableOp.assignvariableop_7_gru_124_gru_cell_124_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8й
AssignVariableOp_8AssignVariableOp8assignvariableop_8_gru_124_gru_cell_124_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9▒
AssignVariableOp_9AssignVariableOp,assignvariableop_9_gru_124_gru_cell_124_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10А
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11А
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12│
AssignVariableOp_12AssignVariableOp+assignvariableop_12_adam_dense_124_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13▒
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_dense_124_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Й
AssignVariableOp_14AssignVariableOp6assignvariableop_14_adam_gru_124_gru_cell_124_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╚
AssignVariableOp_15AssignVariableOp@assignvariableop_15_adam_gru_124_gru_cell_124_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16╝
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_gru_124_gru_cell_124_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17│
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_124_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18▒
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_124_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Й
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_gru_124_gru_cell_124_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╚
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_gru_124_gru_cell_124_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21╝
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_gru_124_gru_cell_124_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp┬
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_22х
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
л
ф
while_cond_820836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_820836___redundant_placeholder04
0while_while_cond_820836___redundant_placeholder14
0while_while_cond_820836___redundant_placeholder24
0while_while_cond_820836___redundant_placeholder3
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
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
Ѓ
»
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_821159

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ѕбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpбReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	ќ*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2	
unstackј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ќ2	
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
         2
split/split_dimг
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
splitћ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ќ2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
split_1/split_dimМ
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:         22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         22
TanhZ
mul_1Muladd:z:0states_0*
T0*'
_output_shapes
:         22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:         22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         22
add_3а
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:         22

Identityц

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:         22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:         :         2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0
╣	
┬
gru_124_while_cond_820313,
(gru_124_while_gru_124_while_loop_counter2
.gru_124_while_gru_124_while_maximum_iterations
gru_124_while_placeholder
gru_124_while_placeholder_1
gru_124_while_placeholder_2.
*gru_124_while_less_gru_124_strided_slice_1D
@gru_124_while_gru_124_while_cond_820313___redundant_placeholder0D
@gru_124_while_gru_124_while_cond_820313___redundant_placeholder1D
@gru_124_while_gru_124_while_cond_820313___redundant_placeholder2D
@gru_124_while_gru_124_while_cond_820313___redundant_placeholder3
gru_124_while_identity
ў
gru_124/while/LessLessgru_124_while_placeholder*gru_124_while_less_gru_124_strided_slice_1*
T0*
_output_shapes
: 2
gru_124/while/Lessu
gru_124/while/IdentityIdentitygru_124/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_124/while/Identity"9
gru_124_while_identitygru_124/while/Identity:output:0*@
_input_shapes/
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
л
ф
while_cond_819420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_819420___redundant_placeholder04
0while_while_cond_819420___redundant_placeholder14
0while_while_cond_819420___redundant_placeholder24
0while_while_cond_819420___redundant_placeholder3
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
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
Т
И
/__inference_sequential_124_layer_call_fn_820061
gru_124_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallgru_124_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_124_layer_call_and_return_conditional_losses_8200482
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namegru_124_input
ў
ъ
J__inference_sequential_124_layer_call_and_return_conditional_losses_819982
gru_124_input
gru_124_819948
gru_124_819950
gru_124_819952
dense_124_819976
dense_124_819978
identityѕб!dense_124/StatefulPartitionedCallбgru_124/StatefulPartitionedCallе
gru_124/StatefulPartitionedCallStatefulPartitionedCallgru_124_inputgru_124_819948gru_124_819950gru_124_819952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_gru_124_layer_call_and_return_conditional_losses_8197702!
gru_124/StatefulPartitionedCall╗
!dense_124/StatefulPartitionedCallStatefulPartitionedCall(gru_124/StatefulPartitionedCall:output:0dense_124_819976dense_124_819978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_124_layer_call_and_return_conditional_losses_8199652#
!dense_124/StatefulPartitionedCall─
IdentityIdentity*dense_124/StatefulPartitionedCall:output:0"^dense_124/StatefulPartitionedCall ^gru_124/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2B
gru_124/StatefulPartitionedCallgru_124/StatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namegru_124_input
Ѓ
ї
(__inference_gru_124_layer_call_fn_821091

inputs
unknown
	unknown_0
	unknown_1
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_gru_124_layer_call_and_return_conditional_losses_8197702
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
л
ф
while_cond_819681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_819681___redundant_placeholder04
0while_while_cond_819681___redundant_placeholder14
0while_while_cond_819681___redundant_placeholder24
0while_while_cond_819681___redundant_placeholder3
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
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
Т
И
/__inference_sequential_124_layer_call_fn_820030
gru_124_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallgru_124_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_124_layer_call_and_return_conditional_losses_8200172
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namegru_124_input
э<
▄
C__inference_gru_124_layer_call_and_return_conditional_losses_819603

inputs
gru_cell_124_819527
gru_cell_124_819529
gru_cell_124_819531
identityѕб$gru_cell_124/StatefulPartitionedCallбwhileD
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
strided_slice/stack_2Р
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
B :У2
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
zeros/packed/1Ѓ
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
:         22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2
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
strided_slice_1/stack_2Ь
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Ё
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
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
strided_slice_2/stack_2Ч
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2Ш
$gru_cell_124/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_124_819527gru_cell_124_819529gru_cell_124_819531*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_8191622&
$gru_cell_124/StatefulPartitionedCallЈ
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2
TensorArrayV2_1/element_shapeИ
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЖ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_124_819527gru_cell_124_819529gru_cell_124_819531*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_819539*
condR
while_cond_819538*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   22
0TensorArrayV2Stack/TensorListStack/element_shapeы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2џ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm«
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeЏ
IdentityIdentitystrided_slice_3:output:0%^gru_cell_124/StatefulPartitionedCall^while*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:                  :::2L
$gru_cell_124/StatefulPartitionedCall$gru_cell_124/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
я

*__inference_dense_124_layer_call_fn_821121

inputs
unknown
	unknown_0
identityѕбStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_124_layer_call_and_return_conditional_losses_8199652
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         2::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
ч
Г
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_819162

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ѕбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpбReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	ќ*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2	
unstackј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ќ2	
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
         2
split/split_dimг
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
splitћ
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ќ2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
split_1/split_dimМ
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:         22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         22
TanhX
mul_1Muladd:z:0states*
T0*'
_output_shapes
:         22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:         22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         22
add_3а
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:         22

Identityц

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:         22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:         :         2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates
і"
Р
while_body_819421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_gru_cell_124_819443_0
while_gru_cell_124_819445_0
while_gru_cell_124_819447_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_124_819443
while_gru_cell_124_819445
while_gru_cell_124_819447ѕб*while/gru_cell_124/StatefulPartitionedCall├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemи
*while/gru_cell_124/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_124_819443_0while_gru_cell_124_819445_0while_gru_cell_124_819447_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_8191242,
*while/gru_cell_124/StatefulPartitionedCallэ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/gru_cell_124/StatefulPartitionedCall:output:0*
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
while/add_1І
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_124/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identityъ
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_124/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1Ї
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_124/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2║
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_124/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3─
while/Identity_4Identity3while/gru_cell_124/StatefulPartitionedCall:output:1+^while/gru_cell_124/StatefulPartitionedCall*
T0*'
_output_shapes
:         22
while/Identity_4"8
while_gru_cell_124_819443while_gru_cell_124_819443_0"8
while_gru_cell_124_819445while_gru_cell_124_819445_0"8
while_gru_cell_124_819447while_gru_cell_124_819447_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2X
*while/gru_cell_124/StatefulPartitionedCall*while/gru_cell_124/StatefulPartitionedCall: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
іq
├
J__inference_sequential_124_layer_call_and_return_conditional_losses_820247

inputs0
,gru_124_gru_cell_124_readvariableop_resource7
3gru_124_gru_cell_124_matmul_readvariableop_resource9
5gru_124_gru_cell_124_matmul_1_readvariableop_resource,
(dense_124_matmul_readvariableop_resource-
)dense_124_biasadd_readvariableop_resource
identityѕб dense_124/BiasAdd/ReadVariableOpбdense_124/MatMul/ReadVariableOpб*gru_124/gru_cell_124/MatMul/ReadVariableOpб,gru_124/gru_cell_124/MatMul_1/ReadVariableOpб#gru_124/gru_cell_124/ReadVariableOpбgru_124/whileT
gru_124/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_124/Shapeё
gru_124/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_124/strided_slice/stackѕ
gru_124/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_124/strided_slice/stack_1ѕ
gru_124/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_124/strided_slice/stack_2њ
gru_124/strided_sliceStridedSlicegru_124/Shape:output:0$gru_124/strided_slice/stack:output:0&gru_124/strided_slice/stack_1:output:0&gru_124/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_124/strided_slicel
gru_124/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
gru_124/zeros/mul/yї
gru_124/zeros/mulMulgru_124/strided_slice:output:0gru_124/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_124/zeros/mulo
gru_124/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
gru_124/zeros/Less/yЄ
gru_124/zeros/LessLessgru_124/zeros/mul:z:0gru_124/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_124/zeros/Lessr
gru_124/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
gru_124/zeros/packed/1Б
gru_124/zeros/packedPackgru_124/strided_slice:output:0gru_124/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_124/zeros/packedo
gru_124/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_124/zeros/ConstЋ
gru_124/zerosFillgru_124/zeros/packed:output:0gru_124/zeros/Const:output:0*
T0*'
_output_shapes
:         22
gru_124/zerosЁ
gru_124/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_124/transpose/permњ
gru_124/transpose	Transposeinputsgru_124/transpose/perm:output:0*
T0*+
_output_shapes
:         2
gru_124/transposeg
gru_124/Shape_1Shapegru_124/transpose:y:0*
T0*
_output_shapes
:2
gru_124/Shape_1ѕ
gru_124/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_124/strided_slice_1/stackї
gru_124/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_1/stack_1ї
gru_124/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_1/stack_2ъ
gru_124/strided_slice_1StridedSlicegru_124/Shape_1:output:0&gru_124/strided_slice_1/stack:output:0(gru_124/strided_slice_1/stack_1:output:0(gru_124/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_124/strided_slice_1Ћ
#gru_124/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2%
#gru_124/TensorArrayV2/element_shapeм
gru_124/TensorArrayV2TensorListReserve,gru_124/TensorArrayV2/element_shape:output:0 gru_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_124/TensorArrayV2¤
=gru_124/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=gru_124/TensorArrayUnstack/TensorListFromTensor/element_shapeў
/gru_124/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_124/transpose:y:0Fgru_124/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_124/TensorArrayUnstack/TensorListFromTensorѕ
gru_124/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_124/strided_slice_2/stackї
gru_124/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_2/stack_1ї
gru_124/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_2/stack_2г
gru_124/strided_slice_2StridedSlicegru_124/transpose:y:0&gru_124/strided_slice_2/stack:output:0(gru_124/strided_slice_2/stack_1:output:0(gru_124/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
gru_124/strided_slice_2И
#gru_124/gru_cell_124/ReadVariableOpReadVariableOp,gru_124_gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype02%
#gru_124/gru_cell_124/ReadVariableOpФ
gru_124/gru_cell_124/unstackUnpack+gru_124/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
gru_124/gru_cell_124/unstack═
*gru_124/gru_cell_124/MatMul/ReadVariableOpReadVariableOp3gru_124_gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02,
*gru_124/gru_cell_124/MatMul/ReadVariableOp═
gru_124/gru_cell_124/MatMulMatMul gru_124/strided_slice_2:output:02gru_124/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_124/gru_cell_124/MatMul╚
gru_124/gru_cell_124/BiasAddBiasAdd%gru_124/gru_cell_124/MatMul:product:0%gru_124/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
gru_124/gru_cell_124/BiasAddz
gru_124/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_124/gru_cell_124/ConstЌ
$gru_124/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$gru_124/gru_cell_124/split/split_dimђ
gru_124/gru_cell_124/splitSplit-gru_124/gru_cell_124/split/split_dim:output:0%gru_124/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_124/gru_cell_124/splitМ
,gru_124/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp5gru_124_gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02.
,gru_124/gru_cell_124/MatMul_1/ReadVariableOp╔
gru_124/gru_cell_124/MatMul_1MatMulgru_124/zeros:output:04gru_124/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_124/gru_cell_124/MatMul_1╬
gru_124/gru_cell_124/BiasAdd_1BiasAdd'gru_124/gru_cell_124/MatMul_1:product:0%gru_124/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2 
gru_124/gru_cell_124/BiasAdd_1Љ
gru_124/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
gru_124/gru_cell_124/Const_1Џ
&gru_124/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2(
&gru_124/gru_cell_124/split_1/split_dim╝
gru_124/gru_cell_124/split_1SplitV'gru_124/gru_cell_124/BiasAdd_1:output:0%gru_124/gru_cell_124/Const_1:output:0/gru_124/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_124/gru_cell_124/split_1╗
gru_124/gru_cell_124/addAddV2#gru_124/gru_cell_124/split:output:0%gru_124/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/add┐
gru_124/gru_cell_124/add_1AddV2#gru_124/gru_cell_124/split:output:1%gru_124/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/add_1┤
gru_124/gru_cell_124/mulMulgru_124/gru_cell_124/add_1:z:0%gru_124/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/mulХ
gru_124/gru_cell_124/add_2AddV2#gru_124/gru_cell_124/split:output:2gru_124/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/add_2љ
gru_124/gru_cell_124/TanhTanhgru_124/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/TanhД
gru_124/gru_cell_124/mul_1Mulgru_124/gru_cell_124/add:z:0gru_124/zeros:output:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/mul_1}
gru_124/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
gru_124/gru_cell_124/sub/x░
gru_124/gru_cell_124/subSub#gru_124/gru_cell_124/sub/x:output:0gru_124/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/sub«
gru_124/gru_cell_124/mul_2Mulgru_124/gru_cell_124/sub:z:0gru_124/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/mul_2│
gru_124/gru_cell_124/add_3AddV2gru_124/gru_cell_124/mul_1:z:0gru_124/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
gru_124/gru_cell_124/add_3Ъ
%gru_124/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2'
%gru_124/TensorArrayV2_1/element_shapeп
gru_124/TensorArrayV2_1TensorListReserve.gru_124/TensorArrayV2_1/element_shape:output:0 gru_124/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_124/TensorArrayV2_1^
gru_124/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_124/timeЈ
 gru_124/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2"
 gru_124/while/maximum_iterationsz
gru_124/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_124/while/loop_counterЮ
gru_124/whileWhile#gru_124/while/loop_counter:output:0)gru_124/while/maximum_iterations:output:0gru_124/time:output:0 gru_124/TensorArrayV2_1:handle:0gru_124/zeros:output:0 gru_124/strided_slice_1:output:0?gru_124/TensorArrayUnstack/TensorListFromTensor:output_handle:0,gru_124_gru_cell_124_readvariableop_resource3gru_124_gru_cell_124_matmul_readvariableop_resource5gru_124_gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*%
bodyR
gru_124_while_body_820153*%
condR
gru_124_while_cond_820152*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
gru_124/while┼
8gru_124/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2:
8gru_124/TensorArrayV2Stack/TensorListStack/element_shapeѕ
*gru_124/TensorArrayV2Stack/TensorListStackTensorListStackgru_124/while:output:3Agru_124/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype02,
*gru_124/TensorArrayV2Stack/TensorListStackЉ
gru_124/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
gru_124/strided_slice_3/stackї
gru_124/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_124/strided_slice_3/stack_1ї
gru_124/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_124/strided_slice_3/stack_2╩
gru_124/strided_slice_3StridedSlice3gru_124/TensorArrayV2Stack/TensorListStack:tensor:0&gru_124/strided_slice_3/stack:output:0(gru_124/strided_slice_3/stack_1:output:0(gru_124/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
gru_124/strided_slice_3Ѕ
gru_124/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_124/transpose_1/perm┼
gru_124/transpose_1	Transpose3gru_124/TensorArrayV2Stack/TensorListStack:tensor:0!gru_124/transpose_1/perm:output:0*
T0*+
_output_shapes
:         22
gru_124/transpose_1v
gru_124/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_124/runtimeФ
dense_124/MatMul/ReadVariableOpReadVariableOp(dense_124_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02!
dense_124/MatMul/ReadVariableOpФ
dense_124/MatMulMatMul gru_124/strided_slice_3:output:0'dense_124/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_124/MatMulф
 dense_124/BiasAdd/ReadVariableOpReadVariableOp)dense_124_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_124/BiasAdd/ReadVariableOpЕ
dense_124/BiasAddBiasAdddense_124/MatMul:product:0(dense_124/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_124/BiasAdd┼
IdentityIdentitydense_124/BiasAdd:output:0!^dense_124/BiasAdd/ReadVariableOp ^dense_124/MatMul/ReadVariableOp+^gru_124/gru_cell_124/MatMul/ReadVariableOp-^gru_124/gru_cell_124/MatMul_1/ReadVariableOp$^gru_124/gru_cell_124/ReadVariableOp^gru_124/while*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::2D
 dense_124/BiasAdd/ReadVariableOp dense_124/BiasAdd/ReadVariableOp2B
dense_124/MatMul/ReadVariableOpdense_124/MatMul/ReadVariableOp2X
*gru_124/gru_cell_124/MatMul/ReadVariableOp*gru_124/gru_cell_124/MatMul/ReadVariableOp2\
,gru_124/gru_cell_124/MatMul_1/ReadVariableOp,gru_124/gru_cell_124/MatMul_1/ReadVariableOp2J
#gru_124/gru_cell_124/ReadVariableOp#gru_124/gru_cell_124/ReadVariableOp2
gru_124/whilegru_124/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
УY
Р
C__inference_gru_124_layer_call_and_return_conditional_losses_819770

inputs(
$gru_cell_124_readvariableop_resource/
+gru_cell_124_matmul_readvariableop_resource1
-gru_cell_124_matmul_1_readvariableop_resource
identityѕб"gru_cell_124/MatMul/ReadVariableOpб$gru_cell_124/MatMul_1/ReadVariableOpбgru_cell_124/ReadVariableOpбwhileD
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
strided_slice/stack_2Р
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
B :У2
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
zeros/packed/1Ѓ
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
:         22
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
:         2
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
strided_slice_1/stack_2Ь
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Ё
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
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
strided_slice_2/stack_2Ч
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2а
gru_cell_124/ReadVariableOpReadVariableOp$gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
gru_cell_124/ReadVariableOpЊ
gru_cell_124/unstackUnpack#gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
gru_cell_124/unstackх
"gru_cell_124/MatMul/ReadVariableOpReadVariableOp+gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02$
"gru_cell_124/MatMul/ReadVariableOpГ
gru_cell_124/MatMulMatMulstrided_slice_2:output:0*gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMulе
gru_cell_124/BiasAddBiasAddgru_cell_124/MatMul:product:0gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAddj
gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_124/ConstЄ
gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
gru_cell_124/split/split_dimЯ
gru_cell_124/splitSplit%gru_cell_124/split/split_dim:output:0gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split╗
$gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02&
$gru_cell_124/MatMul_1/ReadVariableOpЕ
gru_cell_124/MatMul_1MatMulzeros:output:0,gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMul_1«
gru_cell_124/BiasAdd_1BiasAddgru_cell_124/MatMul_1:product:0gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAdd_1Ђ
gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
gru_cell_124/Const_1І
gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
gru_cell_124/split_1/split_dimћ
gru_cell_124/split_1SplitVgru_cell_124/BiasAdd_1:output:0gru_cell_124/Const_1:output:0'gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split_1Џ
gru_cell_124/addAddV2gru_cell_124/split:output:0gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/addЪ
gru_cell_124/add_1AddV2gru_cell_124/split:output:1gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
gru_cell_124/add_1ћ
gru_cell_124/mulMulgru_cell_124/add_1:z:0gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
gru_cell_124/mulќ
gru_cell_124/add_2AddV2gru_cell_124/split:output:2gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_2x
gru_cell_124/TanhTanhgru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/TanhЄ
gru_cell_124/mul_1Mulgru_cell_124/add:z:0zeros:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_1m
gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
gru_cell_124/sub/xљ
gru_cell_124/subSubgru_cell_124/sub/x:output:0gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/subј
gru_cell_124/mul_2Mulgru_cell_124/sub:z:0gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_2Њ
gru_cell_124/add_3AddV2gru_cell_124/mul_1:z:0gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_3Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2
TensorArrayV2_1/element_shapeИ
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterГ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_124_readvariableop_resource+gru_cell_124_matmul_readvariableop_resource-gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_819682*
condR
while_cond_819681*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   22
0TensorArrayV2Stack/TensorListStack/element_shapeУ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2џ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЦ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeя
IdentityIdentitystrided_slice_3:output:0#^gru_cell_124/MatMul/ReadVariableOp%^gru_cell_124/MatMul_1/ReadVariableOp^gru_cell_124/ReadVariableOp^while*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::2H
"gru_cell_124/MatMul/ReadVariableOp"gru_cell_124/MatMul/ReadVariableOp2L
$gru_cell_124/MatMul_1/ReadVariableOp$gru_cell_124/MatMul_1/ReadVariableOp2:
gru_cell_124/ReadVariableOpgru_cell_124/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▓
Г
$__inference_signature_wrapper_820086
gru_124_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallgru_124_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__wrapped_model_8190542
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:         
'
_user_specified_namegru_124_input
УY
Р
C__inference_gru_124_layer_call_and_return_conditional_losses_819925

inputs(
$gru_cell_124_readvariableop_resource/
+gru_cell_124_matmul_readvariableop_resource1
-gru_cell_124_matmul_1_readvariableop_resource
identityѕб"gru_cell_124/MatMul/ReadVariableOpб$gru_cell_124/MatMul_1/ReadVariableOpбgru_cell_124/ReadVariableOpбwhileD
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
strided_slice/stack_2Р
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
B :У2
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
zeros/packed/1Ѓ
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
:         22
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
:         2
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
strided_slice_1/stack_2Ь
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1Ё
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
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
strided_slice_2/stack_2Ч
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask2
strided_slice_2а
gru_cell_124/ReadVariableOpReadVariableOp$gru_cell_124_readvariableop_resource*
_output_shapes
:	ќ*
dtype02
gru_cell_124/ReadVariableOpЊ
gru_cell_124/unstackUnpack#gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
gru_cell_124/unstackх
"gru_cell_124/MatMul/ReadVariableOpReadVariableOp+gru_cell_124_matmul_readvariableop_resource*
_output_shapes
:	ќ*
dtype02$
"gru_cell_124/MatMul/ReadVariableOpГ
gru_cell_124/MatMulMatMulstrided_slice_2:output:0*gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMulе
gru_cell_124/BiasAddBiasAddgru_cell_124/MatMul:product:0gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAddj
gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_124/ConstЄ
gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2
gru_cell_124/split/split_dimЯ
gru_cell_124/splitSplit%gru_cell_124/split/split_dim:output:0gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split╗
$gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp-gru_cell_124_matmul_1_readvariableop_resource*
_output_shapes
:	2ќ*
dtype02&
$gru_cell_124/MatMul_1/ReadVariableOpЕ
gru_cell_124/MatMul_1MatMulzeros:output:0,gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
gru_cell_124/MatMul_1«
gru_cell_124/BiasAdd_1BiasAddgru_cell_124/MatMul_1:product:0gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
gru_cell_124/BiasAdd_1Ђ
gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
gru_cell_124/Const_1І
gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2 
gru_cell_124/split_1/split_dimћ
gru_cell_124/split_1SplitVgru_cell_124/BiasAdd_1:output:0gru_cell_124/Const_1:output:0'gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
gru_cell_124/split_1Џ
gru_cell_124/addAddV2gru_cell_124/split:output:0gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/addЪ
gru_cell_124/add_1AddV2gru_cell_124/split:output:1gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
gru_cell_124/add_1ћ
gru_cell_124/mulMulgru_cell_124/add_1:z:0gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
gru_cell_124/mulќ
gru_cell_124/add_2AddV2gru_cell_124/split:output:2gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_2x
gru_cell_124/TanhTanhgru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/TanhЄ
gru_cell_124/mul_1Mulgru_cell_124/add:z:0zeros:output:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_1m
gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
gru_cell_124/sub/xљ
gru_cell_124/subSubgru_cell_124/sub/x:output:0gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/subј
gru_cell_124/mul_2Mulgru_cell_124/sub:z:0gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
gru_cell_124/mul_2Њ
gru_cell_124/add_3AddV2gru_cell_124/mul_1:z:0gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
gru_cell_124/add_3Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   2
TensorArrayV2_1/element_shapeИ
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
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterГ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_cell_124_readvariableop_resource+gru_cell_124_matmul_readvariableop_resource-gru_cell_124_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :         2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_819837*
condR
while_cond_819836*8
output_shapes'
%: : : : :         2: : : : : *
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   22
0TensorArrayV2Stack/TensorListStack/element_shapeУ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
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
strided_slice_3/stack_2џ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЦ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeя
IdentityIdentitystrided_slice_3:output:0#^gru_cell_124/MatMul/ReadVariableOp%^gru_cell_124/MatMul_1/ReadVariableOp^gru_cell_124/ReadVariableOp^while*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:         :::2H
"gru_cell_124/MatMul/ReadVariableOp"gru_cell_124/MatMul/ReadVariableOp2L
$gru_cell_124/MatMul_1/ReadVariableOp$gru_cell_124/MatMul_1/ReadVariableOp2:
gru_cell_124/ReadVariableOpgru_cell_124/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ь
▀
(sequential_124_gru_124_while_cond_818959J
Fsequential_124_gru_124_while_sequential_124_gru_124_while_loop_counterP
Lsequential_124_gru_124_while_sequential_124_gru_124_while_maximum_iterations,
(sequential_124_gru_124_while_placeholder.
*sequential_124_gru_124_while_placeholder_1.
*sequential_124_gru_124_while_placeholder_2L
Hsequential_124_gru_124_while_less_sequential_124_gru_124_strided_slice_1b
^sequential_124_gru_124_while_sequential_124_gru_124_while_cond_818959___redundant_placeholder0b
^sequential_124_gru_124_while_sequential_124_gru_124_while_cond_818959___redundant_placeholder1b
^sequential_124_gru_124_while_sequential_124_gru_124_while_cond_818959___redundant_placeholder2b
^sequential_124_gru_124_while_sequential_124_gru_124_while_cond_818959___redundant_placeholder3)
%sequential_124_gru_124_while_identity
с
!sequential_124/gru_124/while/LessLess(sequential_124_gru_124_while_placeholderHsequential_124_gru_124_while_less_sequential_124_gru_124_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_124/gru_124/while/Lessб
%sequential_124/gru_124/while/IdentityIdentity%sequential_124/gru_124/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_124/gru_124/while/Identity"W
%sequential_124_gru_124_while_identity.sequential_124/gru_124/while/Identity:output:0*@
_input_shapes/
-: : : : :         2: ::::: 
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
:         2:

_output_shapes
: :

_output_shapes
:
вR
Д	
gru_124_while_body_820153,
(gru_124_while_gru_124_while_loop_counter2
.gru_124_while_gru_124_while_maximum_iterations
gru_124_while_placeholder
gru_124_while_placeholder_1
gru_124_while_placeholder_2+
'gru_124_while_gru_124_strided_slice_1_0g
cgru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensor_08
4gru_124_while_gru_cell_124_readvariableop_resource_0?
;gru_124_while_gru_cell_124_matmul_readvariableop_resource_0A
=gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0
gru_124_while_identity
gru_124_while_identity_1
gru_124_while_identity_2
gru_124_while_identity_3
gru_124_while_identity_4)
%gru_124_while_gru_124_strided_slice_1e
agru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensor6
2gru_124_while_gru_cell_124_readvariableop_resource=
9gru_124_while_gru_cell_124_matmul_readvariableop_resource?
;gru_124_while_gru_cell_124_matmul_1_readvariableop_resourceѕб0gru_124/while/gru_cell_124/MatMul/ReadVariableOpб2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpб)gru_124/while/gru_cell_124/ReadVariableOpМ
?gru_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2A
?gru_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeЃ
1gru_124/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensor_0gru_124_while_placeholderHgru_124/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype023
1gru_124/while/TensorArrayV2Read/TensorListGetItem╠
)gru_124/while/gru_cell_124/ReadVariableOpReadVariableOp4gru_124_while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02+
)gru_124/while/gru_cell_124/ReadVariableOpй
"gru_124/while/gru_cell_124/unstackUnpack1gru_124/while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2$
"gru_124/while/gru_cell_124/unstackр
0gru_124/while/gru_cell_124/MatMul/ReadVariableOpReadVariableOp;gru_124_while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype022
0gru_124/while/gru_cell_124/MatMul/ReadVariableOpэ
!gru_124/while/gru_cell_124/MatMulMatMul8gru_124/while/TensorArrayV2Read/TensorListGetItem:item:08gru_124/while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2#
!gru_124/while/gru_cell_124/MatMulЯ
"gru_124/while/gru_cell_124/BiasAddBiasAdd+gru_124/while/gru_cell_124/MatMul:product:0+gru_124/while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2$
"gru_124/while/gru_cell_124/BiasAddє
 gru_124/while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2"
 gru_124/while/gru_cell_124/ConstБ
*gru_124/while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2,
*gru_124/while/gru_cell_124/split/split_dimў
 gru_124/while/gru_cell_124/splitSplit3gru_124/while/gru_cell_124/split/split_dim:output:0+gru_124/while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2"
 gru_124/while/gru_cell_124/splitу
2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp=gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype024
2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpЯ
#gru_124/while/gru_cell_124/MatMul_1MatMulgru_124_while_placeholder_2:gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2%
#gru_124/while/gru_cell_124/MatMul_1Т
$gru_124/while/gru_cell_124/BiasAdd_1BiasAdd-gru_124/while/gru_cell_124/MatMul_1:product:0+gru_124/while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2&
$gru_124/while/gru_cell_124/BiasAdd_1Ю
"gru_124/while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2$
"gru_124/while/gru_cell_124/Const_1Д
,gru_124/while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2.
,gru_124/while/gru_cell_124/split_1/split_dim┌
"gru_124/while/gru_cell_124/split_1SplitV-gru_124/while/gru_cell_124/BiasAdd_1:output:0+gru_124/while/gru_cell_124/Const_1:output:05gru_124/while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2$
"gru_124/while/gru_cell_124/split_1М
gru_124/while/gru_cell_124/addAddV2)gru_124/while/gru_cell_124/split:output:0+gru_124/while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22 
gru_124/while/gru_cell_124/addО
 gru_124/while/gru_cell_124/add_1AddV2)gru_124/while/gru_cell_124/split:output:1+gru_124/while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/add_1╠
gru_124/while/gru_cell_124/mulMul$gru_124/while/gru_cell_124/add_1:z:0+gru_124/while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22 
gru_124/while/gru_cell_124/mul╬
 gru_124/while/gru_cell_124/add_2AddV2)gru_124/while/gru_cell_124/split:output:2"gru_124/while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/add_2б
gru_124/while/gru_cell_124/TanhTanh$gru_124/while/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22!
gru_124/while/gru_cell_124/TanhЙ
 gru_124/while/gru_cell_124/mul_1Mul"gru_124/while/gru_cell_124/add:z:0gru_124_while_placeholder_2*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/mul_1Ѕ
 gru_124/while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2"
 gru_124/while/gru_cell_124/sub/x╚
gru_124/while/gru_cell_124/subSub)gru_124/while/gru_cell_124/sub/x:output:0"gru_124/while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22 
gru_124/while/gru_cell_124/subк
 gru_124/while/gru_cell_124/mul_2Mul"gru_124/while/gru_cell_124/sub:z:0#gru_124/while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/mul_2╦
 gru_124/while/gru_cell_124/add_3AddV2$gru_124/while/gru_cell_124/mul_1:z:0$gru_124/while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22"
 gru_124/while/gru_cell_124/add_3ѕ
2gru_124/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_124_while_placeholder_1gru_124_while_placeholder$gru_124/while/gru_cell_124/add_3:z:0*
_output_shapes
: *
element_dtype024
2gru_124/while/TensorArrayV2Write/TensorListSetIteml
gru_124/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_124/while/add/yЅ
gru_124/while/addAddV2gru_124_while_placeholdergru_124/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_124/while/addp
gru_124/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_124/while/add_1/yъ
gru_124/while/add_1AddV2(gru_124_while_gru_124_while_loop_countergru_124/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_124/while/add_1і
gru_124/while/IdentityIdentitygru_124/while/add_1:z:01^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
gru_124/while/IdentityЦ
gru_124/while/Identity_1Identity.gru_124_while_gru_124_while_maximum_iterations1^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
gru_124/while/Identity_1ї
gru_124/while/Identity_2Identitygru_124/while/add:z:01^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
gru_124/while/Identity_2╣
gru_124/while/Identity_3IdentityBgru_124/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
gru_124/while/Identity_3г
gru_124/while/Identity_4Identity$gru_124/while/gru_cell_124/add_3:z:01^gru_124/while/gru_cell_124/MatMul/ReadVariableOp3^gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp*^gru_124/while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22
gru_124/while/Identity_4"P
%gru_124_while_gru_124_strided_slice_1'gru_124_while_gru_124_strided_slice_1_0"|
;gru_124_while_gru_cell_124_matmul_1_readvariableop_resource=gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0"x
9gru_124_while_gru_cell_124_matmul_readvariableop_resource;gru_124_while_gru_cell_124_matmul_readvariableop_resource_0"j
2gru_124_while_gru_cell_124_readvariableop_resource4gru_124_while_gru_cell_124_readvariableop_resource_0"9
gru_124_while_identitygru_124/while/Identity:output:0"=
gru_124_while_identity_1!gru_124/while/Identity_1:output:0"=
gru_124_while_identity_2!gru_124/while/Identity_2:output:0"=
gru_124_while_identity_3!gru_124/while/Identity_3:output:0"=
gru_124_while_identity_4!gru_124/while/Identity_4:output:0"╚
agru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensorcgru_124_while_tensorarrayv2read_tensorlistgetitem_gru_124_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2d
0gru_124/while/gru_cell_124/MatMul/ReadVariableOp0gru_124/while/gru_cell_124/MatMul/ReadVariableOp2h
2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp2gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp2V
)gru_124/while/gru_cell_124/ReadVariableOp)gru_124/while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
Аj
В
(sequential_124_gru_124_while_body_818960J
Fsequential_124_gru_124_while_sequential_124_gru_124_while_loop_counterP
Lsequential_124_gru_124_while_sequential_124_gru_124_while_maximum_iterations,
(sequential_124_gru_124_while_placeholder.
*sequential_124_gru_124_while_placeholder_1.
*sequential_124_gru_124_while_placeholder_2I
Esequential_124_gru_124_while_sequential_124_gru_124_strided_slice_1_0є
Ђsequential_124_gru_124_while_tensorarrayv2read_tensorlistgetitem_sequential_124_gru_124_tensorarrayunstack_tensorlistfromtensor_0G
Csequential_124_gru_124_while_gru_cell_124_readvariableop_resource_0N
Jsequential_124_gru_124_while_gru_cell_124_matmul_readvariableop_resource_0P
Lsequential_124_gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0)
%sequential_124_gru_124_while_identity+
'sequential_124_gru_124_while_identity_1+
'sequential_124_gru_124_while_identity_2+
'sequential_124_gru_124_while_identity_3+
'sequential_124_gru_124_while_identity_4G
Csequential_124_gru_124_while_sequential_124_gru_124_strided_slice_1Ѓ
sequential_124_gru_124_while_tensorarrayv2read_tensorlistgetitem_sequential_124_gru_124_tensorarrayunstack_tensorlistfromtensorE
Asequential_124_gru_124_while_gru_cell_124_readvariableop_resourceL
Hsequential_124_gru_124_while_gru_cell_124_matmul_readvariableop_resourceN
Jsequential_124_gru_124_while_gru_cell_124_matmul_1_readvariableop_resourceѕб?sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOpбAsequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpб8sequential_124/gru_124/while/gru_cell_124/ReadVariableOpы
Nsequential_124/gru_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       2P
Nsequential_124/gru_124/while/TensorArrayV2Read/TensorListGetItem/element_shapeя
@sequential_124/gru_124/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_124_gru_124_while_tensorarrayv2read_tensorlistgetitem_sequential_124_gru_124_tensorarrayunstack_tensorlistfromtensor_0(sequential_124_gru_124_while_placeholderWsequential_124/gru_124/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02B
@sequential_124/gru_124/while/TensorArrayV2Read/TensorListGetItemщ
8sequential_124/gru_124/while/gru_cell_124/ReadVariableOpReadVariableOpCsequential_124_gru_124_while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02:
8sequential_124/gru_124/while/gru_cell_124/ReadVariableOpЖ
1sequential_124/gru_124/while/gru_cell_124/unstackUnpack@sequential_124/gru_124/while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num23
1sequential_124/gru_124/while/gru_cell_124/unstackј
?sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOpReadVariableOpJsequential_124_gru_124_while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02A
?sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOp│
0sequential_124/gru_124/while/gru_cell_124/MatMulMatMulGsequential_124/gru_124/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ22
0sequential_124/gru_124/while/gru_cell_124/MatMulю
1sequential_124/gru_124/while/gru_cell_124/BiasAddBiasAdd:sequential_124/gru_124/while/gru_cell_124/MatMul:product:0:sequential_124/gru_124/while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ23
1sequential_124/gru_124/while/gru_cell_124/BiasAddц
/sequential_124/gru_124/while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_124/gru_124/while/gru_cell_124/Const┴
9sequential_124/gru_124/while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2;
9sequential_124/gru_124/while/gru_cell_124/split/split_dimн
/sequential_124/gru_124/while/gru_cell_124/splitSplitBsequential_124/gru_124/while/gru_cell_124/split/split_dim:output:0:sequential_124/gru_124/while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split21
/sequential_124/gru_124/while/gru_cell_124/splitћ
Asequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOpLsequential_124_gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype02C
Asequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpю
2sequential_124/gru_124/while/gru_cell_124/MatMul_1MatMul*sequential_124_gru_124_while_placeholder_2Isequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ24
2sequential_124/gru_124/while/gru_cell_124/MatMul_1б
3sequential_124/gru_124/while/gru_cell_124/BiasAdd_1BiasAdd<sequential_124/gru_124/while/gru_cell_124/MatMul_1:product:0:sequential_124/gru_124/while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ25
3sequential_124/gru_124/while/gru_cell_124/BiasAdd_1╗
1sequential_124/gru_124/while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       23
1sequential_124/gru_124/while/gru_cell_124/Const_1┼
;sequential_124/gru_124/while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2=
;sequential_124/gru_124/while/gru_cell_124/split_1/split_dimЦ
1sequential_124/gru_124/while/gru_cell_124/split_1SplitV<sequential_124/gru_124/while/gru_cell_124/BiasAdd_1:output:0:sequential_124/gru_124/while/gru_cell_124/Const_1:output:0Dsequential_124/gru_124/while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split23
1sequential_124/gru_124/while/gru_cell_124/split_1Ј
-sequential_124/gru_124/while/gru_cell_124/addAddV28sequential_124/gru_124/while/gru_cell_124/split:output:0:sequential_124/gru_124/while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22/
-sequential_124/gru_124/while/gru_cell_124/addЊ
/sequential_124/gru_124/while/gru_cell_124/add_1AddV28sequential_124/gru_124/while/gru_cell_124/split:output:1:sequential_124/gru_124/while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         221
/sequential_124/gru_124/while/gru_cell_124/add_1ѕ
-sequential_124/gru_124/while/gru_cell_124/mulMul3sequential_124/gru_124/while/gru_cell_124/add_1:z:0:sequential_124/gru_124/while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22/
-sequential_124/gru_124/while/gru_cell_124/mulі
/sequential_124/gru_124/while/gru_cell_124/add_2AddV28sequential_124/gru_124/while/gru_cell_124/split:output:21sequential_124/gru_124/while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         221
/sequential_124/gru_124/while/gru_cell_124/add_2¤
.sequential_124/gru_124/while/gru_cell_124/TanhTanh3sequential_124/gru_124/while/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         220
.sequential_124/gru_124/while/gru_cell_124/TanhЩ
/sequential_124/gru_124/while/gru_cell_124/mul_1Mul1sequential_124/gru_124/while/gru_cell_124/add:z:0*sequential_124_gru_124_while_placeholder_2*
T0*'
_output_shapes
:         221
/sequential_124/gru_124/while/gru_cell_124/mul_1Д
/sequential_124/gru_124/while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?21
/sequential_124/gru_124/while/gru_cell_124/sub/xё
-sequential_124/gru_124/while/gru_cell_124/subSub8sequential_124/gru_124/while/gru_cell_124/sub/x:output:01sequential_124/gru_124/while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22/
-sequential_124/gru_124/while/gru_cell_124/subѓ
/sequential_124/gru_124/while/gru_cell_124/mul_2Mul1sequential_124/gru_124/while/gru_cell_124/sub:z:02sequential_124/gru_124/while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         221
/sequential_124/gru_124/while/gru_cell_124/mul_2Є
/sequential_124/gru_124/while/gru_cell_124/add_3AddV23sequential_124/gru_124/while/gru_cell_124/mul_1:z:03sequential_124/gru_124/while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         221
/sequential_124/gru_124/while/gru_cell_124/add_3М
Asequential_124/gru_124/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_124_gru_124_while_placeholder_1(sequential_124_gru_124_while_placeholder3sequential_124/gru_124/while/gru_cell_124/add_3:z:0*
_output_shapes
: *
element_dtype02C
Asequential_124/gru_124/while/TensorArrayV2Write/TensorListSetItemі
"sequential_124/gru_124/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_124/gru_124/while/add/y┼
 sequential_124/gru_124/while/addAddV2(sequential_124_gru_124_while_placeholder+sequential_124/gru_124/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_124/gru_124/while/addј
$sequential_124/gru_124/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_124/gru_124/while/add_1/yж
"sequential_124/gru_124/while/add_1AddV2Fsequential_124_gru_124_while_sequential_124_gru_124_while_loop_counter-sequential_124/gru_124/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_124/gru_124/while/add_1С
%sequential_124/gru_124/while/IdentityIdentity&sequential_124/gru_124/while/add_1:z:0@^sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOpB^sequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp9^sequential_124/gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_124/gru_124/while/Identityј
'sequential_124/gru_124/while/Identity_1IdentityLsequential_124_gru_124_while_sequential_124_gru_124_while_maximum_iterations@^sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOpB^sequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp9^sequential_124/gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2)
'sequential_124/gru_124/while/Identity_1Т
'sequential_124/gru_124/while/Identity_2Identity$sequential_124/gru_124/while/add:z:0@^sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOpB^sequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp9^sequential_124/gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2)
'sequential_124/gru_124/while/Identity_2Њ
'sequential_124/gru_124/while/Identity_3IdentityQsequential_124/gru_124/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOpB^sequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp9^sequential_124/gru_124/while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2)
'sequential_124/gru_124/while/Identity_3є
'sequential_124/gru_124/while/Identity_4Identity3sequential_124/gru_124/while/gru_cell_124/add_3:z:0@^sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOpB^sequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp9^sequential_124/gru_124/while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22)
'sequential_124/gru_124/while/Identity_4"џ
Jsequential_124_gru_124_while_gru_cell_124_matmul_1_readvariableop_resourceLsequential_124_gru_124_while_gru_cell_124_matmul_1_readvariableop_resource_0"ќ
Hsequential_124_gru_124_while_gru_cell_124_matmul_readvariableop_resourceJsequential_124_gru_124_while_gru_cell_124_matmul_readvariableop_resource_0"ѕ
Asequential_124_gru_124_while_gru_cell_124_readvariableop_resourceCsequential_124_gru_124_while_gru_cell_124_readvariableop_resource_0"W
%sequential_124_gru_124_while_identity.sequential_124/gru_124/while/Identity:output:0"[
'sequential_124_gru_124_while_identity_10sequential_124/gru_124/while/Identity_1:output:0"[
'sequential_124_gru_124_while_identity_20sequential_124/gru_124/while/Identity_2:output:0"[
'sequential_124_gru_124_while_identity_30sequential_124/gru_124/while/Identity_3:output:0"[
'sequential_124_gru_124_while_identity_40sequential_124/gru_124/while/Identity_4:output:0"ї
Csequential_124_gru_124_while_sequential_124_gru_124_strided_slice_1Esequential_124_gru_124_while_sequential_124_gru_124_strided_slice_1_0"Ё
sequential_124_gru_124_while_tensorarrayv2read_tensorlistgetitem_sequential_124_gru_124_tensorarrayunstack_tensorlistfromtensorЂsequential_124_gru_124_while_tensorarrayv2read_tensorlistgetitem_sequential_124_gru_124_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2ѓ
?sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOp?sequential_124/gru_124/while/gru_cell_124/MatMul/ReadVariableOp2є
Asequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOpAsequential_124/gru_124/while/gru_cell_124/MatMul_1/ReadVariableOp2t
8sequential_124/gru_124/while/gru_cell_124/ReadVariableOp8sequential_124/gru_124/while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
»F
и
while_body_820837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_124_readvariableop_resource_07
3while_gru_cell_124_matmul_readvariableop_resource_09
5while_gru_cell_124_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_124_readvariableop_resource5
1while_gru_cell_124_matmul_readvariableop_resource7
3while_gru_cell_124_matmul_1_readvariableop_resourceѕб(while/gru_cell_124/MatMul/ReadVariableOpб*while/gru_cell_124/MatMul_1/ReadVariableOpб!while/gru_cell_124/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem┤
!while/gru_cell_124/ReadVariableOpReadVariableOp,while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02#
!while/gru_cell_124/ReadVariableOpЦ
while/gru_cell_124/unstackUnpack)while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
while/gru_cell_124/unstack╔
(while/gru_cell_124/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02*
(while/gru_cell_124/MatMul/ReadVariableOpО
while/gru_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul└
while/gru_cell_124/BiasAddBiasAdd#while/gru_cell_124/MatMul:product:0#while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAddv
while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_124/ConstЊ
"while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"while/gru_cell_124/split/split_dimЭ
while/gru_cell_124/splitSplit+while/gru_cell_124/split/split_dim:output:0#while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split¤
*while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype02,
*while/gru_cell_124/MatMul_1/ReadVariableOp└
while/gru_cell_124/MatMul_1MatMulwhile_placeholder_22while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul_1к
while/gru_cell_124/BiasAdd_1BiasAdd%while/gru_cell_124/MatMul_1:product:0#while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAdd_1Ї
while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
while/gru_cell_124/Const_1Ќ
$while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$while/gru_cell_124/split_1/split_dim▓
while/gru_cell_124/split_1SplitV%while/gru_cell_124/BiasAdd_1:output:0#while/gru_cell_124/Const_1:output:0-while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split_1│
while/gru_cell_124/addAddV2!while/gru_cell_124/split:output:0#while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/addи
while/gru_cell_124/add_1AddV2!while/gru_cell_124/split:output:1#while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_1г
while/gru_cell_124/mulMulwhile/gru_cell_124/add_1:z:0#while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul«
while/gru_cell_124/add_2AddV2!while/gru_cell_124/split:output:2while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_2і
while/gru_cell_124/TanhTanhwhile/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/Tanhъ
while/gru_cell_124/mul_1Mulwhile/gru_cell_124/add:z:0while_placeholder_2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_1y
while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
while/gru_cell_124/sub/xе
while/gru_cell_124/subSub!while/gru_cell_124/sub/x:output:0while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/subд
while/gru_cell_124/mul_2Mulwhile/gru_cell_124/sub:z:0while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_2Ф
while/gru_cell_124/add_3AddV2while/gru_cell_124/mul_1:z:0while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_3Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_124/add_3:z:0*
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
while/add_1┌
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityь
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1▄
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ѕ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identitywhile/gru_cell_124/add_3:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22
while/Identity_4"l
3while_gru_cell_124_matmul_1_readvariableop_resource5while_gru_cell_124_matmul_1_readvariableop_resource_0"h
1while_gru_cell_124_matmul_readvariableop_resource3while_gru_cell_124_matmul_readvariableop_resource_0"Z
*while_gru_cell_124_readvariableop_resource,while_gru_cell_124_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2T
(while/gru_cell_124/MatMul/ReadVariableOp(while/gru_cell_124/MatMul/ReadVariableOp2X
*while/gru_cell_124/MatMul_1/ReadVariableOp*while/gru_cell_124/MatMul_1/ReadVariableOp2F
!while/gru_cell_124/ReadVariableOp!while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
»F
и
while_body_819682
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
,while_gru_cell_124_readvariableop_resource_07
3while_gru_cell_124_matmul_readvariableop_resource_09
5while_gru_cell_124_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
*while_gru_cell_124_readvariableop_resource5
1while_gru_cell_124_matmul_readvariableop_resource7
3while_gru_cell_124_matmul_1_readvariableop_resourceѕб(while/gru_cell_124/MatMul/ReadVariableOpб*while/gru_cell_124/MatMul_1/ReadVariableOpб!while/gru_cell_124/ReadVariableOp├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem┤
!while/gru_cell_124/ReadVariableOpReadVariableOp,while_gru_cell_124_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02#
!while/gru_cell_124/ReadVariableOpЦ
while/gru_cell_124/unstackUnpack)while/gru_cell_124/ReadVariableOp:value:0*
T0*"
_output_shapes
:ќ:ќ*	
num2
while/gru_cell_124/unstack╔
(while/gru_cell_124/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_124_matmul_readvariableop_resource_0*
_output_shapes
:	ќ*
dtype02*
(while/gru_cell_124/MatMul/ReadVariableOpО
while/gru_cell_124/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul└
while/gru_cell_124/BiasAddBiasAdd#while/gru_cell_124/MatMul:product:0#while/gru_cell_124/unstack:output:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAddv
while/gru_cell_124/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_124/ConstЊ
"while/gru_cell_124/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2$
"while/gru_cell_124/split/split_dimЭ
while/gru_cell_124/splitSplit+while/gru_cell_124/split/split_dim:output:0#while/gru_cell_124/BiasAdd:output:0*
T0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split¤
*while/gru_cell_124/MatMul_1/ReadVariableOpReadVariableOp5while_gru_cell_124_matmul_1_readvariableop_resource_0*
_output_shapes
:	2ќ*
dtype02,
*while/gru_cell_124/MatMul_1/ReadVariableOp└
while/gru_cell_124/MatMul_1MatMulwhile_placeholder_22while/gru_cell_124/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/MatMul_1к
while/gru_cell_124/BiasAdd_1BiasAdd%while/gru_cell_124/MatMul_1:product:0#while/gru_cell_124/unstack:output:1*
T0*(
_output_shapes
:         ќ2
while/gru_cell_124/BiasAdd_1Ї
while/gru_cell_124/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2       2
while/gru_cell_124/Const_1Ќ
$while/gru_cell_124/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
         2&
$while/gru_cell_124/split_1/split_dim▓
while/gru_cell_124/split_1SplitV%while/gru_cell_124/BiasAdd_1:output:0#while/gru_cell_124/Const_1:output:0-while/gru_cell_124/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:         2:         2:         2*
	num_split2
while/gru_cell_124/split_1│
while/gru_cell_124/addAddV2!while/gru_cell_124/split:output:0#while/gru_cell_124/split_1:output:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/addи
while/gru_cell_124/add_1AddV2!while/gru_cell_124/split:output:1#while/gru_cell_124/split_1:output:1*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_1г
while/gru_cell_124/mulMulwhile/gru_cell_124/add_1:z:0#while/gru_cell_124/split_1:output:2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul«
while/gru_cell_124/add_2AddV2!while/gru_cell_124/split:output:2while/gru_cell_124/mul:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_2і
while/gru_cell_124/TanhTanhwhile/gru_cell_124/add_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/Tanhъ
while/gru_cell_124/mul_1Mulwhile/gru_cell_124/add:z:0while_placeholder_2*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_1y
while/gru_cell_124/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2
while/gru_cell_124/sub/xе
while/gru_cell_124/subSub!while/gru_cell_124/sub/x:output:0while/gru_cell_124/add:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/subд
while/gru_cell_124/mul_2Mulwhile/gru_cell_124/sub:z:0while/gru_cell_124/Tanh:y:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/mul_2Ф
while/gru_cell_124/add_3AddV2while/gru_cell_124/mul_1:z:0while/gru_cell_124/mul_2:z:0*
T0*'
_output_shapes
:         22
while/gru_cell_124/add_3Я
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_124/add_3:z:0*
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
while/add_1┌
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityь
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1▄
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2Ѕ
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3Ч
while/Identity_4Identitywhile/gru_cell_124/add_3:z:0)^while/gru_cell_124/MatMul/ReadVariableOp+^while/gru_cell_124/MatMul_1/ReadVariableOp"^while/gru_cell_124/ReadVariableOp*
T0*'
_output_shapes
:         22
while/Identity_4"l
3while_gru_cell_124_matmul_1_readvariableop_resource5while_gru_cell_124_matmul_1_readvariableop_resource_0"h
1while_gru_cell_124_matmul_readvariableop_resource3while_gru_cell_124_matmul_readvariableop_resource_0"Z
*while_gru_cell_124_readvariableop_resource,while_gru_cell_124_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :         2: : :::2T
(while/gru_cell_124/MatMul/ReadVariableOp(while/gru_cell_124/MatMul/ReadVariableOp2X
*while/gru_cell_124/MatMul_1/ReadVariableOp*while/gru_cell_124/MatMul_1/ReadVariableOp2F
!while/gru_cell_124/ReadVariableOp!while/gru_cell_124/ReadVariableOp: 
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
:         2:

_output_shapes
: :

_output_shapes
: 
Ѓ
Ќ
J__inference_sequential_124_layer_call_and_return_conditional_losses_820048

inputs
gru_124_820035
gru_124_820037
gru_124_820039
dense_124_820042
dense_124_820044
identityѕб!dense_124/StatefulPartitionedCallбgru_124/StatefulPartitionedCallА
gru_124/StatefulPartitionedCallStatefulPartitionedCallinputsgru_124_820035gru_124_820037gru_124_820039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_gru_124_layer_call_and_return_conditional_losses_8199252!
gru_124/StatefulPartitionedCall╗
!dense_124/StatefulPartitionedCallStatefulPartitionedCall(gru_124/StatefulPartitionedCall:output:0dense_124_820042dense_124_820044*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_124_layer_call_and_return_conditional_losses_8199652#
!dense_124/StatefulPartitionedCall─
IdentityIdentity*dense_124/StatefulPartitionedCall:output:0"^dense_124/StatefulPartitionedCall ^gru_124/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:         :::::2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2B
gru_124/StatefulPartitionedCallgru_124/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Я	
»
-__inference_gru_cell_124_layer_call_fn_821211

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ѕбStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_8191242
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identityњ

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:         :         2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0
Њ	
я
E__inference_dense_124_layer_call_and_return_conditional_losses_821112

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЇ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddЋ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*.
_input_shapes
:         2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╝
serving_defaultе
K
gru_124_input:
serving_default_gru_124_input:0         =
	dense_1240
StatefulPartitionedCall:0         tensorflow/serving/predict:вЎ
 !
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
G__call__"Т
_tf_keras_sequentialК{"class_name": "Sequential", "name": "sequential_124", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_124", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_124_input"}}, {"class_name": "GRU", "config": {"name": "gru_124", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}, {"class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 3]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_124", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_124_input"}}, {"class_name": "GRU", "config": {"name": "gru_124", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}, {"class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mae", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
г
	cell


state_spec
regularization_losses
trainable_variables
	variables
	keras_api
*H&call_and_return_all_conditional_losses
I__call__"Ѓ
_tf_keras_rnn_layerт
{"class_name": "GRU", "name": "gru_124", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_124", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 3]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 3]}}
ш

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*J&call_and_return_all_conditional_losses
K__call__"л
_tf_keras_layerХ{"class_name": "Dense", "name": "dense_124", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
Г
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
╩

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
Б

kernel
recurrent_kernel
bias
"regularization_losses
#trainable_variables
$	variables
%	keras_api
*M&call_and_return_all_conditional_losses
N__call__"У
_tf_keras_layer╬{"class_name": "GRUCell", "name": "gru_cell_124", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_cell_124", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}
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
╣

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
": 22dense_124/kernel
:2dense_124/bias
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
Г

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
.:,	ќ2gru_124/gru_cell_124/kernel
8:6	2ќ2%gru_124/gru_cell_124/recurrent_kernel
,:*	ќ2gru_124/gru_cell_124/bias
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
Г

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
╗
	7total
	8count
9	variables
:	keras_api"ё
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
':%22Adam/dense_124/kernel/m
!:2Adam/dense_124/bias/m
3:1	ќ2"Adam/gru_124/gru_cell_124/kernel/m
=:;	2ќ2,Adam/gru_124/gru_cell_124/recurrent_kernel/m
1:/	ќ2 Adam/gru_124/gru_cell_124/bias/m
':%22Adam/dense_124/kernel/v
!:2Adam/dense_124/bias/v
3:1	ќ2"Adam/gru_124/gru_cell_124/kernel/v
=:;	2ќ2,Adam/gru_124/gru_cell_124/recurrent_kernel/v
1:/	ќ2 Adam/gru_124/gru_cell_124/bias/v
ж2Т
!__inference__wrapped_model_819054└
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *0б-
+і(
gru_124_input         
Ш2з
J__inference_sequential_124_layer_call_and_return_conditional_losses_820247
J__inference_sequential_124_layer_call_and_return_conditional_losses_819998
J__inference_sequential_124_layer_call_and_return_conditional_losses_820408
J__inference_sequential_124_layer_call_and_return_conditional_losses_819982└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
і2Є
/__inference_sequential_124_layer_call_fn_820438
/__inference_sequential_124_layer_call_fn_820030
/__inference_sequential_124_layer_call_fn_820061
/__inference_sequential_124_layer_call_fn_820423└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
№2В
C__inference_gru_124_layer_call_and_return_conditional_losses_820593
C__inference_gru_124_layer_call_and_return_conditional_losses_820925
C__inference_gru_124_layer_call_and_return_conditional_losses_821080
C__inference_gru_124_layer_call_and_return_conditional_losses_820748Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ѓ2ђ
(__inference_gru_124_layer_call_fn_821091
(__inference_gru_124_layer_call_fn_821102
(__inference_gru_124_layer_call_fn_820770
(__inference_gru_124_layer_call_fn_820759Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
№2В
E__inference_dense_124_layer_call_and_return_conditional_losses_821112б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
н2Л
*__inference_dense_124_layer_call_fn_821121б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЛB╬
$__inference_signature_wrapper_820086gru_124_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
п2Н
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_821159
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_821197Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
б2Ъ
-__inference_gru_cell_124_layer_call_fn_821211
-__inference_gru_cell_124_layer_call_fn_821225Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 Ъ
!__inference__wrapped_model_819054z:б7
0б-
+і(
gru_124_input         
ф "5ф2
0
	dense_124#і 
	dense_124         Ц
E__inference_dense_124_layer_call_and_return_conditional_losses_821112\/б,
%б"
 і
inputs         2
ф "%б"
і
0         
џ }
*__inference_dense_124_layer_call_fn_821121O/б,
%б"
 і
inputs         2
ф "і         ─
C__inference_gru_124_layer_call_and_return_conditional_losses_820593}OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%б"
і
0         2
џ ─
C__inference_gru_124_layer_call_and_return_conditional_losses_820748}OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%б"
і
0         2
џ ┤
C__inference_gru_124_layer_call_and_return_conditional_losses_820925m?б<
5б2
$і!
inputs         

 
p

 
ф "%б"
і
0         2
џ ┤
C__inference_gru_124_layer_call_and_return_conditional_losses_821080m?б<
5б2
$і!
inputs         

 
p 

 
ф "%б"
і
0         2
џ ю
(__inference_gru_124_layer_call_fn_820759pOбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "і         2ю
(__inference_gru_124_layer_call_fn_820770pOбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "і         2ї
(__inference_gru_124_layer_call_fn_821091`?б<
5б2
$і!
inputs         

 
p

 
ф "і         2ї
(__inference_gru_124_layer_call_fn_821102`?б<
5б2
$і!
inputs         

 
p 

 
ф "і         2ё
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_821159и\бY
RбO
 і
inputs         
'б$
"і
states/0         2
p
ф "RбO
HбE
і
0/0         2
$џ!
і
0/1/0         2
џ ё
H__inference_gru_cell_124_layer_call_and_return_conditional_losses_821197и\бY
RбO
 і
inputs         
'б$
"і
states/0         2
p 
ф "RбO
HбE
і
0/0         2
$џ!
і
0/1/0         2
џ █
-__inference_gru_cell_124_layer_call_fn_821211Е\бY
RбO
 і
inputs         
'б$
"і
states/0         2
p
ф "DбA
і
0         2
"џ
і
1/0         2█
-__inference_gru_cell_124_layer_call_fn_821225Е\бY
RбO
 і
inputs         
'б$
"і
states/0         2
p 
ф "DбA
і
0         2
"џ
і
1/0         2└
J__inference_sequential_124_layer_call_and_return_conditional_losses_819982rBб?
8б5
+і(
gru_124_input         
p

 
ф "%б"
і
0         
џ └
J__inference_sequential_124_layer_call_and_return_conditional_losses_819998rBб?
8б5
+і(
gru_124_input         
p 

 
ф "%б"
і
0         
џ ╣
J__inference_sequential_124_layer_call_and_return_conditional_losses_820247k;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ ╣
J__inference_sequential_124_layer_call_and_return_conditional_losses_820408k;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ ў
/__inference_sequential_124_layer_call_fn_820030eBб?
8б5
+і(
gru_124_input         
p

 
ф "і         ў
/__inference_sequential_124_layer_call_fn_820061eBб?
8б5
+і(
gru_124_input         
p 

 
ф "і         Љ
/__inference_sequential_124_layer_call_fn_820423^;б8
1б.
$і!
inputs         
p

 
ф "і         Љ
/__inference_sequential_124_layer_call_fn_820438^;б8
1б.
$і!
inputs         
p 

 
ф "і         ┤
$__inference_signature_wrapper_820086ІKбH
б 
Aф>
<
gru_124_input+і(
gru_124_input         "5ф2
0
	dense_124#і 
	dense_124         