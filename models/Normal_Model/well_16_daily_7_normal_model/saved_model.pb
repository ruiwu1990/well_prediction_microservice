ц
м
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
О
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
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

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.4.12v2.4.0-49-g85c8b2a817f8ож
z
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2* 
shared_namedense_34/kernel
s
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes

:2*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
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

gru_34/gru_cell_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	**
shared_namegru_34/gru_cell_34/kernel

-gru_34/gru_cell_34/kernel/Read/ReadVariableOpReadVariableOpgru_34/gru_cell_34/kernel*
_output_shapes
:	*
dtype0
Ѓ
#gru_34/gru_cell_34/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*4
shared_name%#gru_34/gru_cell_34/recurrent_kernel

7gru_34/gru_cell_34/recurrent_kernel/Read/ReadVariableOpReadVariableOp#gru_34/gru_cell_34/recurrent_kernel*
_output_shapes
:	2*
dtype0

gru_34/gru_cell_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_namegru_34/gru_cell_34/bias

+gru_34/gru_cell_34/bias/Read/ReadVariableOpReadVariableOpgru_34/gru_cell_34/bias*
_output_shapes
:	*
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

Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_34/kernel/m

*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m*
_output_shapes

:2*
dtype0

Adam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/m
y
(Adam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/m*
_output_shapes
:*
dtype0

 Adam/gru_34/gru_cell_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/gru_34/gru_cell_34/kernel/m

4Adam/gru_34/gru_cell_34/kernel/m/Read/ReadVariableOpReadVariableOp Adam/gru_34/gru_cell_34/kernel/m*
_output_shapes
:	*
dtype0
Б
*Adam/gru_34/gru_cell_34/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*;
shared_name,*Adam/gru_34/gru_cell_34/recurrent_kernel/m
Њ
>Adam/gru_34/gru_cell_34/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gru_34/gru_cell_34/recurrent_kernel/m*
_output_shapes
:	2*
dtype0

Adam/gru_34/gru_cell_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name Adam/gru_34/gru_cell_34/bias/m

2Adam/gru_34/gru_cell_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_34/gru_cell_34/bias/m*
_output_shapes
:	*
dtype0

Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*'
shared_nameAdam/dense_34/kernel/v

*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v*
_output_shapes

:2*
dtype0

Adam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/v
y
(Adam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/v*
_output_shapes
:*
dtype0

 Adam/gru_34/gru_cell_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" Adam/gru_34/gru_cell_34/kernel/v

4Adam/gru_34/gru_cell_34/kernel/v/Read/ReadVariableOpReadVariableOp Adam/gru_34/gru_cell_34/kernel/v*
_output_shapes
:	*
dtype0
Б
*Adam/gru_34/gru_cell_34/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2*;
shared_name,*Adam/gru_34/gru_cell_34/recurrent_kernel/v
Њ
>Adam/gru_34/gru_cell_34/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gru_34/gru_cell_34/recurrent_kernel/v*
_output_shapes
:	2*
dtype0

Adam/gru_34/gru_cell_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name Adam/gru_34/gru_cell_34/bias/v

2Adam/gru_34/gru_cell_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_34/gru_cell_34/bias/v*
_output_shapes
:	*
dtype0

NoOpNoOp
!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*С 
valueЗ BД  B­ 
П
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

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
­

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
Й

&layers
regularization_losses
trainable_variables
	variables
'non_trainable_variables
(layer_metrics

)states
*metrics
+layer_regularization_losses
[Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_34/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­

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
_]
VARIABLE_VALUEgru_34/gru_cell_34/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#gru_34/gru_cell_34/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEgru_34/gru_cell_34/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
­

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
~|
VARIABLE_VALUEAdam/dense_34/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_34/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/gru_34/gru_cell_34/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/gru_34/gru_cell_34/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_34/gru_cell_34/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_34/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_34/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/gru_34/gru_cell_34/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/gru_34/gru_cell_34/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_34/gru_cell_34/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_gru_34_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
К
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_34_inputgru_34/gru_cell_34/biasgru_34/gru_cell_34/kernel#gru_34/gru_cell_34/recurrent_kerneldense_34/kerneldense_34/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_230204
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
э	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-gru_34/gru_cell_34/kernel/Read/ReadVariableOp7gru_34/gru_cell_34/recurrent_kernel/Read/ReadVariableOp+gru_34/gru_cell_34/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_34/kernel/m/Read/ReadVariableOp(Adam/dense_34/bias/m/Read/ReadVariableOp4Adam/gru_34/gru_cell_34/kernel/m/Read/ReadVariableOp>Adam/gru_34/gru_cell_34/recurrent_kernel/m/Read/ReadVariableOp2Adam/gru_34/gru_cell_34/bias/m/Read/ReadVariableOp*Adam/dense_34/kernel/v/Read/ReadVariableOp(Adam/dense_34/bias/v/Read/ReadVariableOp4Adam/gru_34/gru_cell_34/kernel/v/Read/ReadVariableOp>Adam/gru_34/gru_cell_34/recurrent_kernel/v/Read/ReadVariableOp2Adam/gru_34/gru_cell_34/bias/v/Read/ReadVariableOpConst*#
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
GPU 2J 8 *(
f#R!
__inference__traced_save_231432
А
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_34/kerneldense_34/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_34/gru_cell_34/kernel#gru_34/gru_cell_34/recurrent_kernelgru_34/gru_cell_34/biastotalcountAdam/dense_34/kernel/mAdam/dense_34/bias/m Adam/gru_34/gru_cell_34/kernel/m*Adam/gru_34/gru_cell_34/recurrent_kernel/mAdam/gru_34/gru_cell_34/bias/mAdam/dense_34/kernel/vAdam/dense_34/bias/v Adam/gru_34/gru_cell_34/kernel/v*Adam/gru_34/gru_cell_34/recurrent_kernel/vAdam/gru_34/gru_cell_34/bias/v*"
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_231508ёђ
ЏP
	
gru_34_while_body_230432*
&gru_34_while_gru_34_while_loop_counter0
,gru_34_while_gru_34_while_maximum_iterations
gru_34_while_placeholder
gru_34_while_placeholder_1
gru_34_while_placeholder_2)
%gru_34_while_gru_34_strided_slice_1_0e
agru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensor_06
2gru_34_while_gru_cell_34_readvariableop_resource_0=
9gru_34_while_gru_cell_34_matmul_readvariableop_resource_0?
;gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0
gru_34_while_identity
gru_34_while_identity_1
gru_34_while_identity_2
gru_34_while_identity_3
gru_34_while_identity_4'
#gru_34_while_gru_34_strided_slice_1c
_gru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensor4
0gru_34_while_gru_cell_34_readvariableop_resource;
7gru_34_while_gru_cell_34_matmul_readvariableop_resource=
9gru_34_while_gru_cell_34_matmul_1_readvariableop_resourceЂ.gru_34/while/gru_cell_34/MatMul/ReadVariableOpЂ0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOpЂ'gru_34/while/gru_cell_34/ReadVariableOpб
>gru_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>gru_34/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0gru_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensor_0gru_34_while_placeholderGgru_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0gru_34/while/TensorArrayV2Read/TensorListGetItemЦ
'gru_34/while/gru_cell_34/ReadVariableOpReadVariableOp2gru_34_while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'gru_34/while/gru_cell_34/ReadVariableOpЗ
 gru_34/while/gru_cell_34/unstackUnpack/gru_34/while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2"
 gru_34/while/gru_cell_34/unstackл
.gru_34/while/gru_cell_34/MatMul/ReadVariableOpReadVariableOp9gru_34_while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype020
.gru_34/while/gru_cell_34/MatMul/ReadVariableOp№
gru_34/while/gru_cell_34/MatMulMatMul7gru_34/while/TensorArrayV2Read/TensorListGetItem:item:06gru_34/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
gru_34/while/gru_cell_34/MatMulи
 gru_34/while/gru_cell_34/BiasAddBiasAdd)gru_34/while/gru_cell_34/MatMul:product:0)gru_34/while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 gru_34/while/gru_cell_34/BiasAdd
gru_34/while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
gru_34/while/gru_cell_34/Const
(gru_34/while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2*
(gru_34/while/gru_cell_34/split/split_dim
gru_34/while/gru_cell_34/splitSplit1gru_34/while/gru_cell_34/split/split_dim:output:0)gru_34/while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2 
gru_34/while/gru_cell_34/splitс
0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp;gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype022
0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOpй
!gru_34/while/gru_cell_34/MatMul_1MatMulgru_34_while_placeholder_28gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!gru_34/while/gru_cell_34/MatMul_1о
"gru_34/while/gru_cell_34/BiasAdd_1BiasAdd+gru_34/while/gru_cell_34/MatMul_1:product:0)gru_34/while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2$
"gru_34/while/gru_cell_34/BiasAdd_1
 gru_34/while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2"
 gru_34/while/gru_cell_34/Const_1Ѓ
*gru_34/while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2,
*gru_34/while/gru_cell_34/split_1/split_dimа
 gru_34/while/gru_cell_34/split_1SplitV+gru_34/while/gru_cell_34/BiasAdd_1:output:0)gru_34/while/gru_cell_34/Const_1:output:03gru_34/while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2"
 gru_34/while/gru_cell_34/split_1Ы
gru_34/while/gru_cell_34/addAddV2'gru_34/while/gru_cell_34/split:output:0)gru_34/while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/gru_cell_34/addЯ
gru_34/while/gru_cell_34/add_1AddV2'gru_34/while/gru_cell_34/split:output:1)gru_34/while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/add_1Ф
gru_34/while/gru_cell_34/mulMul"gru_34/while/gru_cell_34/add_1:z:0)gru_34/while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/gru_cell_34/mulЦ
gru_34/while/gru_cell_34/add_2AddV2'gru_34/while/gru_cell_34/split:output:2 gru_34/while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/add_2
gru_34/while/gru_cell_34/TanhTanh"gru_34/while/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/gru_cell_34/TanhЗ
gru_34/while/gru_cell_34/mul_1Mul gru_34/while/gru_cell_34/add:z:0gru_34_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/mul_1
gru_34/while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
gru_34/while/gru_cell_34/sub/xР
gru_34/while/gru_cell_34/subSub'gru_34/while/gru_cell_34/sub/x:output:0 gru_34/while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/gru_cell_34/subО
gru_34/while/gru_cell_34/mul_2Mul gru_34/while/gru_cell_34/sub:z:0!gru_34/while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/mul_2У
gru_34/while/gru_cell_34/add_3AddV2"gru_34/while/gru_cell_34/mul_1:z:0"gru_34/while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/add_3
1gru_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_34_while_placeholder_1gru_34_while_placeholder"gru_34/while/gru_cell_34/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_34/while/TensorArrayV2Write/TensorListSetItemj
gru_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_34/while/add/y
gru_34/while/addAddV2gru_34_while_placeholdergru_34/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_34/while/addn
gru_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_34/while/add_1/y
gru_34/while/add_1AddV2&gru_34_while_gru_34_while_loop_countergru_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_34/while/add_1
gru_34/while/IdentityIdentitygru_34/while/add_1:z:0/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
gru_34/while/Identity
gru_34/while/Identity_1Identity,gru_34_while_gru_34_while_maximum_iterations/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
gru_34/while/Identity_1
gru_34/while/Identity_2Identitygru_34/while/add:z:0/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
gru_34/while/Identity_2А
gru_34/while/Identity_3IdentityAgru_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
gru_34/while/Identity_3Ђ
gru_34/while/Identity_4Identity"gru_34/while/gru_cell_34/add_3:z:0/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/Identity_4"L
#gru_34_while_gru_34_strided_slice_1%gru_34_while_gru_34_strided_slice_1_0"x
9gru_34_while_gru_cell_34_matmul_1_readvariableop_resource;gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0"t
7gru_34_while_gru_cell_34_matmul_readvariableop_resource9gru_34_while_gru_cell_34_matmul_readvariableop_resource_0"f
0gru_34_while_gru_cell_34_readvariableop_resource2gru_34_while_gru_cell_34_readvariableop_resource_0"7
gru_34_while_identitygru_34/while/Identity:output:0";
gru_34_while_identity_1 gru_34/while/Identity_1:output:0";
gru_34_while_identity_2 gru_34/while/Identity_2:output:0";
gru_34_while_identity_3 gru_34/while/Identity_3:output:0";
gru_34_while_identity_4 gru_34/while/Identity_4:output:0"Ф
_gru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensoragru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2`
.gru_34/while/gru_cell_34/MatMul/ReadVariableOp.gru_34/while/gru_cell_34/MatMul/ReadVariableOp2d
0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp2R
'gru_34/while/gru_cell_34/ReadVariableOp'gru_34/while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
а
Њ
while_cond_230954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_230954___redundant_placeholder04
0while_while_cond_230954___redundant_placeholder14
0while_while_cond_230954___redundant_placeholder24
0while_while_cond_230954___redundant_placeholder3
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
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:


'__inference_gru_34_layer_call_fn_230877
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_34_layer_call_and_return_conditional_losses_2296032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
о	
Ў
,__inference_gru_cell_34_layer_call_fn_231329

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ЂStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_2292422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:џџџџџџџџџ:џџџџџџџџџ2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0
е
Љ
!__inference__wrapped_model_229172
gru_34_input<
8sequential_34_gru_34_gru_cell_34_readvariableop_resourceC
?sequential_34_gru_34_gru_cell_34_matmul_readvariableop_resourceE
Asequential_34_gru_34_gru_cell_34_matmul_1_readvariableop_resource9
5sequential_34_dense_34_matmul_readvariableop_resource:
6sequential_34_dense_34_biasadd_readvariableop_resource
identityЂ-sequential_34/dense_34/BiasAdd/ReadVariableOpЂ,sequential_34/dense_34/MatMul/ReadVariableOpЂ6sequential_34/gru_34/gru_cell_34/MatMul/ReadVariableOpЂ8sequential_34/gru_34/gru_cell_34/MatMul_1/ReadVariableOpЂ/sequential_34/gru_34/gru_cell_34/ReadVariableOpЂsequential_34/gru_34/whilet
sequential_34/gru_34/ShapeShapegru_34_input*
T0*
_output_shapes
:2
sequential_34/gru_34/Shape
(sequential_34/gru_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_34/gru_34/strided_slice/stackЂ
*sequential_34/gru_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_34/gru_34/strided_slice/stack_1Ђ
*sequential_34/gru_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_34/gru_34/strided_slice/stack_2р
"sequential_34/gru_34/strided_sliceStridedSlice#sequential_34/gru_34/Shape:output:01sequential_34/gru_34/strided_slice/stack:output:03sequential_34/gru_34/strided_slice/stack_1:output:03sequential_34/gru_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_34/gru_34/strided_slice
 sequential_34/gru_34/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22"
 sequential_34/gru_34/zeros/mul/yР
sequential_34/gru_34/zeros/mulMul+sequential_34/gru_34/strided_slice:output:0)sequential_34/gru_34/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_34/gru_34/zeros/mul
!sequential_34/gru_34/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2#
!sequential_34/gru_34/zeros/Less/yЛ
sequential_34/gru_34/zeros/LessLess"sequential_34/gru_34/zeros/mul:z:0*sequential_34/gru_34/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_34/gru_34/zeros/Less
#sequential_34/gru_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22%
#sequential_34/gru_34/zeros/packed/1з
!sequential_34/gru_34/zeros/packedPack+sequential_34/gru_34/strided_slice:output:0,sequential_34/gru_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_34/gru_34/zeros/packed
 sequential_34/gru_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_34/gru_34/zeros/ConstЩ
sequential_34/gru_34/zerosFill*sequential_34/gru_34/zeros/packed:output:0)sequential_34/gru_34/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
sequential_34/gru_34/zeros
#sequential_34/gru_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_34/gru_34/transpose/permП
sequential_34/gru_34/transpose	Transposegru_34_input,sequential_34/gru_34/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2 
sequential_34/gru_34/transpose
sequential_34/gru_34/Shape_1Shape"sequential_34/gru_34/transpose:y:0*
T0*
_output_shapes
:2
sequential_34/gru_34/Shape_1Ђ
*sequential_34/gru_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_34/gru_34/strided_slice_1/stackІ
,sequential_34/gru_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_34/gru_34/strided_slice_1/stack_1І
,sequential_34/gru_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_34/gru_34/strided_slice_1/stack_2ь
$sequential_34/gru_34/strided_slice_1StridedSlice%sequential_34/gru_34/Shape_1:output:03sequential_34/gru_34/strided_slice_1/stack:output:05sequential_34/gru_34/strided_slice_1/stack_1:output:05sequential_34/gru_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_34/gru_34/strided_slice_1Џ
0sequential_34/gru_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ22
0sequential_34/gru_34/TensorArrayV2/element_shape
"sequential_34/gru_34/TensorArrayV2TensorListReserve9sequential_34/gru_34/TensorArrayV2/element_shape:output:0-sequential_34/gru_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_34/gru_34/TensorArrayV2щ
Jsequential_34/gru_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2L
Jsequential_34/gru_34/TensorArrayUnstack/TensorListFromTensor/element_shapeЬ
<sequential_34/gru_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_34/gru_34/transpose:y:0Ssequential_34/gru_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_34/gru_34/TensorArrayUnstack/TensorListFromTensorЂ
*sequential_34/gru_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_34/gru_34/strided_slice_2/stackІ
,sequential_34/gru_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_34/gru_34/strided_slice_2/stack_1І
,sequential_34/gru_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_34/gru_34/strided_slice_2/stack_2њ
$sequential_34/gru_34/strided_slice_2StridedSlice"sequential_34/gru_34/transpose:y:03sequential_34/gru_34/strided_slice_2/stack:output:05sequential_34/gru_34/strided_slice_2/stack_1:output:05sequential_34/gru_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2&
$sequential_34/gru_34/strided_slice_2м
/sequential_34/gru_34/gru_cell_34/ReadVariableOpReadVariableOp8sequential_34_gru_34_gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype021
/sequential_34/gru_34/gru_cell_34/ReadVariableOpЯ
(sequential_34/gru_34/gru_cell_34/unstackUnpack7sequential_34/gru_34/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2*
(sequential_34/gru_34/gru_cell_34/unstackё
6sequential_34/gru_34/gru_cell_34/MatMul/ReadVariableOpReadVariableOp?sequential_34_gru_34_gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype028
6sequential_34/gru_34/gru_cell_34/MatMul/ReadVariableOpў
'sequential_34/gru_34/gru_cell_34/MatMulMatMul-sequential_34/gru_34/strided_slice_2:output:0>sequential_34/gru_34/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2)
'sequential_34/gru_34/gru_cell_34/MatMulј
(sequential_34/gru_34/gru_cell_34/BiasAddBiasAdd1sequential_34/gru_34/gru_cell_34/MatMul:product:01sequential_34/gru_34/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2*
(sequential_34/gru_34/gru_cell_34/BiasAdd
&sequential_34/gru_34/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_34/gru_34/gru_cell_34/ConstЏ
0sequential_34/gru_34/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ22
0sequential_34/gru_34/gru_cell_34/split/split_dimА
&sequential_34/gru_34/gru_cell_34/splitSplit9sequential_34/gru_34/gru_cell_34/split/split_dim:output:01sequential_34/gru_34/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2(
&sequential_34/gru_34/gru_cell_34/splitї
8sequential_34/gru_34/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOpAsequential_34_gru_34_gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02:
8sequential_34/gru_34/gru_cell_34/MatMul_1/ReadVariableOpњ
)sequential_34/gru_34/gru_cell_34/MatMul_1MatMul#sequential_34/gru_34/zeros:output:0@sequential_34/gru_34/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2+
)sequential_34/gru_34/gru_cell_34/MatMul_1ў
*sequential_34/gru_34/gru_cell_34/BiasAdd_1BiasAdd3sequential_34/gru_34/gru_cell_34/MatMul_1:product:01sequential_34/gru_34/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2,
*sequential_34/gru_34/gru_cell_34/BiasAdd_1Љ
(sequential_34/gru_34/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2*
(sequential_34/gru_34/gru_cell_34/Const_1Г
2sequential_34/gru_34/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ24
2sequential_34/gru_34/gru_cell_34/split_1/split_dimј
(sequential_34/gru_34/gru_cell_34/split_1SplitV3sequential_34/gru_34/gru_cell_34/BiasAdd_1:output:01sequential_34/gru_34/gru_cell_34/Const_1:output:0;sequential_34/gru_34/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2*
(sequential_34/gru_34/gru_cell_34/split_1ы
$sequential_34/gru_34/gru_cell_34/addAddV2/sequential_34/gru_34/gru_cell_34/split:output:01sequential_34/gru_34/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22&
$sequential_34/gru_34/gru_cell_34/addя
&sequential_34/gru_34/gru_cell_34/add_1AddV2/sequential_34/gru_34/gru_cell_34/split:output:11sequential_34/gru_34/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22(
&sequential_34/gru_34/gru_cell_34/add_1ф
$sequential_34/gru_34/gru_cell_34/mulMul*sequential_34/gru_34/gru_cell_34/add_1:z:01sequential_34/gru_34/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22&
$sequential_34/gru_34/gru_cell_34/mulц
&sequential_34/gru_34/gru_cell_34/add_2AddV2/sequential_34/gru_34/gru_cell_34/split:output:2(sequential_34/gru_34/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22(
&sequential_34/gru_34/gru_cell_34/add_2Д
%sequential_34/gru_34/gru_cell_34/TanhTanh*sequential_34/gru_34/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22'
%sequential_34/gru_34/gru_cell_34/Tanhи
&sequential_34/gru_34/gru_cell_34/mul_1Mul(sequential_34/gru_34/gru_cell_34/add:z:0#sequential_34/gru_34/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22(
&sequential_34/gru_34/gru_cell_34/mul_1
&sequential_34/gru_34/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&sequential_34/gru_34/gru_cell_34/sub/xр
$sequential_34/gru_34/gru_cell_34/subSub/sequential_34/gru_34/gru_cell_34/sub/x:output:0(sequential_34/gru_34/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22&
$sequential_34/gru_34/gru_cell_34/subо
&sequential_34/gru_34/gru_cell_34/mul_2Mul(sequential_34/gru_34/gru_cell_34/sub:z:0)sequential_34/gru_34/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22(
&sequential_34/gru_34/gru_cell_34/mul_2у
&sequential_34/gru_34/gru_cell_34/add_3AddV2*sequential_34/gru_34/gru_cell_34/mul_1:z:0*sequential_34/gru_34/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22(
&sequential_34/gru_34/gru_cell_34/add_3Й
2sequential_34/gru_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   24
2sequential_34/gru_34/TensorArrayV2_1/element_shape
$sequential_34/gru_34/TensorArrayV2_1TensorListReserve;sequential_34/gru_34/TensorArrayV2_1/element_shape:output:0-sequential_34/gru_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_34/gru_34/TensorArrayV2_1x
sequential_34/gru_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_34/gru_34/timeЉ
-sequential_34/gru_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2/
-sequential_34/gru_34/while/maximum_iterations
'sequential_34/gru_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_34/gru_34/while/loop_counterа
sequential_34/gru_34/whileWhile0sequential_34/gru_34/while/loop_counter:output:06sequential_34/gru_34/while/maximum_iterations:output:0"sequential_34/gru_34/time:output:0-sequential_34/gru_34/TensorArrayV2_1:handle:0#sequential_34/gru_34/zeros:output:0-sequential_34/gru_34/strided_slice_1:output:0Lsequential_34/gru_34/TensorArrayUnstack/TensorListFromTensor:output_handle:08sequential_34_gru_34_gru_cell_34_readvariableop_resource?sequential_34_gru_34_gru_cell_34_matmul_readvariableop_resourceAsequential_34_gru_34_gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*2
body*R(
&sequential_34_gru_34_while_body_229078*2
cond*R(
&sequential_34_gru_34_while_cond_229077*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
sequential_34/gru_34/whileп
Esequential_34/gru_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2G
Esequential_34/gru_34/TensorArrayV2Stack/TensorListStack/element_shapeМ
7sequential_34/gru_34/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_34/gru_34/while:output:3Nsequential_34/gru_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype029
7sequential_34/gru_34/TensorArrayV2Stack/TensorListStackЋ
*sequential_34/gru_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2,
*sequential_34/gru_34/strided_slice_3/stackІ
,sequential_34/gru_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_34/gru_34/strided_slice_3/stack_1І
,sequential_34/gru_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_34/gru_34/strided_slice_3/stack_2
$sequential_34/gru_34/strided_slice_3StridedSlice@sequential_34/gru_34/TensorArrayV2Stack/TensorListStack:tensor:03sequential_34/gru_34/strided_slice_3/stack:output:05sequential_34/gru_34/strided_slice_3/stack_1:output:05sequential_34/gru_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2&
$sequential_34/gru_34/strided_slice_3Ѓ
%sequential_34/gru_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_34/gru_34/transpose_1/permљ
 sequential_34/gru_34/transpose_1	Transpose@sequential_34/gru_34/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_34/gru_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ22"
 sequential_34/gru_34/transpose_1
sequential_34/gru_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_34/gru_34/runtimeв
,sequential_34/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_34_dense_34_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02.
,sequential_34/dense_34/MatMul/ReadVariableOpп
sequential_34/dense_34/MatMulMatMul-sequential_34/gru_34/strided_slice_3:output:04sequential_34/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_34/dense_34/MatMulб
-sequential_34/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_34_dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_34/dense_34/BiasAdd/ReadVariableOpн
sequential_34/dense_34/BiasAddBiasAdd'sequential_34/dense_34/MatMul:product:05sequential_34/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2 
sequential_34/dense_34/BiasAdd
IdentityIdentity'sequential_34/dense_34/BiasAdd:output:0.^sequential_34/dense_34/BiasAdd/ReadVariableOp-^sequential_34/dense_34/MatMul/ReadVariableOp7^sequential_34/gru_34/gru_cell_34/MatMul/ReadVariableOp9^sequential_34/gru_34/gru_cell_34/MatMul_1/ReadVariableOp0^sequential_34/gru_34/gru_cell_34/ReadVariableOp^sequential_34/gru_34/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::2^
-sequential_34/dense_34/BiasAdd/ReadVariableOp-sequential_34/dense_34/BiasAdd/ReadVariableOp2\
,sequential_34/dense_34/MatMul/ReadVariableOp,sequential_34/dense_34/MatMul/ReadVariableOp2p
6sequential_34/gru_34/gru_cell_34/MatMul/ReadVariableOp6sequential_34/gru_34/gru_cell_34/MatMul/ReadVariableOp2t
8sequential_34/gru_34/gru_cell_34/MatMul_1/ReadVariableOp8sequential_34/gru_34/gru_cell_34/MatMul_1/ReadVariableOp2b
/sequential_34/gru_34/gru_cell_34/ReadVariableOp/sequential_34/gru_34/gru_cell_34/ReadVariableOp28
sequential_34/gru_34/whilesequential_34/gru_34/while:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegru_34_input
ц<
з
B__inference_gru_34_layer_call_and_return_conditional_losses_229603

inputs
gru_cell_34_229527
gru_cell_34_229529
gru_cell_34_229531
identityЂ#gru_cell_34/StatefulPartitionedCallЂwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1
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
:џџџџџџџџџ22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
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
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2№
#gru_cell_34/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_34_229527gru_cell_34_229529gru_cell_34_229531*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_2292422%
#gru_cell_34/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2
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
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterч
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_34_229527gru_cell_34_229529gru_cell_34_229531*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_229539*
condR
while_cond_229538*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^gru_cell_34/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#gru_cell_34/StatefulPartitionedCall#gru_cell_34/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ю!
л
while_body_229657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_gru_cell_34_229679_0
while_gru_cell_34_229681_0
while_gru_cell_34_229683_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_34_229679
while_gru_cell_34_229681
while_gru_cell_34_229683Ђ)while/gru_cell_34/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemБ
)while/gru_cell_34/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_34_229679_0while_gru_cell_34_229681_0while_gru_cell_34_229683_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_2292802+
)while/gru_cell_34/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_34/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_34/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_34/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_34/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_34/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/gru_cell_34/StatefulPartitionedCall:output:1*^while/gru_cell_34/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22
while/Identity_4"6
while_gru_cell_34_229679while_gru_cell_34_229679_0"6
while_gru_cell_34_229681while_gru_cell_34_229681_0"6
while_gru_cell_34_229683while_gru_cell_34_229683_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2V
)while/gru_cell_34/StatefulPartitionedCall)while/gru_cell_34/StatefulPartitionedCall: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
	
н
D__inference_dense_34_layer_call_and_return_conditional_losses_230083

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Y
л
B__inference_gru_34_layer_call_and_return_conditional_losses_231043

inputs'
#gru_cell_34_readvariableop_resource.
*gru_cell_34_matmul_readvariableop_resource0
,gru_cell_34_matmul_1_readvariableop_resource
identityЂ!gru_cell_34/MatMul/ReadVariableOpЂ#gru_cell_34/MatMul_1/ReadVariableOpЂgru_cell_34/ReadVariableOpЂwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1
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
:џџџџџџџџџ22
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
:џџџџџџџџџ2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
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
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
gru_cell_34/ReadVariableOpReadVariableOp#gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_34/ReadVariableOp
gru_cell_34/unstackUnpack"gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_34/unstackВ
!gru_cell_34/MatMul/ReadVariableOpReadVariableOp*gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!gru_cell_34/MatMul/ReadVariableOpЊ
gru_cell_34/MatMulMatMulstrided_slice_2:output:0)gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMulЄ
gru_cell_34/BiasAddBiasAddgru_cell_34/MatMul:product:0gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAddh
gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_34/Const
gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split/split_dimм
gru_cell_34/splitSplit$gru_cell_34/split/split_dim:output:0gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/splitИ
#gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02%
#gru_cell_34/MatMul_1/ReadVariableOpІ
gru_cell_34/MatMul_1MatMulzeros:output:0+gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMul_1Њ
gru_cell_34/BiasAdd_1BiasAddgru_cell_34/MatMul_1:product:0gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAdd_1
gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
gru_cell_34/Const_1
gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split_1/split_dim
gru_cell_34/split_1SplitVgru_cell_34/BiasAdd_1:output:0gru_cell_34/Const_1:output:0&gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/split_1
gru_cell_34/addAddV2gru_cell_34/split:output:0gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add
gru_cell_34/add_1AddV2gru_cell_34/split:output:1gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_1
gru_cell_34/mulMulgru_cell_34/add_1:z:0gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul
gru_cell_34/add_2AddV2gru_cell_34/split:output:2gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_2u
gru_cell_34/TanhTanhgru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/Tanh
gru_cell_34/mul_1Mulgru_cell_34/add:z:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_1k
gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_34/sub/x
gru_cell_34/subSubgru_cell_34/sub/x:output:0gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/sub
gru_cell_34/mul_2Mulgru_cell_34/sub:z:0gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_2
gru_cell_34/add_3AddV2gru_cell_34/mul_1:z:0gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2
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
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЊ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_34_readvariableop_resource*gru_cell_34_matmul_readvariableop_resource,gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_230955*
condR
while_cond_230954*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeл
IdentityIdentitystrided_slice_3:output:0"^gru_cell_34/MatMul/ReadVariableOp$^gru_cell_34/MatMul_1/ReadVariableOp^gru_cell_34/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::2F
!gru_cell_34/MatMul/ReadVariableOp!gru_cell_34/MatMul/ReadVariableOp2J
#gru_cell_34/MatMul_1/ReadVariableOp#gru_cell_34/MatMul_1/ReadVariableOp28
gru_cell_34/ReadVariableOpgru_cell_34/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц<
з
B__inference_gru_34_layer_call_and_return_conditional_losses_229721

inputs
gru_cell_34_229645
gru_cell_34_229647
gru_cell_34_229649
identityЂ#gru_cell_34/StatefulPartitionedCallЂwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1
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
:џџџџџџџџџ22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
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
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2№
#gru_cell_34/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_34_229645gru_cell_34_229647gru_cell_34_229649*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_2292802%
#gru_cell_34/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2
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
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterч
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_34_229645gru_cell_34_229647gru_cell_34_229649*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_229657*
condR
while_cond_229656*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^gru_cell_34/StatefulPartitionedCall^while*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2J
#gru_cell_34/StatefulPartitionedCall#gru_cell_34/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
КE
Ў
while_body_230778
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
+while_gru_cell_34_readvariableop_resource_06
2while_gru_cell_34_matmul_readvariableop_resource_08
4while_gru_cell_34_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
)while_gru_cell_34_readvariableop_resource4
0while_gru_cell_34_matmul_readvariableop_resource6
2while_gru_cell_34_matmul_1_readvariableop_resourceЂ'while/gru_cell_34/MatMul/ReadVariableOpЂ)while/gru_cell_34/MatMul_1/ReadVariableOpЂ while/gru_cell_34/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemБ
 while/gru_cell_34/ReadVariableOpReadVariableOp+while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype02"
 while/gru_cell_34/ReadVariableOpЂ
while/gru_cell_34/unstackUnpack(while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_34/unstackЦ
'while/gru_cell_34/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/gru_cell_34/MatMul/ReadVariableOpд
while/gru_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMulМ
while/gru_cell_34/BiasAddBiasAdd"while/gru_cell_34/MatMul:product:0"while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAddt
while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_34/Const
!while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2#
!while/gru_cell_34/split/split_dimє
while/gru_cell_34/splitSplit*while/gru_cell_34/split/split_dim:output:0"while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/splitЬ
)while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype02+
)while/gru_cell_34/MatMul_1/ReadVariableOpН
while/gru_cell_34/MatMul_1MatMulwhile_placeholder_21while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMul_1Т
while/gru_cell_34/BiasAdd_1BiasAdd$while/gru_cell_34/MatMul_1:product:0"while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAdd_1
while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
while/gru_cell_34/Const_1
#while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2%
#while/gru_cell_34/split_1/split_dim­
while/gru_cell_34/split_1SplitV$while/gru_cell_34/BiasAdd_1:output:0"while/gru_cell_34/Const_1:output:0,while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/split_1Џ
while/gru_cell_34/addAddV2 while/gru_cell_34/split:output:0"while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/addГ
while/gru_cell_34/add_1AddV2 while/gru_cell_34/split:output:1"while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_1Ј
while/gru_cell_34/mulMulwhile/gru_cell_34/add_1:z:0"while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mulЊ
while/gru_cell_34/add_2AddV2 while/gru_cell_34/split:output:2while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_2
while/gru_cell_34/TanhTanhwhile/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/Tanh
while/gru_cell_34/mul_1Mulwhile/gru_cell_34/add:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_1w
while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_34/sub/xЄ
while/gru_cell_34/subSub while/gru_cell_34/sub/x:output:0while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/subЂ
while/gru_cell_34/mul_2Mulwhile/gru_cell_34/sub:z:0while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_2Ї
while/gru_cell_34/add_3AddV2while/gru_cell_34/mul_1:z:0while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_34/add_3:z:0*
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
while/add_1з
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityъ
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1й
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identitywhile/gru_cell_34/add_3:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22
while/Identity_4"j
2while_gru_cell_34_matmul_1_readvariableop_resource4while_gru_cell_34_matmul_1_readvariableop_resource_0"f
0while_gru_cell_34_matmul_readvariableop_resource2while_gru_cell_34_matmul_readvariableop_resource_0"X
)while_gru_cell_34_readvariableop_resource+while_gru_cell_34_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2R
'while/gru_cell_34/MatMul/ReadVariableOp'while/gru_cell_34/MatMul/ReadVariableOp2V
)while/gru_cell_34/MatMul_1/ReadVariableOp)while/gru_cell_34/MatMul_1/ReadVariableOp2D
 while/gru_cell_34/ReadVariableOp while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Y
л
B__inference_gru_34_layer_call_and_return_conditional_losses_230043

inputs'
#gru_cell_34_readvariableop_resource.
*gru_cell_34_matmul_readvariableop_resource0
,gru_cell_34_matmul_1_readvariableop_resource
identityЂ!gru_cell_34/MatMul/ReadVariableOpЂ#gru_cell_34/MatMul_1/ReadVariableOpЂgru_cell_34/ReadVariableOpЂwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1
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
:џџџџџџџџџ22
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
:џџџџџџџџџ2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
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
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
gru_cell_34/ReadVariableOpReadVariableOp#gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_34/ReadVariableOp
gru_cell_34/unstackUnpack"gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_34/unstackВ
!gru_cell_34/MatMul/ReadVariableOpReadVariableOp*gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!gru_cell_34/MatMul/ReadVariableOpЊ
gru_cell_34/MatMulMatMulstrided_slice_2:output:0)gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMulЄ
gru_cell_34/BiasAddBiasAddgru_cell_34/MatMul:product:0gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAddh
gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_34/Const
gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split/split_dimм
gru_cell_34/splitSplit$gru_cell_34/split/split_dim:output:0gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/splitИ
#gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02%
#gru_cell_34/MatMul_1/ReadVariableOpІ
gru_cell_34/MatMul_1MatMulzeros:output:0+gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMul_1Њ
gru_cell_34/BiasAdd_1BiasAddgru_cell_34/MatMul_1:product:0gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAdd_1
gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
gru_cell_34/Const_1
gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split_1/split_dim
gru_cell_34/split_1SplitVgru_cell_34/BiasAdd_1:output:0gru_cell_34/Const_1:output:0&gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/split_1
gru_cell_34/addAddV2gru_cell_34/split:output:0gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add
gru_cell_34/add_1AddV2gru_cell_34/split:output:1gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_1
gru_cell_34/mulMulgru_cell_34/add_1:z:0gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul
gru_cell_34/add_2AddV2gru_cell_34/split:output:2gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_2u
gru_cell_34/TanhTanhgru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/Tanh
gru_cell_34/mul_1Mulgru_cell_34/add:z:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_1k
gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_34/sub/x
gru_cell_34/subSubgru_cell_34/sub/x:output:0gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/sub
gru_cell_34/mul_2Mulgru_cell_34/sub:z:0gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_2
gru_cell_34/add_3AddV2gru_cell_34/mul_1:z:0gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2
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
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЊ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_34_readvariableop_resource*gru_cell_34_matmul_readvariableop_resource,gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_229955*
condR
while_cond_229954*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeл
IdentityIdentitystrided_slice_3:output:0"^gru_cell_34/MatMul/ReadVariableOp$^gru_cell_34/MatMul_1/ReadVariableOp^gru_cell_34/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::2F
!gru_cell_34/MatMul/ReadVariableOp!gru_cell_34/MatMul/ReadVariableOp2J
#gru_cell_34/MatMul_1/ReadVariableOp#gru_cell_34/MatMul_1/ReadVariableOp28
gru_cell_34/ReadVariableOpgru_cell_34/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а
Њ
while_cond_230622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_230622___redundant_placeholder04
0while_while_cond_230622___redundant_placeholder14
0while_while_cond_230622___redundant_placeholder24
0while_while_cond_230622___redundant_placeholder3
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
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
КE
Ў
while_body_230955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
+while_gru_cell_34_readvariableop_resource_06
2while_gru_cell_34_matmul_readvariableop_resource_08
4while_gru_cell_34_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
)while_gru_cell_34_readvariableop_resource4
0while_gru_cell_34_matmul_readvariableop_resource6
2while_gru_cell_34_matmul_1_readvariableop_resourceЂ'while/gru_cell_34/MatMul/ReadVariableOpЂ)while/gru_cell_34/MatMul_1/ReadVariableOpЂ while/gru_cell_34/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemБ
 while/gru_cell_34/ReadVariableOpReadVariableOp+while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype02"
 while/gru_cell_34/ReadVariableOpЂ
while/gru_cell_34/unstackUnpack(while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_34/unstackЦ
'while/gru_cell_34/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/gru_cell_34/MatMul/ReadVariableOpд
while/gru_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMulМ
while/gru_cell_34/BiasAddBiasAdd"while/gru_cell_34/MatMul:product:0"while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAddt
while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_34/Const
!while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2#
!while/gru_cell_34/split/split_dimє
while/gru_cell_34/splitSplit*while/gru_cell_34/split/split_dim:output:0"while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/splitЬ
)while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype02+
)while/gru_cell_34/MatMul_1/ReadVariableOpН
while/gru_cell_34/MatMul_1MatMulwhile_placeholder_21while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMul_1Т
while/gru_cell_34/BiasAdd_1BiasAdd$while/gru_cell_34/MatMul_1:product:0"while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAdd_1
while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
while/gru_cell_34/Const_1
#while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2%
#while/gru_cell_34/split_1/split_dim­
while/gru_cell_34/split_1SplitV$while/gru_cell_34/BiasAdd_1:output:0"while/gru_cell_34/Const_1:output:0,while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/split_1Џ
while/gru_cell_34/addAddV2 while/gru_cell_34/split:output:0"while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/addГ
while/gru_cell_34/add_1AddV2 while/gru_cell_34/split:output:1"while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_1Ј
while/gru_cell_34/mulMulwhile/gru_cell_34/add_1:z:0"while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mulЊ
while/gru_cell_34/add_2AddV2 while/gru_cell_34/split:output:2while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_2
while/gru_cell_34/TanhTanhwhile/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/Tanh
while/gru_cell_34/mul_1Mulwhile/gru_cell_34/add:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_1w
while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_34/sub/xЄ
while/gru_cell_34/subSub while/gru_cell_34/sub/x:output:0while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/subЂ
while/gru_cell_34/mul_2Mulwhile/gru_cell_34/sub:z:0while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_2Ї
while/gru_cell_34/add_3AddV2while/gru_cell_34/mul_1:z:0while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_34/add_3:z:0*
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
while/add_1з
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityъ
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1й
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identitywhile/gru_cell_34/add_3:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22
while/Identity_4"j
2while_gru_cell_34_matmul_1_readvariableop_resource4while_gru_cell_34_matmul_1_readvariableop_resource_0"f
0while_gru_cell_34_matmul_readvariableop_resource2while_gru_cell_34_matmul_readvariableop_resource_0"X
)while_gru_cell_34_readvariableop_resource+while_gru_cell_34_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2R
'while/gru_cell_34/MatMul/ReadVariableOp'while/gru_cell_34/MatMul/ReadVariableOp2V
)while/gru_cell_34/MatMul_1/ReadVariableOp)while/gru_cell_34/MatMul_1/ReadVariableOp2D
 while/gru_cell_34/ReadVariableOp while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
а
Њ
while_cond_229656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_229656___redundant_placeholder04
0while_while_cond_229656___redundant_placeholder14
0while_while_cond_229656___redundant_placeholder24
0while_while_cond_229656___redundant_placeholder3
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
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ю!
л
while_body_229539
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_gru_cell_34_229561_0
while_gru_cell_34_229563_0
while_gru_cell_34_229565_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_gru_cell_34_229561
while_gru_cell_34_229563
while_gru_cell_34_229565Ђ)while/gru_cell_34/StatefulPartitionedCallУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemБ
)while/gru_cell_34/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_34_229561_0while_gru_cell_34_229563_0while_gru_cell_34_229565_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_2292422+
)while/gru_cell_34/StatefulPartitionedCallі
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_34/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_34/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_34/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_34/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2Й
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_34/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Т
while/Identity_4Identity2while/gru_cell_34/StatefulPartitionedCall:output:1*^while/gru_cell_34/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22
while/Identity_4"6
while_gru_cell_34_229561while_gru_cell_34_229561_0"6
while_gru_cell_34_229563while_gru_cell_34_229563_0"6
while_gru_cell_34_229565while_gru_cell_34_229565_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2V
)while/gru_cell_34/StatefulPartitionedCall)while/gru_cell_34/StatefulPartitionedCall: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 

Ў
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_231277

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpЂReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2	
unstack
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
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
џџџџџџџџџ2
split/split_dimЌ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
split
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
split_1/split_dimг
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
TanhZ
mul_1Muladd:z:0states_0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
add_3 
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

IdentityЄ

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:џџџџџџџџџ:џџџџџџџџџ2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0
с
Ж
.__inference_sequential_34_layer_call_fn_230179
gru_34_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallgru_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_34_layer_call_and_return_conditional_losses_2301662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegru_34_input
ЛY
н
B__inference_gru_34_layer_call_and_return_conditional_losses_230866
inputs_0'
#gru_cell_34_readvariableop_resource.
*gru_cell_34_matmul_readvariableop_resource0
,gru_cell_34_matmul_1_readvariableop_resource
identityЂ!gru_cell_34/MatMul/ReadVariableOpЂ#gru_cell_34/MatMul_1/ReadVariableOpЂgru_cell_34/ReadVariableOpЂwhileF
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1
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
:џџџџџџџџџ22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
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
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
gru_cell_34/ReadVariableOpReadVariableOp#gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_34/ReadVariableOp
gru_cell_34/unstackUnpack"gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_34/unstackВ
!gru_cell_34/MatMul/ReadVariableOpReadVariableOp*gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!gru_cell_34/MatMul/ReadVariableOpЊ
gru_cell_34/MatMulMatMulstrided_slice_2:output:0)gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMulЄ
gru_cell_34/BiasAddBiasAddgru_cell_34/MatMul:product:0gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAddh
gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_34/Const
gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split/split_dimм
gru_cell_34/splitSplit$gru_cell_34/split/split_dim:output:0gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/splitИ
#gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02%
#gru_cell_34/MatMul_1/ReadVariableOpІ
gru_cell_34/MatMul_1MatMulzeros:output:0+gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMul_1Њ
gru_cell_34/BiasAdd_1BiasAddgru_cell_34/MatMul_1:product:0gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAdd_1
gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
gru_cell_34/Const_1
gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split_1/split_dim
gru_cell_34/split_1SplitVgru_cell_34/BiasAdd_1:output:0gru_cell_34/Const_1:output:0&gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/split_1
gru_cell_34/addAddV2gru_cell_34/split:output:0gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add
gru_cell_34/add_1AddV2gru_cell_34/split:output:1gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_1
gru_cell_34/mulMulgru_cell_34/add_1:z:0gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul
gru_cell_34/add_2AddV2gru_cell_34/split:output:2gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_2u
gru_cell_34/TanhTanhgru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/Tanh
gru_cell_34/mul_1Mulgru_cell_34/add:z:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_1k
gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_34/sub/x
gru_cell_34/subSubgru_cell_34/sub/x:output:0gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/sub
gru_cell_34/mul_2Mulgru_cell_34/sub:z:0gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_2
gru_cell_34/add_3AddV2gru_cell_34/mul_1:z:0gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2
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
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЊ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_34_readvariableop_resource*gru_cell_34_matmul_readvariableop_resource,gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_230778*
condR
while_cond_230777*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeл
IdentityIdentitystrided_slice_3:output:0"^gru_cell_34/MatMul/ReadVariableOp$^gru_cell_34/MatMul_1/ReadVariableOp^gru_cell_34/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2F
!gru_cell_34/MatMul/ReadVariableOp!gru_cell_34/MatMul/ReadVariableOp2J
#gru_cell_34/MatMul_1/ReadVariableOp#gru_cell_34/MatMul_1/ReadVariableOp28
gru_cell_34/ReadVariableOpgru_cell_34/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
њ
Ќ
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_229280

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpЂReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2	
unstack
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
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
џџџџџџџџџ2
split/split_dimЌ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
split
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
split_1/split_dimг
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
TanhX
mul_1Muladd:z:0states*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
add_3 
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

IdentityЄ

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:џџџџџџџџџ:џџџџџџџџџ2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
ЏP
	
gru_34_while_body_230271*
&gru_34_while_gru_34_while_loop_counter0
,gru_34_while_gru_34_while_maximum_iterations
gru_34_while_placeholder
gru_34_while_placeholder_1
gru_34_while_placeholder_2)
%gru_34_while_gru_34_strided_slice_1_0e
agru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensor_06
2gru_34_while_gru_cell_34_readvariableop_resource_0=
9gru_34_while_gru_cell_34_matmul_readvariableop_resource_0?
;gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0
gru_34_while_identity
gru_34_while_identity_1
gru_34_while_identity_2
gru_34_while_identity_3
gru_34_while_identity_4'
#gru_34_while_gru_34_strided_slice_1c
_gru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensor4
0gru_34_while_gru_cell_34_readvariableop_resource;
7gru_34_while_gru_cell_34_matmul_readvariableop_resource=
9gru_34_while_gru_cell_34_matmul_1_readvariableop_resourceЂ.gru_34/while/gru_cell_34/MatMul/ReadVariableOpЂ0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOpЂ'gru_34/while/gru_cell_34/ReadVariableOpб
>gru_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2@
>gru_34/while/TensorArrayV2Read/TensorListGetItem/element_shape§
0gru_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensor_0gru_34_while_placeholderGgru_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype022
0gru_34/while/TensorArrayV2Read/TensorListGetItemЦ
'gru_34/while/gru_cell_34/ReadVariableOpReadVariableOp2gru_34_while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'gru_34/while/gru_cell_34/ReadVariableOpЗ
 gru_34/while/gru_cell_34/unstackUnpack/gru_34/while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2"
 gru_34/while/gru_cell_34/unstackл
.gru_34/while/gru_cell_34/MatMul/ReadVariableOpReadVariableOp9gru_34_while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype020
.gru_34/while/gru_cell_34/MatMul/ReadVariableOp№
gru_34/while/gru_cell_34/MatMulMatMul7gru_34/while/TensorArrayV2Read/TensorListGetItem:item:06gru_34/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2!
gru_34/while/gru_cell_34/MatMulи
 gru_34/while/gru_cell_34/BiasAddBiasAdd)gru_34/while/gru_cell_34/MatMul:product:0)gru_34/while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2"
 gru_34/while/gru_cell_34/BiasAdd
gru_34/while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
gru_34/while/gru_cell_34/Const
(gru_34/while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2*
(gru_34/while/gru_cell_34/split/split_dim
gru_34/while/gru_cell_34/splitSplit1gru_34/while/gru_cell_34/split/split_dim:output:0)gru_34/while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2 
gru_34/while/gru_cell_34/splitс
0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp;gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype022
0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOpй
!gru_34/while/gru_cell_34/MatMul_1MatMulgru_34_while_placeholder_28gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2#
!gru_34/while/gru_cell_34/MatMul_1о
"gru_34/while/gru_cell_34/BiasAdd_1BiasAdd+gru_34/while/gru_cell_34/MatMul_1:product:0)gru_34/while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2$
"gru_34/while/gru_cell_34/BiasAdd_1
 gru_34/while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2"
 gru_34/while/gru_cell_34/Const_1Ѓ
*gru_34/while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2,
*gru_34/while/gru_cell_34/split_1/split_dimа
 gru_34/while/gru_cell_34/split_1SplitV+gru_34/while/gru_cell_34/BiasAdd_1:output:0)gru_34/while/gru_cell_34/Const_1:output:03gru_34/while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2"
 gru_34/while/gru_cell_34/split_1Ы
gru_34/while/gru_cell_34/addAddV2'gru_34/while/gru_cell_34/split:output:0)gru_34/while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/gru_cell_34/addЯ
gru_34/while/gru_cell_34/add_1AddV2'gru_34/while/gru_cell_34/split:output:1)gru_34/while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/add_1Ф
gru_34/while/gru_cell_34/mulMul"gru_34/while/gru_cell_34/add_1:z:0)gru_34/while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/gru_cell_34/mulЦ
gru_34/while/gru_cell_34/add_2AddV2'gru_34/while/gru_cell_34/split:output:2 gru_34/while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/add_2
gru_34/while/gru_cell_34/TanhTanh"gru_34/while/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/gru_cell_34/TanhЗ
gru_34/while/gru_cell_34/mul_1Mul gru_34/while/gru_cell_34/add:z:0gru_34_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/mul_1
gru_34/while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
gru_34/while/gru_cell_34/sub/xР
gru_34/while/gru_cell_34/subSub'gru_34/while/gru_cell_34/sub/x:output:0 gru_34/while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/gru_cell_34/subО
gru_34/while/gru_cell_34/mul_2Mul gru_34/while/gru_cell_34/sub:z:0!gru_34/while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/mul_2У
gru_34/while/gru_cell_34/add_3AddV2"gru_34/while/gru_cell_34/mul_1:z:0"gru_34/while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22 
gru_34/while/gru_cell_34/add_3
1gru_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_34_while_placeholder_1gru_34_while_placeholder"gru_34/while/gru_cell_34/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_34/while/TensorArrayV2Write/TensorListSetItemj
gru_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_34/while/add/y
gru_34/while/addAddV2gru_34_while_placeholdergru_34/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_34/while/addn
gru_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_34/while/add_1/y
gru_34/while/add_1AddV2&gru_34_while_gru_34_while_loop_countergru_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_34/while/add_1
gru_34/while/IdentityIdentitygru_34/while/add_1:z:0/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
gru_34/while/Identity
gru_34/while/Identity_1Identity,gru_34_while_gru_34_while_maximum_iterations/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
gru_34/while/Identity_1
gru_34/while/Identity_2Identitygru_34/while/add:z:0/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
gru_34/while/Identity_2А
gru_34/while/Identity_3IdentityAgru_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
gru_34/while/Identity_3Ђ
gru_34/while/Identity_4Identity"gru_34/while/gru_cell_34/add_3:z:0/^gru_34/while/gru_cell_34/MatMul/ReadVariableOp1^gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp(^gru_34/while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/while/Identity_4"L
#gru_34_while_gru_34_strided_slice_1%gru_34_while_gru_34_strided_slice_1_0"x
9gru_34_while_gru_cell_34_matmul_1_readvariableop_resource;gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0"t
7gru_34_while_gru_cell_34_matmul_readvariableop_resource9gru_34_while_gru_cell_34_matmul_readvariableop_resource_0"f
0gru_34_while_gru_cell_34_readvariableop_resource2gru_34_while_gru_cell_34_readvariableop_resource_0"7
gru_34_while_identitygru_34/while/Identity:output:0";
gru_34_while_identity_1 gru_34/while/Identity_1:output:0";
gru_34_while_identity_2 gru_34/while/Identity_2:output:0";
gru_34_while_identity_3 gru_34/while/Identity_3:output:0";
gru_34_while_identity_4 gru_34/while/Identity_4:output:0"Ф
_gru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensoragru_34_while_tensorarrayv2read_tensorlistgetitem_gru_34_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2`
.gru_34/while/gru_cell_34/MatMul/ReadVariableOp.gru_34/while/gru_cell_34/MatMul/ReadVariableOp2d
0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp0gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp2R
'gru_34/while/gru_cell_34/ReadVariableOp'gru_34/while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Y
л
B__inference_gru_34_layer_call_and_return_conditional_losses_229888

inputs'
#gru_cell_34_readvariableop_resource.
*gru_cell_34_matmul_readvariableop_resource0
,gru_cell_34_matmul_1_readvariableop_resource
identityЂ!gru_cell_34/MatMul/ReadVariableOpЂ#gru_cell_34/MatMul_1/ReadVariableOpЂgru_cell_34/ReadVariableOpЂwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1
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
:џџџџџџџџџ22
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
:џџџџџџџџџ2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
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
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
gru_cell_34/ReadVariableOpReadVariableOp#gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_34/ReadVariableOp
gru_cell_34/unstackUnpack"gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_34/unstackВ
!gru_cell_34/MatMul/ReadVariableOpReadVariableOp*gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!gru_cell_34/MatMul/ReadVariableOpЊ
gru_cell_34/MatMulMatMulstrided_slice_2:output:0)gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMulЄ
gru_cell_34/BiasAddBiasAddgru_cell_34/MatMul:product:0gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAddh
gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_34/Const
gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split/split_dimм
gru_cell_34/splitSplit$gru_cell_34/split/split_dim:output:0gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/splitИ
#gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02%
#gru_cell_34/MatMul_1/ReadVariableOpІ
gru_cell_34/MatMul_1MatMulzeros:output:0+gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMul_1Њ
gru_cell_34/BiasAdd_1BiasAddgru_cell_34/MatMul_1:product:0gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAdd_1
gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
gru_cell_34/Const_1
gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split_1/split_dim
gru_cell_34/split_1SplitVgru_cell_34/BiasAdd_1:output:0gru_cell_34/Const_1:output:0&gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/split_1
gru_cell_34/addAddV2gru_cell_34/split:output:0gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add
gru_cell_34/add_1AddV2gru_cell_34/split:output:1gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_1
gru_cell_34/mulMulgru_cell_34/add_1:z:0gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul
gru_cell_34/add_2AddV2gru_cell_34/split:output:2gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_2u
gru_cell_34/TanhTanhgru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/Tanh
gru_cell_34/mul_1Mulgru_cell_34/add:z:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_1k
gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_34/sub/x
gru_cell_34/subSubgru_cell_34/sub/x:output:0gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/sub
gru_cell_34/mul_2Mulgru_cell_34/sub:z:0gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_2
gru_cell_34/add_3AddV2gru_cell_34/mul_1:z:0gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2
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
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЊ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_34_readvariableop_resource*gru_cell_34_matmul_readvariableop_resource,gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_229800*
condR
while_cond_229799*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeл
IdentityIdentitystrided_slice_3:output:0"^gru_cell_34/MatMul/ReadVariableOp$^gru_cell_34/MatMul_1/ReadVariableOp^gru_cell_34/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::2F
!gru_cell_34/MatMul/ReadVariableOp!gru_cell_34/MatMul/ReadVariableOp2J
#gru_cell_34/MatMul_1/ReadVariableOp#gru_cell_34/MatMul_1/ReadVariableOp28
gru_cell_34/ReadVariableOpgru_cell_34/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а
Њ
while_cond_229799
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_229799___redundant_placeholder04
0while_while_cond_229799___redundant_placeholder14
0while_while_cond_229799___redundant_placeholder24
0while_while_cond_229799___redundant_placeholder3
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
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
а
Њ
while_cond_231109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_231109___redundant_placeholder04
0while_while_cond_231109___redundant_placeholder14
0while_while_cond_231109___redundant_placeholder24
0while_while_cond_231109___redundant_placeholder3
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
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Єn
Б
I__inference_sequential_34_layer_call_and_return_conditional_losses_230526

inputs.
*gru_34_gru_cell_34_readvariableop_resource5
1gru_34_gru_cell_34_matmul_readvariableop_resource7
3gru_34_gru_cell_34_matmul_1_readvariableop_resource+
'dense_34_matmul_readvariableop_resource,
(dense_34_biasadd_readvariableop_resource
identityЂdense_34/BiasAdd/ReadVariableOpЂdense_34/MatMul/ReadVariableOpЂ(gru_34/gru_cell_34/MatMul/ReadVariableOpЂ*gru_34/gru_cell_34/MatMul_1/ReadVariableOpЂ!gru_34/gru_cell_34/ReadVariableOpЂgru_34/whileR
gru_34/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_34/Shape
gru_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_34/strided_slice/stack
gru_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_34/strided_slice/stack_1
gru_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_34/strided_slice/stack_2
gru_34/strided_sliceStridedSlicegru_34/Shape:output:0#gru_34/strided_slice/stack:output:0%gru_34/strided_slice/stack_1:output:0%gru_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_34/strided_slicej
gru_34/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
gru_34/zeros/mul/y
gru_34/zeros/mulMulgru_34/strided_slice:output:0gru_34/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_34/zeros/mulm
gru_34/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
gru_34/zeros/Less/y
gru_34/zeros/LessLessgru_34/zeros/mul:z:0gru_34/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_34/zeros/Lessp
gru_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
gru_34/zeros/packed/1
gru_34/zeros/packedPackgru_34/strided_slice:output:0gru_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_34/zeros/packedm
gru_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_34/zeros/Const
gru_34/zerosFillgru_34/zeros/packed:output:0gru_34/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/zeros
gru_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_34/transpose/perm
gru_34/transpose	Transposeinputsgru_34/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
gru_34/transposed
gru_34/Shape_1Shapegru_34/transpose:y:0*
T0*
_output_shapes
:2
gru_34/Shape_1
gru_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_34/strided_slice_1/stack
gru_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_1/stack_1
gru_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_1/stack_2
gru_34/strided_slice_1StridedSlicegru_34/Shape_1:output:0%gru_34/strided_slice_1/stack:output:0'gru_34/strided_slice_1/stack_1:output:0'gru_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_34/strided_slice_1
"gru_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"gru_34/TensorArrayV2/element_shapeЮ
gru_34/TensorArrayV2TensorListReserve+gru_34/TensorArrayV2/element_shape:output:0gru_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_34/TensorArrayV2Э
<gru_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<gru_34/TensorArrayUnstack/TensorListFromTensor/element_shape
.gru_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_34/transpose:y:0Egru_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_34/TensorArrayUnstack/TensorListFromTensor
gru_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_34/strided_slice_2/stack
gru_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_2/stack_1
gru_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_2/stack_2І
gru_34/strided_slice_2StridedSlicegru_34/transpose:y:0%gru_34/strided_slice_2/stack:output:0'gru_34/strided_slice_2/stack_1:output:0'gru_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
gru_34/strided_slice_2В
!gru_34/gru_cell_34/ReadVariableOpReadVariableOp*gru_34_gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype02#
!gru_34/gru_cell_34/ReadVariableOpЅ
gru_34/gru_cell_34/unstackUnpack)gru_34/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_34/gru_cell_34/unstackЧ
(gru_34/gru_cell_34/MatMul/ReadVariableOpReadVariableOp1gru_34_gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02*
(gru_34/gru_cell_34/MatMul/ReadVariableOpЦ
gru_34/gru_cell_34/MatMulMatMulgru_34/strided_slice_2:output:00gru_34/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_34/gru_cell_34/MatMulР
gru_34/gru_cell_34/BiasAddBiasAdd#gru_34/gru_cell_34/MatMul:product:0#gru_34/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_34/gru_cell_34/BiasAddv
gru_34/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_34/gru_cell_34/Const
"gru_34/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"gru_34/gru_cell_34/split/split_dimј
gru_34/gru_cell_34/splitSplit+gru_34/gru_cell_34/split/split_dim:output:0#gru_34/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_34/gru_cell_34/splitЭ
*gru_34/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp3gru_34_gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02,
*gru_34/gru_cell_34/MatMul_1/ReadVariableOpТ
gru_34/gru_cell_34/MatMul_1MatMulgru_34/zeros:output:02gru_34/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_34/gru_cell_34/MatMul_1Ц
gru_34/gru_cell_34/BiasAdd_1BiasAdd%gru_34/gru_cell_34/MatMul_1:product:0#gru_34/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_34/gru_cell_34/BiasAdd_1
gru_34/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
gru_34/gru_cell_34/Const_1
$gru_34/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2&
$gru_34/gru_cell_34/split_1/split_dimВ
gru_34/gru_cell_34/split_1SplitV%gru_34/gru_cell_34/BiasAdd_1:output:0#gru_34/gru_cell_34/Const_1:output:0-gru_34/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_34/gru_cell_34/split_1Г
gru_34/gru_cell_34/addAddV2!gru_34/gru_cell_34/split:output:0#gru_34/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/addЗ
gru_34/gru_cell_34/add_1AddV2!gru_34/gru_cell_34/split:output:1#gru_34/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/add_1Ќ
gru_34/gru_cell_34/mulMulgru_34/gru_cell_34/add_1:z:0#gru_34/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/mulЎ
gru_34/gru_cell_34/add_2AddV2!gru_34/gru_cell_34/split:output:2gru_34/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/add_2
gru_34/gru_cell_34/TanhTanhgru_34/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/Tanh 
gru_34/gru_cell_34/mul_1Mulgru_34/gru_cell_34/add:z:0gru_34/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/mul_1y
gru_34/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_34/gru_cell_34/sub/xЈ
gru_34/gru_cell_34/subSub!gru_34/gru_cell_34/sub/x:output:0gru_34/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/subІ
gru_34/gru_cell_34/mul_2Mulgru_34/gru_cell_34/sub:z:0gru_34/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/mul_2Ћ
gru_34/gru_cell_34/add_3AddV2gru_34/gru_cell_34/mul_1:z:0gru_34/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/add_3
$gru_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2&
$gru_34/TensorArrayV2_1/element_shapeд
gru_34/TensorArrayV2_1TensorListReserve-gru_34/TensorArrayV2_1/element_shape:output:0gru_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_34/TensorArrayV2_1\
gru_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_34/time
gru_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
gru_34/while/maximum_iterationsx
gru_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_34/while/loop_counter
gru_34/whileWhile"gru_34/while/loop_counter:output:0(gru_34/while/maximum_iterations:output:0gru_34/time:output:0gru_34/TensorArrayV2_1:handle:0gru_34/zeros:output:0gru_34/strided_slice_1:output:0>gru_34/TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_34_gru_cell_34_readvariableop_resource1gru_34_gru_cell_34_matmul_readvariableop_resource3gru_34_gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*$
bodyR
gru_34_while_body_230432*$
condR
gru_34_while_cond_230431*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
gru_34/whileУ
7gru_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7gru_34/TensorArrayV2Stack/TensorListStack/element_shape
)gru_34/TensorArrayV2Stack/TensorListStackTensorListStackgru_34/while:output:3@gru_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)gru_34/TensorArrayV2Stack/TensorListStack
gru_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
gru_34/strided_slice_3/stack
gru_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_34/strided_slice_3/stack_1
gru_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_3/stack_2Ф
gru_34/strided_slice_3StridedSlice2gru_34/TensorArrayV2Stack/TensorListStack:tensor:0%gru_34/strided_slice_3/stack:output:0'gru_34/strided_slice_3/stack_1:output:0'gru_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
gru_34/strided_slice_3
gru_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_34/transpose_1/permС
gru_34/transpose_1	Transpose2gru_34/TensorArrayV2Stack/TensorListStack:tensor:0 gru_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ22
gru_34/transpose_1t
gru_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_34/runtimeЈ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_34/MatMul/ReadVariableOpЇ
dense_34/MatMulMatMulgru_34/strided_slice_3:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_34/MatMulЇ
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_34/BiasAdd/ReadVariableOpЅ
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_34/BiasAddЛ
IdentityIdentitydense_34/BiasAdd:output:0 ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp)^gru_34/gru_cell_34/MatMul/ReadVariableOp+^gru_34/gru_cell_34/MatMul_1/ReadVariableOp"^gru_34/gru_cell_34/ReadVariableOp^gru_34/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2T
(gru_34/gru_cell_34/MatMul/ReadVariableOp(gru_34/gru_cell_34/MatMul/ReadVariableOp2X
*gru_34/gru_cell_34/MatMul_1/ReadVariableOp*gru_34/gru_cell_34/MatMul_1/ReadVariableOp2F
!gru_34/gru_cell_34/ReadVariableOp!gru_34/gru_cell_34/ReadVariableOp2
gru_34/whilegru_34/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ў
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_231315

inputs
states_0
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpЂReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2	
unstack
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
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
џџџџџџџџџ2
split/split_dimЌ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
split
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
split_1/split_dimг
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
TanhZ
mul_1Muladd:z:0states_0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
add_3 
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

IdentityЄ

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:џџџџџџџџџ:џџџџџџџџџ2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0
f
Ѕ
&sequential_34_gru_34_while_body_229078F
Bsequential_34_gru_34_while_sequential_34_gru_34_while_loop_counterL
Hsequential_34_gru_34_while_sequential_34_gru_34_while_maximum_iterations*
&sequential_34_gru_34_while_placeholder,
(sequential_34_gru_34_while_placeholder_1,
(sequential_34_gru_34_while_placeholder_2E
Asequential_34_gru_34_while_sequential_34_gru_34_strided_slice_1_0
}sequential_34_gru_34_while_tensorarrayv2read_tensorlistgetitem_sequential_34_gru_34_tensorarrayunstack_tensorlistfromtensor_0D
@sequential_34_gru_34_while_gru_cell_34_readvariableop_resource_0K
Gsequential_34_gru_34_while_gru_cell_34_matmul_readvariableop_resource_0M
Isequential_34_gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0'
#sequential_34_gru_34_while_identity)
%sequential_34_gru_34_while_identity_1)
%sequential_34_gru_34_while_identity_2)
%sequential_34_gru_34_while_identity_3)
%sequential_34_gru_34_while_identity_4C
?sequential_34_gru_34_while_sequential_34_gru_34_strided_slice_1
{sequential_34_gru_34_while_tensorarrayv2read_tensorlistgetitem_sequential_34_gru_34_tensorarrayunstack_tensorlistfromtensorB
>sequential_34_gru_34_while_gru_cell_34_readvariableop_resourceI
Esequential_34_gru_34_while_gru_cell_34_matmul_readvariableop_resourceK
Gsequential_34_gru_34_while_gru_cell_34_matmul_1_readvariableop_resourceЂ<sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOpЂ>sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOpЂ5sequential_34/gru_34/while/gru_cell_34/ReadVariableOpэ
Lsequential_34/gru_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2N
Lsequential_34/gru_34/while/TensorArrayV2Read/TensorListGetItem/element_shapeб
>sequential_34/gru_34/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_34_gru_34_while_tensorarrayv2read_tensorlistgetitem_sequential_34_gru_34_tensorarrayunstack_tensorlistfromtensor_0&sequential_34_gru_34_while_placeholderUsequential_34/gru_34/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02@
>sequential_34/gru_34/while/TensorArrayV2Read/TensorListGetItem№
5sequential_34/gru_34/while/gru_cell_34/ReadVariableOpReadVariableOp@sequential_34_gru_34_while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype027
5sequential_34/gru_34/while/gru_cell_34/ReadVariableOpс
.sequential_34/gru_34/while/gru_cell_34/unstackUnpack=sequential_34/gru_34/while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num20
.sequential_34/gru_34/while/gru_cell_34/unstack
<sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOpReadVariableOpGsequential_34_gru_34_while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02>
<sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOpЈ
-sequential_34/gru_34/while/gru_cell_34/MatMulMatMulEsequential_34/gru_34/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2/
-sequential_34/gru_34/while/gru_cell_34/MatMul
.sequential_34/gru_34/while/gru_cell_34/BiasAddBiasAdd7sequential_34/gru_34/while/gru_cell_34/MatMul:product:07sequential_34/gru_34/while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ20
.sequential_34/gru_34/while/gru_cell_34/BiasAdd
,sequential_34/gru_34/while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_34/gru_34/while/gru_cell_34/ConstЛ
6sequential_34/gru_34/while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ28
6sequential_34/gru_34/while/gru_cell_34/split/split_dimШ
,sequential_34/gru_34/while/gru_cell_34/splitSplit?sequential_34/gru_34/while/gru_cell_34/split/split_dim:output:07sequential_34/gru_34/while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2.
,sequential_34/gru_34/while/gru_cell_34/split
>sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOpIsequential_34_gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype02@
>sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp
/sequential_34/gru_34/while/gru_cell_34/MatMul_1MatMul(sequential_34_gru_34_while_placeholder_2Fsequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ21
/sequential_34/gru_34/while/gru_cell_34/MatMul_1
0sequential_34/gru_34/while/gru_cell_34/BiasAdd_1BiasAdd9sequential_34/gru_34/while/gru_cell_34/MatMul_1:product:07sequential_34/gru_34/while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ22
0sequential_34/gru_34/while/gru_cell_34/BiasAdd_1Е
.sequential_34/gru_34/while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ20
.sequential_34/gru_34/while/gru_cell_34/Const_1П
8sequential_34/gru_34/while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2:
8sequential_34/gru_34/while/gru_cell_34/split_1/split_dim
.sequential_34/gru_34/while/gru_cell_34/split_1SplitV9sequential_34/gru_34/while/gru_cell_34/BiasAdd_1:output:07sequential_34/gru_34/while/gru_cell_34/Const_1:output:0Asequential_34/gru_34/while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split20
.sequential_34/gru_34/while/gru_cell_34/split_1
*sequential_34/gru_34/while/gru_cell_34/addAddV25sequential_34/gru_34/while/gru_cell_34/split:output:07sequential_34/gru_34/while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22,
*sequential_34/gru_34/while/gru_cell_34/add
,sequential_34/gru_34/while/gru_cell_34/add_1AddV25sequential_34/gru_34/while/gru_cell_34/split:output:17sequential_34/gru_34/while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22.
,sequential_34/gru_34/while/gru_cell_34/add_1ќ
*sequential_34/gru_34/while/gru_cell_34/mulMul0sequential_34/gru_34/while/gru_cell_34/add_1:z:07sequential_34/gru_34/while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22,
*sequential_34/gru_34/while/gru_cell_34/mulў
,sequential_34/gru_34/while/gru_cell_34/add_2AddV25sequential_34/gru_34/while/gru_cell_34/split:output:2.sequential_34/gru_34/while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22.
,sequential_34/gru_34/while/gru_cell_34/add_2Ц
+sequential_34/gru_34/while/gru_cell_34/TanhTanh0sequential_34/gru_34/while/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22-
+sequential_34/gru_34/while/gru_cell_34/Tanhя
,sequential_34/gru_34/while/gru_cell_34/mul_1Mul.sequential_34/gru_34/while/gru_cell_34/add:z:0(sequential_34_gru_34_while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22.
,sequential_34/gru_34/while/gru_cell_34/mul_1Ё
,sequential_34/gru_34/while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,sequential_34/gru_34/while/gru_cell_34/sub/xј
*sequential_34/gru_34/while/gru_cell_34/subSub5sequential_34/gru_34/while/gru_cell_34/sub/x:output:0.sequential_34/gru_34/while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22,
*sequential_34/gru_34/while/gru_cell_34/subі
,sequential_34/gru_34/while/gru_cell_34/mul_2Mul.sequential_34/gru_34/while/gru_cell_34/sub:z:0/sequential_34/gru_34/while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22.
,sequential_34/gru_34/while/gru_cell_34/mul_2ћ
,sequential_34/gru_34/while/gru_cell_34/add_3AddV20sequential_34/gru_34/while/gru_cell_34/mul_1:z:00sequential_34/gru_34/while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22.
,sequential_34/gru_34/while/gru_cell_34/add_3Ш
?sequential_34/gru_34/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_34_gru_34_while_placeholder_1&sequential_34_gru_34_while_placeholder0sequential_34/gru_34/while/gru_cell_34/add_3:z:0*
_output_shapes
: *
element_dtype02A
?sequential_34/gru_34/while/TensorArrayV2Write/TensorListSetItem
 sequential_34/gru_34/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_34/gru_34/while/add/yН
sequential_34/gru_34/while/addAddV2&sequential_34_gru_34_while_placeholder)sequential_34/gru_34/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_34/gru_34/while/add
"sequential_34/gru_34/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_34/gru_34/while/add_1/yп
 sequential_34/gru_34/while/add_1AddV2Bsequential_34_gru_34_while_sequential_34_gru_34_while_loop_counter+sequential_34/gru_34/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_34/gru_34/while/add_1е
#sequential_34/gru_34/while/IdentityIdentity$sequential_34/gru_34/while/add_1:z:0=^sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOp?^sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp6^sequential_34/gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2%
#sequential_34/gru_34/while/Identity§
%sequential_34/gru_34/while/Identity_1IdentityHsequential_34_gru_34_while_sequential_34_gru_34_while_maximum_iterations=^sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOp?^sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp6^sequential_34/gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_34/gru_34/while/Identity_1з
%sequential_34/gru_34/while/Identity_2Identity"sequential_34/gru_34/while/add:z:0=^sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOp?^sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp6^sequential_34/gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_34/gru_34/while/Identity_2
%sequential_34/gru_34/while/Identity_3IdentityOsequential_34/gru_34/while/TensorArrayV2Write/TensorListSetItem:output_handle:0=^sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOp?^sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp6^sequential_34/gru_34/while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2'
%sequential_34/gru_34/while/Identity_3і
%sequential_34/gru_34/while/Identity_4Identity0sequential_34/gru_34/while/gru_cell_34/add_3:z:0=^sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOp?^sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp6^sequential_34/gru_34/while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22'
%sequential_34/gru_34/while/Identity_4"
Gsequential_34_gru_34_while_gru_cell_34_matmul_1_readvariableop_resourceIsequential_34_gru_34_while_gru_cell_34_matmul_1_readvariableop_resource_0"
Esequential_34_gru_34_while_gru_cell_34_matmul_readvariableop_resourceGsequential_34_gru_34_while_gru_cell_34_matmul_readvariableop_resource_0"
>sequential_34_gru_34_while_gru_cell_34_readvariableop_resource@sequential_34_gru_34_while_gru_cell_34_readvariableop_resource_0"S
#sequential_34_gru_34_while_identity,sequential_34/gru_34/while/Identity:output:0"W
%sequential_34_gru_34_while_identity_1.sequential_34/gru_34/while/Identity_1:output:0"W
%sequential_34_gru_34_while_identity_2.sequential_34/gru_34/while/Identity_2:output:0"W
%sequential_34_gru_34_while_identity_3.sequential_34/gru_34/while/Identity_3:output:0"W
%sequential_34_gru_34_while_identity_4.sequential_34/gru_34/while/Identity_4:output:0"
?sequential_34_gru_34_while_sequential_34_gru_34_strided_slice_1Asequential_34_gru_34_while_sequential_34_gru_34_strided_slice_1_0"ќ
{sequential_34_gru_34_while_tensorarrayv2read_tensorlistgetitem_sequential_34_gru_34_tensorarrayunstack_tensorlistfromtensor}sequential_34_gru_34_while_tensorarrayv2read_tensorlistgetitem_sequential_34_gru_34_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2|
<sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOp<sequential_34/gru_34/while/gru_cell_34/MatMul/ReadVariableOp2
>sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp>sequential_34/gru_34/while/gru_cell_34/MatMul_1/ReadVariableOp2n
5sequential_34/gru_34/while/gru_cell_34/ReadVariableOp5sequential_34/gru_34/while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
а
Њ
while_cond_229538
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_229538___redundant_placeholder04
0while_while_cond_229538___redundant_placeholder14
0while_while_cond_229538___redundant_placeholder24
0while_while_cond_229538___redundant_placeholder3
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
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
а
Њ
while_cond_230777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_230777___redundant_placeholder04
0while_while_cond_230777___redundant_placeholder14
0while_while_cond_230777___redundant_placeholder24
0while_while_cond_230777___redundant_placeholder3
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
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
	
Џ
gru_34_while_cond_230431*
&gru_34_while_gru_34_while_loop_counter0
,gru_34_while_gru_34_while_maximum_iterations
gru_34_while_placeholder
gru_34_while_placeholder_1
gru_34_while_placeholder_2,
(gru_34_while_less_gru_34_strided_slice_1B
>gru_34_while_gru_34_while_cond_230431___redundant_placeholder0B
>gru_34_while_gru_34_while_cond_230431___redundant_placeholder1B
>gru_34_while_gru_34_while_cond_230431___redundant_placeholder2B
>gru_34_while_gru_34_while_cond_230431___redundant_placeholder3
gru_34_while_identity

gru_34/while/LessLessgru_34_while_placeholder(gru_34_while_less_gru_34_strided_slice_1*
T0*
_output_shapes
: 2
gru_34/while/Lessr
gru_34/while/IdentityIdentitygru_34/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_34/while/Identity"7
gru_34_while_identitygru_34/while/Identity:output:0*@
_input_shapes/
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
ш

I__inference_sequential_34_layer_call_and_return_conditional_losses_230166

inputs
gru_34_230153
gru_34_230155
gru_34_230157
dense_34_230160
dense_34_230162
identityЂ dense_34/StatefulPartitionedCallЂgru_34/StatefulPartitionedCall
gru_34/StatefulPartitionedCallStatefulPartitionedCallinputsgru_34_230153gru_34_230155gru_34_230157*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_34_layer_call_and_return_conditional_losses_2300432 
gru_34/StatefulPartitionedCallЕ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall'gru_34/StatefulPartitionedCall:output:0dense_34_230160dense_34_230162*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_2300832"
 dense_34/StatefulPartitionedCallС
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0!^dense_34/StatefulPartitionedCall^gru_34/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2@
gru_34/StatefulPartitionedCallgru_34/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
с
Ж
.__inference_sequential_34_layer_call_fn_230148
gru_34_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityЂStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallgru_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_34_layer_call_and_return_conditional_losses_2301352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegru_34_input
КE
Ў
while_body_229955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
+while_gru_cell_34_readvariableop_resource_06
2while_gru_cell_34_matmul_readvariableop_resource_08
4while_gru_cell_34_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
)while_gru_cell_34_readvariableop_resource4
0while_gru_cell_34_matmul_readvariableop_resource6
2while_gru_cell_34_matmul_1_readvariableop_resourceЂ'while/gru_cell_34/MatMul/ReadVariableOpЂ)while/gru_cell_34/MatMul_1/ReadVariableOpЂ while/gru_cell_34/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemБ
 while/gru_cell_34/ReadVariableOpReadVariableOp+while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype02"
 while/gru_cell_34/ReadVariableOpЂ
while/gru_cell_34/unstackUnpack(while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_34/unstackЦ
'while/gru_cell_34/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/gru_cell_34/MatMul/ReadVariableOpд
while/gru_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMulМ
while/gru_cell_34/BiasAddBiasAdd"while/gru_cell_34/MatMul:product:0"while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAddt
while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_34/Const
!while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2#
!while/gru_cell_34/split/split_dimє
while/gru_cell_34/splitSplit*while/gru_cell_34/split/split_dim:output:0"while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/splitЬ
)while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype02+
)while/gru_cell_34/MatMul_1/ReadVariableOpН
while/gru_cell_34/MatMul_1MatMulwhile_placeholder_21while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMul_1Т
while/gru_cell_34/BiasAdd_1BiasAdd$while/gru_cell_34/MatMul_1:product:0"while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAdd_1
while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
while/gru_cell_34/Const_1
#while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2%
#while/gru_cell_34/split_1/split_dim­
while/gru_cell_34/split_1SplitV$while/gru_cell_34/BiasAdd_1:output:0"while/gru_cell_34/Const_1:output:0,while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/split_1Џ
while/gru_cell_34/addAddV2 while/gru_cell_34/split:output:0"while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/addГ
while/gru_cell_34/add_1AddV2 while/gru_cell_34/split:output:1"while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_1Ј
while/gru_cell_34/mulMulwhile/gru_cell_34/add_1:z:0"while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mulЊ
while/gru_cell_34/add_2AddV2 while/gru_cell_34/split:output:2while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_2
while/gru_cell_34/TanhTanhwhile/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/Tanh
while/gru_cell_34/mul_1Mulwhile/gru_cell_34/add:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_1w
while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_34/sub/xЄ
while/gru_cell_34/subSub while/gru_cell_34/sub/x:output:0while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/subЂ
while/gru_cell_34/mul_2Mulwhile/gru_cell_34/sub:z:0while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_2Ї
while/gru_cell_34/add_3AddV2while/gru_cell_34/mul_1:z:0while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_34/add_3:z:0*
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
while/add_1з
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityъ
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1й
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identitywhile/gru_cell_34/add_3:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22
while/Identity_4"j
2while_gru_cell_34_matmul_1_readvariableop_resource4while_gru_cell_34_matmul_1_readvariableop_resource_0"f
0while_gru_cell_34_matmul_readvariableop_resource2while_gru_cell_34_matmul_readvariableop_resource_0"X
)while_gru_cell_34_readvariableop_resource+while_gru_cell_34_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2R
'while/gru_cell_34/MatMul/ReadVariableOp'while/gru_cell_34/MatMul/ReadVariableOp2V
)while/gru_cell_34/MatMul_1/ReadVariableOp)while/gru_cell_34/MatMul_1/ReadVariableOp2D
 while/gru_cell_34/ReadVariableOp while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
Y
л
B__inference_gru_34_layer_call_and_return_conditional_losses_231198

inputs'
#gru_cell_34_readvariableop_resource.
*gru_cell_34_matmul_readvariableop_resource0
,gru_cell_34_matmul_1_readvariableop_resource
identityЂ!gru_cell_34/MatMul/ReadVariableOpЂ#gru_cell_34/MatMul_1/ReadVariableOpЂgru_cell_34/ReadVariableOpЂwhileD
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1
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
:џџџџџџџџџ22
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
:џџџџџџџџџ2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
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
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
gru_cell_34/ReadVariableOpReadVariableOp#gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_34/ReadVariableOp
gru_cell_34/unstackUnpack"gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_34/unstackВ
!gru_cell_34/MatMul/ReadVariableOpReadVariableOp*gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!gru_cell_34/MatMul/ReadVariableOpЊ
gru_cell_34/MatMulMatMulstrided_slice_2:output:0)gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMulЄ
gru_cell_34/BiasAddBiasAddgru_cell_34/MatMul:product:0gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAddh
gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_34/Const
gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split/split_dimм
gru_cell_34/splitSplit$gru_cell_34/split/split_dim:output:0gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/splitИ
#gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02%
#gru_cell_34/MatMul_1/ReadVariableOpІ
gru_cell_34/MatMul_1MatMulzeros:output:0+gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMul_1Њ
gru_cell_34/BiasAdd_1BiasAddgru_cell_34/MatMul_1:product:0gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAdd_1
gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
gru_cell_34/Const_1
gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split_1/split_dim
gru_cell_34/split_1SplitVgru_cell_34/BiasAdd_1:output:0gru_cell_34/Const_1:output:0&gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/split_1
gru_cell_34/addAddV2gru_cell_34/split:output:0gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add
gru_cell_34/add_1AddV2gru_cell_34/split:output:1gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_1
gru_cell_34/mulMulgru_cell_34/add_1:z:0gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul
gru_cell_34/add_2AddV2gru_cell_34/split:output:2gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_2u
gru_cell_34/TanhTanhgru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/Tanh
gru_cell_34/mul_1Mulgru_cell_34/add:z:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_1k
gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_34/sub/x
gru_cell_34/subSubgru_cell_34/sub/x:output:0gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/sub
gru_cell_34/mul_2Mulgru_cell_34/sub:z:0gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_2
gru_cell_34/add_3AddV2gru_cell_34/mul_1:z:0gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2
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
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЊ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_34_readvariableop_resource*gru_cell_34_matmul_readvariableop_resource,gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_231110*
condR
while_cond_231109*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeш
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЅ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeл
IdentityIdentitystrided_slice_3:output:0"^gru_cell_34/MatMul/ReadVariableOp$^gru_cell_34/MatMul_1/ReadVariableOp^gru_cell_34/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::2F
!gru_cell_34/MatMul/ReadVariableOp!gru_cell_34/MatMul/ReadVariableOp2J
#gru_cell_34/MatMul_1/ReadVariableOp#gru_cell_34/MatMul_1/ReadVariableOp28
gru_cell_34/ReadVariableOpgru_cell_34/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ш

I__inference_sequential_34_layer_call_and_return_conditional_losses_230135

inputs
gru_34_230122
gru_34_230124
gru_34_230126
dense_34_230129
dense_34_230131
identityЂ dense_34/StatefulPartitionedCallЂgru_34/StatefulPartitionedCall
gru_34/StatefulPartitionedCallStatefulPartitionedCallinputsgru_34_230122gru_34_230124gru_34_230126*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_34_layer_call_and_return_conditional_losses_2298882 
gru_34/StatefulPartitionedCallЕ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall'gru_34/StatefulPartitionedCall:output:0dense_34_230129dense_34_230131*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_2300832"
 dense_34/StatefulPartitionedCallС
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0!^dense_34/StatefulPartitionedCall^gru_34/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2@
gru_34/StatefulPartitionedCallgru_34/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


'__inference_gru_34_layer_call_fn_231220

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_34_layer_call_and_return_conditional_losses_2300432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
н
D__inference_dense_34_layer_call_and_return_conditional_losses_231230

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
КE
Ў
while_body_229800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
+while_gru_cell_34_readvariableop_resource_06
2while_gru_cell_34_matmul_readvariableop_resource_08
4while_gru_cell_34_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
)while_gru_cell_34_readvariableop_resource4
0while_gru_cell_34_matmul_readvariableop_resource6
2while_gru_cell_34_matmul_1_readvariableop_resourceЂ'while/gru_cell_34/MatMul/ReadVariableOpЂ)while/gru_cell_34/MatMul_1/ReadVariableOpЂ while/gru_cell_34/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemБ
 while/gru_cell_34/ReadVariableOpReadVariableOp+while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype02"
 while/gru_cell_34/ReadVariableOpЂ
while/gru_cell_34/unstackUnpack(while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_34/unstackЦ
'while/gru_cell_34/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/gru_cell_34/MatMul/ReadVariableOpд
while/gru_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMulМ
while/gru_cell_34/BiasAddBiasAdd"while/gru_cell_34/MatMul:product:0"while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAddt
while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_34/Const
!while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2#
!while/gru_cell_34/split/split_dimє
while/gru_cell_34/splitSplit*while/gru_cell_34/split/split_dim:output:0"while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/splitЬ
)while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype02+
)while/gru_cell_34/MatMul_1/ReadVariableOpН
while/gru_cell_34/MatMul_1MatMulwhile_placeholder_21while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMul_1Т
while/gru_cell_34/BiasAdd_1BiasAdd$while/gru_cell_34/MatMul_1:product:0"while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAdd_1
while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
while/gru_cell_34/Const_1
#while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2%
#while/gru_cell_34/split_1/split_dim­
while/gru_cell_34/split_1SplitV$while/gru_cell_34/BiasAdd_1:output:0"while/gru_cell_34/Const_1:output:0,while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/split_1Џ
while/gru_cell_34/addAddV2 while/gru_cell_34/split:output:0"while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/addГ
while/gru_cell_34/add_1AddV2 while/gru_cell_34/split:output:1"while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_1Ј
while/gru_cell_34/mulMulwhile/gru_cell_34/add_1:z:0"while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mulЊ
while/gru_cell_34/add_2AddV2 while/gru_cell_34/split:output:2while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_2
while/gru_cell_34/TanhTanhwhile/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/Tanh
while/gru_cell_34/mul_1Mulwhile/gru_cell_34/add:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_1w
while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_34/sub/xЄ
while/gru_cell_34/subSub while/gru_cell_34/sub/x:output:0while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/subЂ
while/gru_cell_34/mul_2Mulwhile/gru_cell_34/sub:z:0while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_2Ї
while/gru_cell_34/add_3AddV2while/gru_cell_34/mul_1:z:0while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_34/add_3:z:0*
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
while/add_1з
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityъ
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1й
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identitywhile/gru_cell_34/add_3:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22
while/Identity_4"j
2while_gru_cell_34_matmul_1_readvariableop_resource4while_gru_cell_34_matmul_1_readvariableop_resource_0"f
0while_gru_cell_34_matmul_readvariableop_resource2while_gru_cell_34_matmul_readvariableop_resource_0"X
)while_gru_cell_34_readvariableop_resource+while_gru_cell_34_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2R
'while/gru_cell_34/MatMul/ReadVariableOp'while/gru_cell_34/MatMul/ReadVariableOp2V
)while/gru_cell_34/MatMul_1/ReadVariableOp)while/gru_cell_34/MatMul_1/ReadVariableOp2D
 while/gru_cell_34/ReadVariableOp while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
м
~
)__inference_dense_34_layer_call_fn_231239

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_2300832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ2::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Я
А
.__inference_sequential_34_layer_call_fn_230556

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_34_layer_call_and_return_conditional_losses_2301662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
њ
Ќ
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_229242

inputs

states
readvariableop_resource"
matmul_readvariableop_resource$
 matmul_1_readvariableop_resource
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpЂReadVariableOpy
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOpl
unstackUnpackReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2	
unstack
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
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
џџџџџџџџџ2
split/split_dimЌ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
split
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
	BiasAdd_1g
Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2	
Const_1q
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
split_1/split_dimг
split_1SplitVBiasAdd_1:output:0Const_1:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2	
split_1g
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
addk
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
add_1`
mulMul	add_1:z:0split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
mulb
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
add_2Q
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
TanhX
mul_1Muladd:z:0states*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/x\
subSubsub/x:output:0add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
subZ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
mul_2_
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
add_3 
IdentityIdentity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

IdentityЄ

Identity_1Identity	add_3:z:0^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:џџџџџџџџџ:џџџџџџџџџ2:::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_namestates
Џ
Ќ
$__inference_signature_wrapper_230204
gru_34_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityЂStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallgru_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_2291722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegru_34_input
Г
Й
&sequential_34_gru_34_while_cond_229077F
Bsequential_34_gru_34_while_sequential_34_gru_34_while_loop_counterL
Hsequential_34_gru_34_while_sequential_34_gru_34_while_maximum_iterations*
&sequential_34_gru_34_while_placeholder,
(sequential_34_gru_34_while_placeholder_1,
(sequential_34_gru_34_while_placeholder_2H
Dsequential_34_gru_34_while_less_sequential_34_gru_34_strided_slice_1^
Zsequential_34_gru_34_while_sequential_34_gru_34_while_cond_229077___redundant_placeholder0^
Zsequential_34_gru_34_while_sequential_34_gru_34_while_cond_229077___redundant_placeholder1^
Zsequential_34_gru_34_while_sequential_34_gru_34_while_cond_229077___redundant_placeholder2^
Zsequential_34_gru_34_while_sequential_34_gru_34_while_cond_229077___redundant_placeholder3'
#sequential_34_gru_34_while_identity
й
sequential_34/gru_34/while/LessLess&sequential_34_gru_34_while_placeholderDsequential_34_gru_34_while_less_sequential_34_gru_34_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_34/gru_34/while/Less
#sequential_34/gru_34/while/IdentityIdentity#sequential_34/gru_34/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_34/gru_34/while/Identity"S
#sequential_34_gru_34_while_identity,sequential_34/gru_34/while/Identity:output:0*@
_input_shapes/
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
	
Џ
gru_34_while_cond_230270*
&gru_34_while_gru_34_while_loop_counter0
,gru_34_while_gru_34_while_maximum_iterations
gru_34_while_placeholder
gru_34_while_placeholder_1
gru_34_while_placeholder_2,
(gru_34_while_less_gru_34_strided_slice_1B
>gru_34_while_gru_34_while_cond_230270___redundant_placeholder0B
>gru_34_while_gru_34_while_cond_230270___redundant_placeholder1B
>gru_34_while_gru_34_while_cond_230270___redundant_placeholder2B
>gru_34_while_gru_34_while_cond_230270___redundant_placeholder3
gru_34_while_identity

gru_34/while/LessLessgru_34_while_placeholder(gru_34_while_less_gru_34_strided_slice_1*
T0*
_output_shapes
: 2
gru_34/while/Lessr
gru_34/while/IdentityIdentitygru_34/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_34/while/Identity"7
gru_34_while_identitygru_34/while/Identity:output:0*@
_input_shapes/
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Я
А
.__inference_sequential_34_layer_call_fn_230541

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_34_layer_call_and_return_conditional_losses_2301352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
а
Њ
while_cond_229954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_229954___redundant_placeholder04
0while_while_cond_229954___redundant_placeholder14
0while_while_cond_229954___redundant_placeholder24
0while_while_cond_229954___redundant_placeholder3
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
-: : : : :џџџџџџџџџ2: ::::: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
:
Єn
Б
I__inference_sequential_34_layer_call_and_return_conditional_losses_230365

inputs.
*gru_34_gru_cell_34_readvariableop_resource5
1gru_34_gru_cell_34_matmul_readvariableop_resource7
3gru_34_gru_cell_34_matmul_1_readvariableop_resource+
'dense_34_matmul_readvariableop_resource,
(dense_34_biasadd_readvariableop_resource
identityЂdense_34/BiasAdd/ReadVariableOpЂdense_34/MatMul/ReadVariableOpЂ(gru_34/gru_cell_34/MatMul/ReadVariableOpЂ*gru_34/gru_cell_34/MatMul_1/ReadVariableOpЂ!gru_34/gru_cell_34/ReadVariableOpЂgru_34/whileR
gru_34/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_34/Shape
gru_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_34/strided_slice/stack
gru_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_34/strided_slice/stack_1
gru_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_34/strided_slice/stack_2
gru_34/strided_sliceStridedSlicegru_34/Shape:output:0#gru_34/strided_slice/stack:output:0%gru_34/strided_slice/stack_1:output:0%gru_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_34/strided_slicej
gru_34/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :22
gru_34/zeros/mul/y
gru_34/zeros/mulMulgru_34/strided_slice:output:0gru_34/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_34/zeros/mulm
gru_34/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :ш2
gru_34/zeros/Less/y
gru_34/zeros/LessLessgru_34/zeros/mul:z:0gru_34/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_34/zeros/Lessp
gru_34/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
gru_34/zeros/packed/1
gru_34/zeros/packedPackgru_34/strided_slice:output:0gru_34/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_34/zeros/packedm
gru_34/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_34/zeros/Const
gru_34/zerosFillgru_34/zeros/packed:output:0gru_34/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/zeros
gru_34/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_34/transpose/perm
gru_34/transpose	Transposeinputsgru_34/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ2
gru_34/transposed
gru_34/Shape_1Shapegru_34/transpose:y:0*
T0*
_output_shapes
:2
gru_34/Shape_1
gru_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_34/strided_slice_1/stack
gru_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_1/stack_1
gru_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_1/stack_2
gru_34/strided_slice_1StridedSlicegru_34/Shape_1:output:0%gru_34/strided_slice_1/stack:output:0'gru_34/strided_slice_1/stack_1:output:0'gru_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_34/strided_slice_1
"gru_34/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"gru_34/TensorArrayV2/element_shapeЮ
gru_34/TensorArrayV2TensorListReserve+gru_34/TensorArrayV2/element_shape:output:0gru_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_34/TensorArrayV2Э
<gru_34/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2>
<gru_34/TensorArrayUnstack/TensorListFromTensor/element_shape
.gru_34/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_34/transpose:y:0Egru_34/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_34/TensorArrayUnstack/TensorListFromTensor
gru_34/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_34/strided_slice_2/stack
gru_34/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_2/stack_1
gru_34/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_2/stack_2І
gru_34/strided_slice_2StridedSlicegru_34/transpose:y:0%gru_34/strided_slice_2/stack:output:0'gru_34/strided_slice_2/stack_1:output:0'gru_34/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
gru_34/strided_slice_2В
!gru_34/gru_cell_34/ReadVariableOpReadVariableOp*gru_34_gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype02#
!gru_34/gru_cell_34/ReadVariableOpЅ
gru_34/gru_cell_34/unstackUnpack)gru_34/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_34/gru_cell_34/unstackЧ
(gru_34/gru_cell_34/MatMul/ReadVariableOpReadVariableOp1gru_34_gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02*
(gru_34/gru_cell_34/MatMul/ReadVariableOpЦ
gru_34/gru_cell_34/MatMulMatMulgru_34/strided_slice_2:output:00gru_34/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_34/gru_cell_34/MatMulР
gru_34/gru_cell_34/BiasAddBiasAdd#gru_34/gru_cell_34/MatMul:product:0#gru_34/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_34/gru_cell_34/BiasAddv
gru_34/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_34/gru_cell_34/Const
"gru_34/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2$
"gru_34/gru_cell_34/split/split_dimј
gru_34/gru_cell_34/splitSplit+gru_34/gru_cell_34/split/split_dim:output:0#gru_34/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_34/gru_cell_34/splitЭ
*gru_34/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp3gru_34_gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02,
*gru_34/gru_cell_34/MatMul_1/ReadVariableOpТ
gru_34/gru_cell_34/MatMul_1MatMulgru_34/zeros:output:02gru_34/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_34/gru_cell_34/MatMul_1Ц
gru_34/gru_cell_34/BiasAdd_1BiasAdd%gru_34/gru_cell_34/MatMul_1:product:0#gru_34/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_34/gru_cell_34/BiasAdd_1
gru_34/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
gru_34/gru_cell_34/Const_1
$gru_34/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2&
$gru_34/gru_cell_34/split_1/split_dimВ
gru_34/gru_cell_34/split_1SplitV%gru_34/gru_cell_34/BiasAdd_1:output:0#gru_34/gru_cell_34/Const_1:output:0-gru_34/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_34/gru_cell_34/split_1Г
gru_34/gru_cell_34/addAddV2!gru_34/gru_cell_34/split:output:0#gru_34/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/addЗ
gru_34/gru_cell_34/add_1AddV2!gru_34/gru_cell_34/split:output:1#gru_34/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/add_1Ќ
gru_34/gru_cell_34/mulMulgru_34/gru_cell_34/add_1:z:0#gru_34/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/mulЎ
gru_34/gru_cell_34/add_2AddV2!gru_34/gru_cell_34/split:output:2gru_34/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/add_2
gru_34/gru_cell_34/TanhTanhgru_34/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/Tanh 
gru_34/gru_cell_34/mul_1Mulgru_34/gru_cell_34/add:z:0gru_34/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/mul_1y
gru_34/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_34/gru_cell_34/sub/xЈ
gru_34/gru_cell_34/subSub!gru_34/gru_cell_34/sub/x:output:0gru_34/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/subІ
gru_34/gru_cell_34/mul_2Mulgru_34/gru_cell_34/sub:z:0gru_34/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/mul_2Ћ
gru_34/gru_cell_34/add_3AddV2gru_34/gru_cell_34/mul_1:z:0gru_34/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_34/gru_cell_34/add_3
$gru_34/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2&
$gru_34/TensorArrayV2_1/element_shapeд
gru_34/TensorArrayV2_1TensorListReserve-gru_34/TensorArrayV2_1/element_shape:output:0gru_34/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_34/TensorArrayV2_1\
gru_34/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_34/time
gru_34/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2!
gru_34/while/maximum_iterationsx
gru_34/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_34/while/loop_counter
gru_34/whileWhile"gru_34/while/loop_counter:output:0(gru_34/while/maximum_iterations:output:0gru_34/time:output:0gru_34/TensorArrayV2_1:handle:0gru_34/zeros:output:0gru_34/strided_slice_1:output:0>gru_34/TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_34_gru_cell_34_readvariableop_resource1gru_34_gru_cell_34_matmul_readvariableop_resource3gru_34_gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*$
bodyR
gru_34_while_body_230271*$
condR
gru_34_while_cond_230270*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
gru_34/whileУ
7gru_34/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   29
7gru_34/TensorArrayV2Stack/TensorListStack/element_shape
)gru_34/TensorArrayV2Stack/TensorListStackTensorListStackgru_34/while:output:3@gru_34/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ2*
element_dtype02+
)gru_34/TensorArrayV2Stack/TensorListStack
gru_34/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
gru_34/strided_slice_3/stack
gru_34/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_34/strided_slice_3/stack_1
gru_34/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_34/strided_slice_3/stack_2Ф
gru_34/strided_slice_3StridedSlice2gru_34/TensorArrayV2Stack/TensorListStack:tensor:0%gru_34/strided_slice_3/stack:output:0'gru_34/strided_slice_3/stack_1:output:0'gru_34/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
gru_34/strided_slice_3
gru_34/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_34/transpose_1/permС
gru_34/transpose_1	Transpose2gru_34/TensorArrayV2Stack/TensorListStack:tensor:0 gru_34/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ22
gru_34/transpose_1t
gru_34/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_34/runtimeЈ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02 
dense_34/MatMul/ReadVariableOpЇ
dense_34/MatMulMatMulgru_34/strided_slice_3:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_34/MatMulЇ
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_34/BiasAdd/ReadVariableOpЅ
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_34/BiasAddЛ
IdentityIdentitydense_34/BiasAdd:output:0 ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp)^gru_34/gru_cell_34/MatMul/ReadVariableOp+^gru_34/gru_cell_34/MatMul_1/ReadVariableOp"^gru_34/gru_cell_34/ReadVariableOp^gru_34/while*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2T
(gru_34/gru_cell_34/MatMul/ReadVariableOp(gru_34/gru_cell_34/MatMul/ReadVariableOp2X
*gru_34/gru_cell_34/MatMul_1/ReadVariableOp*gru_34/gru_cell_34/MatMul_1/ReadVariableOp2F
!gru_34/gru_cell_34/ReadVariableOp!gru_34/gru_cell_34/ReadVariableOp2
gru_34/whilegru_34/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
КE
Ў
while_body_231110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
+while_gru_cell_34_readvariableop_resource_06
2while_gru_cell_34_matmul_readvariableop_resource_08
4while_gru_cell_34_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
)while_gru_cell_34_readvariableop_resource4
0while_gru_cell_34_matmul_readvariableop_resource6
2while_gru_cell_34_matmul_1_readvariableop_resourceЂ'while/gru_cell_34/MatMul/ReadVariableOpЂ)while/gru_cell_34/MatMul_1/ReadVariableOpЂ while/gru_cell_34/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemБ
 while/gru_cell_34/ReadVariableOpReadVariableOp+while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype02"
 while/gru_cell_34/ReadVariableOpЂ
while/gru_cell_34/unstackUnpack(while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_34/unstackЦ
'while/gru_cell_34/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/gru_cell_34/MatMul/ReadVariableOpд
while/gru_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMulМ
while/gru_cell_34/BiasAddBiasAdd"while/gru_cell_34/MatMul:product:0"while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAddt
while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_34/Const
!while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2#
!while/gru_cell_34/split/split_dimє
while/gru_cell_34/splitSplit*while/gru_cell_34/split/split_dim:output:0"while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/splitЬ
)while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype02+
)while/gru_cell_34/MatMul_1/ReadVariableOpН
while/gru_cell_34/MatMul_1MatMulwhile_placeholder_21while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMul_1Т
while/gru_cell_34/BiasAdd_1BiasAdd$while/gru_cell_34/MatMul_1:product:0"while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAdd_1
while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
while/gru_cell_34/Const_1
#while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2%
#while/gru_cell_34/split_1/split_dim­
while/gru_cell_34/split_1SplitV$while/gru_cell_34/BiasAdd_1:output:0"while/gru_cell_34/Const_1:output:0,while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/split_1Џ
while/gru_cell_34/addAddV2 while/gru_cell_34/split:output:0"while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/addГ
while/gru_cell_34/add_1AddV2 while/gru_cell_34/split:output:1"while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_1Ј
while/gru_cell_34/mulMulwhile/gru_cell_34/add_1:z:0"while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mulЊ
while/gru_cell_34/add_2AddV2 while/gru_cell_34/split:output:2while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_2
while/gru_cell_34/TanhTanhwhile/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/Tanh
while/gru_cell_34/mul_1Mulwhile/gru_cell_34/add:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_1w
while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_34/sub/xЄ
while/gru_cell_34/subSub while/gru_cell_34/sub/x:output:0while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/subЂ
while/gru_cell_34/mul_2Mulwhile/gru_cell_34/sub:z:0while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_2Ї
while/gru_cell_34/add_3AddV2while/gru_cell_34/mul_1:z:0while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_34/add_3:z:0*
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
while/add_1з
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityъ
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1й
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identitywhile/gru_cell_34/add_3:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22
while/Identity_4"j
2while_gru_cell_34_matmul_1_readvariableop_resource4while_gru_cell_34_matmul_1_readvariableop_resource_0"f
0while_gru_cell_34_matmul_readvariableop_resource2while_gru_cell_34_matmul_readvariableop_resource_0"X
)while_gru_cell_34_readvariableop_resource+while_gru_cell_34_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2R
'while/gru_cell_34/MatMul/ReadVariableOp'while/gru_cell_34/MatMul/ReadVariableOp2V
)while/gru_cell_34/MatMul_1/ReadVariableOp)while/gru_cell_34/MatMul_1/ReadVariableOp2D
 while/gru_cell_34/ReadVariableOp while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 


'__inference_gru_34_layer_call_fn_230888
inputs_0
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_34_layer_call_and_return_conditional_losses_2297212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
М`
Љ
"__inference__traced_restore_231508
file_prefix$
 assignvariableop_dense_34_kernel$
 assignvariableop_1_dense_34_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate0
,assignvariableop_7_gru_34_gru_cell_34_kernel:
6assignvariableop_8_gru_34_gru_cell_34_recurrent_kernel.
*assignvariableop_9_gru_34_gru_cell_34_bias
assignvariableop_10_total
assignvariableop_11_count.
*assignvariableop_12_adam_dense_34_kernel_m,
(assignvariableop_13_adam_dense_34_bias_m8
4assignvariableop_14_adam_gru_34_gru_cell_34_kernel_mB
>assignvariableop_15_adam_gru_34_gru_cell_34_recurrent_kernel_m6
2assignvariableop_16_adam_gru_34_gru_cell_34_bias_m.
*assignvariableop_17_adam_dense_34_kernel_v,
(assignvariableop_18_adam_dense_34_bias_v8
4assignvariableop_19_adam_gru_34_gru_cell_34_kernel_vB
>assignvariableop_20_adam_gru_34_gru_cell_34_recurrent_kernel_v6
2assignvariableop_21_adam_gru_34_gru_cell_34_bias_v
identity_23ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ј
valueBB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesМ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
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

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_34_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѕ
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_34_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2Ё
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѓ
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ѓ
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ђ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Њ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Б
AssignVariableOp_7AssignVariableOp,assignvariableop_7_gru_34_gru_cell_34_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Л
AssignVariableOp_8AssignVariableOp6assignvariableop_8_gru_34_gru_cell_34_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Џ
AssignVariableOp_9AssignVariableOp*assignvariableop_9_gru_34_gru_cell_34_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ё
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ё
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12В
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_34_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13А
AssignVariableOp_13AssignVariableOp(assignvariableop_13_adam_dense_34_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14М
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adam_gru_34_gru_cell_34_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ц
AssignVariableOp_15AssignVariableOp>assignvariableop_15_adam_gru_34_gru_cell_34_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16К
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_gru_34_gru_cell_34_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17В
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_34_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18А
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_34_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19М
AssignVariableOp_19AssignVariableOp4assignvariableop_19_adam_gru_34_gru_cell_34_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ц
AssignVariableOp_20AssignVariableOp>assignvariableop_20_adam_gru_34_gru_cell_34_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21К
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_gru_34_gru_cell_34_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpТ
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_22Е
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
С7


__inference__traced_save_231432
file_prefix.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_gru_34_gru_cell_34_kernel_read_readvariableopB
>savev2_gru_34_gru_cell_34_recurrent_kernel_read_readvariableop6
2savev2_gru_34_gru_cell_34_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_34_kernel_m_read_readvariableop3
/savev2_adam_dense_34_bias_m_read_readvariableop?
;savev2_adam_gru_34_gru_cell_34_kernel_m_read_readvariableopI
Esavev2_adam_gru_34_gru_cell_34_recurrent_kernel_m_read_readvariableop=
9savev2_adam_gru_34_gru_cell_34_bias_m_read_readvariableop5
1savev2_adam_dense_34_kernel_v_read_readvariableop3
/savev2_adam_dense_34_bias_v_read_readvariableop?
;savev2_adam_gru_34_gru_cell_34_kernel_v_read_readvariableopI
Esavev2_adam_gru_34_gru_cell_34_recurrent_kernel_v_read_readvariableop=
9savev2_adam_gru_34_gru_cell_34_bias_v_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ј
valueBB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЖ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesІ

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_gru_34_gru_cell_34_kernel_read_readvariableop>savev2_gru_34_gru_cell_34_recurrent_kernel_read_readvariableop2savev2_gru_34_gru_cell_34_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop/savev2_adam_dense_34_bias_m_read_readvariableop;savev2_adam_gru_34_gru_cell_34_kernel_m_read_readvariableopEsavev2_adam_gru_34_gru_cell_34_recurrent_kernel_m_read_readvariableop9savev2_adam_gru_34_gru_cell_34_bias_m_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableop/savev2_adam_dense_34_bias_v_read_readvariableop;savev2_adam_gru_34_gru_cell_34_kernel_v_read_readvariableopEsavev2_adam_gru_34_gru_cell_34_recurrent_kernel_v_read_readvariableop9savev2_adam_gru_34_gru_cell_34_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*К
_input_shapesЈ
Ѕ: :2:: : : : : :	:	2:	: : :2::	:	2:	:2::	:	2:	: 2(
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
:	:%	!

_output_shapes
:	2:%
!

_output_shapes
:	:
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
:	:%!

_output_shapes
:	2:%!

_output_shapes
:	:$ 

_output_shapes

:2: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	2:%!

_output_shapes
:	:

_output_shapes
: 
њ

I__inference_sequential_34_layer_call_and_return_conditional_losses_230100
gru_34_input
gru_34_230066
gru_34_230068
gru_34_230070
dense_34_230094
dense_34_230096
identityЂ dense_34/StatefulPartitionedCallЂgru_34/StatefulPartitionedCallЁ
gru_34/StatefulPartitionedCallStatefulPartitionedCallgru_34_inputgru_34_230066gru_34_230068gru_34_230070*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_34_layer_call_and_return_conditional_losses_2298882 
gru_34/StatefulPartitionedCallЕ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall'gru_34/StatefulPartitionedCall:output:0dense_34_230094dense_34_230096*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_2300832"
 dense_34/StatefulPartitionedCallС
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0!^dense_34/StatefulPartitionedCall^gru_34/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2@
gru_34/StatefulPartitionedCallgru_34/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegru_34_input
о	
Ў
,__inference_gru_cell_34_layer_call_fn_231343

inputs
states_0
unknown
	unknown_0
	unknown_1
identity

identity_1ЂStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ2:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_2292802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*E
_input_shapes4
2:џџџџџџџџџ:џџџџџџџџџ2:::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ2
"
_user_specified_name
states/0
ЛY
н
B__inference_gru_34_layer_call_and_return_conditional_losses_230711
inputs_0'
#gru_cell_34_readvariableop_resource.
*gru_cell_34_matmul_readvariableop_resource0
,gru_cell_34_matmul_1_readvariableop_resource
identityЂ!gru_cell_34/MatMul/ReadVariableOpЂ#gru_cell_34/MatMul_1/ReadVariableOpЂgru_cell_34/ReadVariableOpЂwhileF
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
strided_slice/stack_2т
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
B :ш2
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
zeros/packed/1
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
:џџџџџџџџџ22
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2
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
strided_slice_1/stack_2ю
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
TensorArrayV2/element_shapeВ
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2П
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeј
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
strided_slice_2/stack_2ќ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask2
strided_slice_2
gru_cell_34/ReadVariableOpReadVariableOp#gru_cell_34_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_34/ReadVariableOp
gru_cell_34/unstackUnpack"gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
gru_cell_34/unstackВ
!gru_cell_34/MatMul/ReadVariableOpReadVariableOp*gru_cell_34_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!gru_cell_34/MatMul/ReadVariableOpЊ
gru_cell_34/MatMulMatMulstrided_slice_2:output:0)gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMulЄ
gru_cell_34/BiasAddBiasAddgru_cell_34/MatMul:product:0gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAddh
gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
gru_cell_34/Const
gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split/split_dimм
gru_cell_34/splitSplit$gru_cell_34/split/split_dim:output:0gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/splitИ
#gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp,gru_cell_34_matmul_1_readvariableop_resource*
_output_shapes
:	2*
dtype02%
#gru_cell_34/MatMul_1/ReadVariableOpІ
gru_cell_34/MatMul_1MatMulzeros:output:0+gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/MatMul_1Њ
gru_cell_34/BiasAdd_1BiasAddgru_cell_34/MatMul_1:product:0gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
gru_cell_34/BiasAdd_1
gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
gru_cell_34/Const_1
gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2
gru_cell_34/split_1/split_dim
gru_cell_34/split_1SplitVgru_cell_34/BiasAdd_1:output:0gru_cell_34/Const_1:output:0&gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
gru_cell_34/split_1
gru_cell_34/addAddV2gru_cell_34/split:output:0gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add
gru_cell_34/add_1AddV2gru_cell_34/split:output:1gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_1
gru_cell_34/mulMulgru_cell_34/add_1:z:0gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul
gru_cell_34/add_2AddV2gru_cell_34/split:output:2gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_2u
gru_cell_34/TanhTanhgru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/Tanh
gru_cell_34/mul_1Mulgru_cell_34/add:z:0zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_1k
gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_34/sub/x
gru_cell_34/subSubgru_cell_34/sub/x:output:0gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/sub
gru_cell_34/mul_2Mulgru_cell_34/sub:z:0gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/mul_2
gru_cell_34/add_3AddV2gru_cell_34/mul_1:z:0gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
gru_cell_34/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   2
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
џџџџџџџџџ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterЊ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0#gru_cell_34_readvariableop_resource*gru_cell_34_matmul_readvariableop_resource,gru_cell_34_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_230623*
condR
while_cond_230622*8
output_shapes'
%: : : : :џџџџџџџџџ2: : : : : *
parallel_iterations 2
whileЕ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ2   22
0TensorArrayV2Stack/TensorListStack/element_shapeё
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ2*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ2
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
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ2*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЎ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ22
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeл
IdentityIdentitystrided_slice_3:output:0"^gru_cell_34/MatMul/ReadVariableOp$^gru_cell_34/MatMul_1/ReadVariableOp^gru_cell_34/ReadVariableOp^while*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*?
_input_shapes.
,:џџџџџџџџџџџџџџџџџџ:::2F
!gru_cell_34/MatMul/ReadVariableOp!gru_cell_34/MatMul/ReadVariableOp2J
#gru_cell_34/MatMul_1/ReadVariableOp#gru_cell_34/MatMul_1/ReadVariableOp28
gru_cell_34/ReadVariableOpgru_cell_34/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
КE
Ў
while_body_230623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
+while_gru_cell_34_readvariableop_resource_06
2while_gru_cell_34_matmul_readvariableop_resource_08
4while_gru_cell_34_matmul_1_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
)while_gru_cell_34_readvariableop_resource4
0while_gru_cell_34_matmul_readvariableop_resource6
2while_gru_cell_34_matmul_1_readvariableop_resourceЂ'while/gru_cell_34/MatMul/ReadVariableOpЂ)while/gru_cell_34/MatMul_1/ReadVariableOpЂ while/gru_cell_34/ReadVariableOpУ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeг
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemБ
 while/gru_cell_34/ReadVariableOpReadVariableOp+while_gru_cell_34_readvariableop_resource_0*
_output_shapes
:	*
dtype02"
 while/gru_cell_34/ReadVariableOpЂ
while/gru_cell_34/unstackUnpack(while/gru_cell_34/ReadVariableOp:value:0*
T0*"
_output_shapes
::*	
num2
while/gru_cell_34/unstackЦ
'while/gru_cell_34/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_34_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype02)
'while/gru_cell_34/MatMul/ReadVariableOpд
while/gru_cell_34/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMulМ
while/gru_cell_34/BiasAddBiasAdd"while/gru_cell_34/MatMul:product:0"while/gru_cell_34/unstack:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAddt
while/gru_cell_34/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/gru_cell_34/Const
!while/gru_cell_34/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2#
!while/gru_cell_34/split/split_dimє
while/gru_cell_34/splitSplit*while/gru_cell_34/split/split_dim:output:0"while/gru_cell_34/BiasAdd:output:0*
T0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/splitЬ
)while/gru_cell_34/MatMul_1/ReadVariableOpReadVariableOp4while_gru_cell_34_matmul_1_readvariableop_resource_0*
_output_shapes
:	2*
dtype02+
)while/gru_cell_34/MatMul_1/ReadVariableOpН
while/gru_cell_34/MatMul_1MatMulwhile_placeholder_21while/gru_cell_34/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/MatMul_1Т
while/gru_cell_34/BiasAdd_1BiasAdd$while/gru_cell_34/MatMul_1:product:0"while/gru_cell_34/unstack:output:1*
T0*(
_output_shapes
:џџџџџџџџџ2
while/gru_cell_34/BiasAdd_1
while/gru_cell_34/Const_1Const*
_output_shapes
:*
dtype0*!
valueB"2   2   џџџџ2
while/gru_cell_34/Const_1
#while/gru_cell_34/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ2%
#while/gru_cell_34/split_1/split_dim­
while/gru_cell_34/split_1SplitV$while/gru_cell_34/BiasAdd_1:output:0"while/gru_cell_34/Const_1:output:0,while/gru_cell_34/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:џџџџџџџџџ2:џџџџџџџџџ2:џџџџџџџџџ2*
	num_split2
while/gru_cell_34/split_1Џ
while/gru_cell_34/addAddV2 while/gru_cell_34/split:output:0"while/gru_cell_34/split_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/addГ
while/gru_cell_34/add_1AddV2 while/gru_cell_34/split:output:1"while/gru_cell_34/split_1:output:1*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_1Ј
while/gru_cell_34/mulMulwhile/gru_cell_34/add_1:z:0"while/gru_cell_34/split_1:output:2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mulЊ
while/gru_cell_34/add_2AddV2 while/gru_cell_34/split:output:2while/gru_cell_34/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_2
while/gru_cell_34/TanhTanhwhile/gru_cell_34/add_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/Tanh
while/gru_cell_34/mul_1Mulwhile/gru_cell_34/add:z:0while_placeholder_2*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_1w
while/gru_cell_34/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_34/sub/xЄ
while/gru_cell_34/subSub while/gru_cell_34/sub/x:output:0while/gru_cell_34/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/subЂ
while/gru_cell_34/mul_2Mulwhile/gru_cell_34/sub:z:0while/gru_cell_34/Tanh:y:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/mul_2Ї
while/gru_cell_34/add_3AddV2while/gru_cell_34/mul_1:z:0while/gru_cell_34/mul_2:z:0*
T0*'
_output_shapes
:џџџџџџџџџ22
while/gru_cell_34/add_3п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_34/add_3:z:0*
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
while/add_1з
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityъ
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1й
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ј
while/Identity_4Identitywhile/gru_cell_34/add_3:z:0(^while/gru_cell_34/MatMul/ReadVariableOp*^while/gru_cell_34/MatMul_1/ReadVariableOp!^while/gru_cell_34/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ22
while/Identity_4"j
2while_gru_cell_34_matmul_1_readvariableop_resource4while_gru_cell_34_matmul_1_readvariableop_resource_0"f
0while_gru_cell_34_matmul_readvariableop_resource2while_gru_cell_34_matmul_readvariableop_resource_0"X
)while_gru_cell_34_readvariableop_resource+while_gru_cell_34_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*>
_input_shapes-
+: : : : :џџџџџџџџџ2: : :::2R
'while/gru_cell_34/MatMul/ReadVariableOp'while/gru_cell_34/MatMul/ReadVariableOp2V
)while/gru_cell_34/MatMul_1/ReadVariableOp)while/gru_cell_34/MatMul_1/ReadVariableOp2D
 while/gru_cell_34/ReadVariableOp while/gru_cell_34/ReadVariableOp: 
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
:џџџџџџџџџ2:

_output_shapes
: :

_output_shapes
: 
њ

I__inference_sequential_34_layer_call_and_return_conditional_losses_230116
gru_34_input
gru_34_230103
gru_34_230105
gru_34_230107
dense_34_230110
dense_34_230112
identityЂ dense_34/StatefulPartitionedCallЂgru_34/StatefulPartitionedCallЁ
gru_34/StatefulPartitionedCallStatefulPartitionedCallgru_34_inputgru_34_230103gru_34_230105gru_34_230107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_34_layer_call_and_return_conditional_losses_2300432 
gru_34/StatefulPartitionedCallЕ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall'gru_34/StatefulPartitionedCall:output:0dense_34_230110dense_34_230112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_2300832"
 dense_34/StatefulPartitionedCallС
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0!^dense_34/StatefulPartitionedCall^gru_34/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ:::::2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2@
gru_34/StatefulPartitionedCallgru_34/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namegru_34_input


'__inference_gru_34_layer_call_fn_231209

inputs
unknown
	unknown_0
	unknown_1
identityЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gru_34_layer_call_and_return_conditional_losses_2298882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ:::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultЅ
I
gru_34_input9
serving_default_gru_34_input:0џџџџџџџџџ<
dense_340
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:
і!
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
G__call__"н
_tf_keras_sequentialО{"class_name": "Sequential", "name": "sequential_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_34", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_34_input"}}, {"class_name": "GRU", "config": {"name": "gru_34", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}, {"class_name": "Dense", "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 3]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_34", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_34_input"}}, {"class_name": "GRU", "config": {"name": "gru_34", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}, {"class_name": "Dense", "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mae", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Њ
	cell


state_spec
regularization_losses
trainable_variables
	variables
	keras_api
*H&call_and_return_all_conditional_losses
I__call__"
_tf_keras_rnn_layerу
{"class_name": "GRU", "name": "gru_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_34", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 3]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 3]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 3]}}
ѓ

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*J&call_and_return_all_conditional_losses
K__call__"Ю
_tf_keras_layerД{"class_name": "Dense", "name": "dense_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
­
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
Ъ

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
Ё

kernel
recurrent_kernel
bias
"regularization_losses
#trainable_variables
$	variables
%	keras_api
*M&call_and_return_all_conditional_losses
N__call__"ц
_tf_keras_layerЬ{"class_name": "GRUCell", "name": "gru_cell_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gru_cell_34", "trainable": true, "dtype": "float32", "units": 50, "activation": "tanh", "recurrent_activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}}
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
Й

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
!:22dense_34/kernel
:2dense_34/bias
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
­

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
,:*	2gru_34/gru_cell_34/kernel
6:4	22#gru_34/gru_cell_34/recurrent_kernel
*:(	2gru_34/gru_cell_34/bias
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
­

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
Л
	7total
	8count
9	variables
:	keras_api"
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
&:$22Adam/dense_34/kernel/m
 :2Adam/dense_34/bias/m
1:/	2 Adam/gru_34/gru_cell_34/kernel/m
;:9	22*Adam/gru_34/gru_cell_34/recurrent_kernel/m
/:-	2Adam/gru_34/gru_cell_34/bias/m
&:$22Adam/dense_34/kernel/v
 :2Adam/dense_34/bias/v
1:/	2 Adam/gru_34/gru_cell_34/kernel/v
;:9	22*Adam/gru_34/gru_cell_34/recurrent_kernel/v
/:-	2Adam/gru_34/gru_cell_34/bias/v
ш2х
!__inference__wrapped_model_229172П
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ */Ђ,
*'
gru_34_inputџџџџџџџџџ
ђ2я
I__inference_sequential_34_layer_call_and_return_conditional_losses_230526
I__inference_sequential_34_layer_call_and_return_conditional_losses_230116
I__inference_sequential_34_layer_call_and_return_conditional_losses_230365
I__inference_sequential_34_layer_call_and_return_conditional_losses_230100Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
.__inference_sequential_34_layer_call_fn_230556
.__inference_sequential_34_layer_call_fn_230179
.__inference_sequential_34_layer_call_fn_230541
.__inference_sequential_34_layer_call_fn_230148Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ы2ш
B__inference_gru_34_layer_call_and_return_conditional_losses_230711
B__inference_gru_34_layer_call_and_return_conditional_losses_231043
B__inference_gru_34_layer_call_and_return_conditional_losses_230866
B__inference_gru_34_layer_call_and_return_conditional_losses_231198е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
џ2ќ
'__inference_gru_34_layer_call_fn_230888
'__inference_gru_34_layer_call_fn_230877
'__inference_gru_34_layer_call_fn_231209
'__inference_gru_34_layer_call_fn_231220е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
D__inference_dense_34_layer_call_and_return_conditional_losses_231230Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
г2а
)__inference_dense_34_layer_call_fn_231239Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
аBЭ
$__inference_signature_wrapper_230204gru_34_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ж2г
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_231277
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_231315О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 2
,__inference_gru_cell_34_layer_call_fn_231329
,__inference_gru_cell_34_layer_call_fn_231343О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
!__inference__wrapped_model_229172w9Ђ6
/Ђ,
*'
gru_34_inputџџџџџџџџџ
Њ "3Њ0
.
dense_34"
dense_34џџџџџџџџџЄ
D__inference_dense_34_layer_call_and_return_conditional_losses_231230\/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "%Ђ"

0џџџџџџџџџ
 |
)__inference_dense_34_layer_call_fn_231239O/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "џџџџџџџџџУ
B__inference_gru_34_layer_call_and_return_conditional_losses_230711}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ2
 У
B__inference_gru_34_layer_call_and_return_conditional_losses_230866}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ2
 Г
B__inference_gru_34_layer_call_and_return_conditional_losses_231043m?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ2
 Г
B__inference_gru_34_layer_call_and_return_conditional_losses_231198m?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ2
 
'__inference_gru_34_layer_call_fn_230877pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ2
'__inference_gru_34_layer_call_fn_230888pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ2
'__inference_gru_34_layer_call_fn_231209`?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ2
'__inference_gru_34_layer_call_fn_231220`?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџ2
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_231277З\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ2
p
Њ "RЂO
HЂE

0/0џџџџџџџџџ2
$!

0/1/0џџџџџџџџџ2
 
G__inference_gru_cell_34_layer_call_and_return_conditional_losses_231315З\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ2
p 
Њ "RЂO
HЂE

0/0џџџџџџџџџ2
$!

0/1/0џџџџџџџџџ2
 к
,__inference_gru_cell_34_layer_call_fn_231329Љ\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ2
p
Њ "DЂA

0џџџџџџџџџ2
"

1/0џџџџџџџџџ2к
,__inference_gru_cell_34_layer_call_fn_231343Љ\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ2
p 
Њ "DЂA

0џџџџџџџџџ2
"

1/0џџџџџџџџџ2О
I__inference_sequential_34_layer_call_and_return_conditional_losses_230100qAЂ>
7Ђ4
*'
gru_34_inputџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 О
I__inference_sequential_34_layer_call_and_return_conditional_losses_230116qAЂ>
7Ђ4
*'
gru_34_inputџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 И
I__inference_sequential_34_layer_call_and_return_conditional_losses_230365k;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%Ђ"

0џџџџџџџџџ
 И
I__inference_sequential_34_layer_call_and_return_conditional_losses_230526k;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 
.__inference_sequential_34_layer_call_fn_230148dAЂ>
7Ђ4
*'
gru_34_inputџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
.__inference_sequential_34_layer_call_fn_230179dAЂ>
7Ђ4
*'
gru_34_inputџџџџџџџџџ
p 

 
Њ "џџџџџџџџџ
.__inference_sequential_34_layer_call_fn_230541^;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "џџџџџџџџџ
.__inference_sequential_34_layer_call_fn_230556^;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "џџџџџџџџџА
$__inference_signature_wrapper_230204IЂF
Ђ 
?Њ<
:
gru_34_input*'
gru_34_inputџџџџџџџџџ"3Њ0
.
dense_34"
dense_34џџџџџџџџџ