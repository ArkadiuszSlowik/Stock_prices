ΚΏ
υΚ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
Α
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
φ
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleιθelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
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
"serve*2.8.42v2.8.3-90-g1b8f5c396f08ΆΎ
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:)*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
d
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
h

Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
h

Variable_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_2
a
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
h

Variable_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_3
a
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
: *
dtype0
\
iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiter
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	

gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:{*$
shared_namegru/gru_cell/kernel
{
'gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel*
_output_shapes

:{*
dtype0

gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:){*.
shared_namegru/gru_cell/recurrent_kernel

1gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel*
_output_shapes

:){*
dtype0
~
gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:{*"
shared_namegru/gru_cell/bias
w
%gru/gru_cell/bias/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias*
_output_shapes

:{*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
x
dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)*
shared_namedense/kernel/m
q
"dense/kernel/m/Read/ReadVariableOpReadVariableOpdense/kernel/m*
_output_shapes

:)*
dtype0
p
dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense/bias/m
i
 dense/bias/m/Read/ReadVariableOpReadVariableOpdense/bias/m*
_output_shapes
:*
dtype0

gru/gru_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:{*&
shared_namegru/gru_cell/kernel/m

)gru/gru_cell/kernel/m/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel/m*
_output_shapes

:{*
dtype0

gru/gru_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:){*0
shared_name!gru/gru_cell/recurrent_kernel/m

3gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel/m*
_output_shapes

:){*
dtype0

gru/gru_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:{*$
shared_namegru/gru_cell/bias/m
{
'gru/gru_cell/bias/m/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias/m*
_output_shapes

:{*
dtype0
x
dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:)*
shared_namedense/kernel/v
q
"dense/kernel/v/Read/ReadVariableOpReadVariableOpdense/kernel/v*
_output_shapes

:)*
dtype0
p
dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense/bias/v
i
 dense/bias/v/Read/ReadVariableOpReadVariableOpdense/bias/v*
_output_shapes
:*
dtype0

gru/gru_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:{*&
shared_namegru/gru_cell/kernel/v

)gru/gru_cell/kernel/v/Read/ReadVariableOpReadVariableOpgru/gru_cell/kernel/v*
_output_shapes

:{*
dtype0

gru/gru_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:){*0
shared_name!gru/gru_cell/recurrent_kernel/v

3gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpgru/gru_cell/recurrent_kernel/v*
_output_shapes

:){*
dtype0

gru/gru_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:{*$
shared_namegru/gru_cell/bias/v
{
'gru/gru_cell/bias/v/Read/ReadVariableOpReadVariableOpgru/gru_cell/bias/v*
_output_shapes

:{*
dtype0

NoOpNoOp
σ+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?+
value€+B‘+ B+

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
Α
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*


beta_1

beta_2
	decay
 learning_rate
!itermSmT"mU#mV$mWvXvY"vZ#v[$v\*
'
"0
#1
$2
3
4*
'
"0
#1
$2
3
4*
* 
°
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

*serving_default* 
Σ

"kernel
#recurrent_kernel
$bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/_random_generator
0__call__
*1&call_and_return_all_conditional_losses*
* 

"0
#1
$2*

"0
#1
$2*
* 


2states
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
MG
VARIABLE_VALUEVariable+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUE
Variable_1+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Variable_2*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUE
Variable_32optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
GA
VARIABLE_VALUEiter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEgru/gru_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEgru/gru_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEgru/gru_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

=0
>1
?2*
* 
* 
* 

"0
#1
$2*

"0
#1
$2*
* 

@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
+	variables
,trainable_variables
-regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	Etotal
	Fcount
G	variables
H	keras_api*
H
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api*
H
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

E0
F1*

G	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

I0
J1*

L	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

N0
O1*

Q	variables*
zt
VARIABLE_VALUEdense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEdense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEgru/gru_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEgru/gru_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEgru/gru_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEdense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEdense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEgru/gru_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEgru/gru_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUEgru/gru_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_1Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1gru/gru_cell/biasgru/gru_cell/kernelgru/gru_cell/recurrent_kerneldense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2732782
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ϋ	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOpVariable_3/Read/ReadVariableOpiter/Read/ReadVariableOp'gru/gru_cell/kernel/Read/ReadVariableOp1gru/gru_cell/recurrent_kernel/Read/ReadVariableOp%gru/gru_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp"dense/kernel/m/Read/ReadVariableOp dense/bias/m/Read/ReadVariableOp)gru/gru_cell/kernel/m/Read/ReadVariableOp3gru/gru_cell/recurrent_kernel/m/Read/ReadVariableOp'gru/gru_cell/bias/m/Read/ReadVariableOp"dense/kernel/v/Read/ReadVariableOp dense/bias/v/Read/ReadVariableOp)gru/gru_cell/kernel/v/Read/ReadVariableOp3gru/gru_cell/recurrent_kernel/v/Read/ReadVariableOp'gru/gru_cell/bias/v/Read/ReadVariableOpConst*'
Tin 
2	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_2733664
Ξ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasVariable
Variable_1
Variable_2
Variable_3itergru/gru_cell/kernelgru/gru_cell/recurrent_kernelgru/gru_cell/biastotalcounttotal_1count_1total_2count_2dense/kernel/mdense/bias/mgru/gru_cell/kernel/mgru/gru_cell/recurrent_kernel/mgru/gru_cell/bias/mdense/kernel/vdense/bias/vgru/gru_cell/kernel/vgru/gru_cell/recurrent_kernel/vgru/gru_cell/bias/v*&
Tin
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_2733752ΈΟ
Τ
π
,__inference_sequential_layer_call_fn_2732432

inputs
unknown:{
	unknown_0:{
	unknown_1:){
	unknown_2:)
	unknown_3:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_2732120o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
¦K
ρ
@__inference_gru_layer_call_and_return_conditional_losses_2732309

inputs2
 gru_cell_readvariableop_resource:{9
'gru_cell_matmul_readvariableop_resource:{;
)gru_cell_matmul_1_readvariableop_resource:){
identity’gru_cell/MatMul/ReadVariableOp’ gru_cell/MatMul_1/ReadVariableOp’gru_cell/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????)c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????κ
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)_
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????)}
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)[
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????)S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2732220*
condR
while_cond_2732219*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????)*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????)[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????)¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ς
³
%__inference_gru_layer_call_fn_2732826

inputs
unknown:{
	unknown_0:{
	unknown_1:){
identity’StatefulPartitionedCallβ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2732309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????)`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
¦K
ρ
@__inference_gru_layer_call_and_return_conditional_losses_2732095

inputs2
 gru_cell_readvariableop_resource:{9
'gru_cell_matmul_readvariableop_resource:{;
)gru_cell_matmul_1_readvariableop_resource:){
identity’gru_cell/MatMul/ReadVariableOp’ gru_cell/MatMul_1/ReadVariableOp’gru_cell/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????)c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????κ
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)_
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????)}
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)[
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????)S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2732006*
condR
while_cond_2732005*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????)*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????)[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????)¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ό
Τ
E__inference_gru_cell_layer_call_and_return_conditional_losses_2731668

inputs

states)
readvariableop_resource:{0
matmul_readvariableop_resource:{2
 matmul_1_readvariableop_resource:){
identity

identity_1’MatMul/ReadVariableOp’MatMul_1/ReadVariableOp’ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:{*
dtype0_
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
numt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:{*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{h
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:?????????{Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_splitx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{l
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:?????????{Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ζ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????)M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????)b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????)Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????)]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????)Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????)I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:?????????)S
mul_1MulSigmoid:y:0states*
T0*'
_output_shapes
:?????????)J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????)[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:?????????)V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????)X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????)Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????)
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????): : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????)
 
_user_specified_namestates
;
θ
while_body_2733349
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:{A
/while_gru_cell_matmul_readvariableop_resource_0:{C
1while_gru_cell_matmul_1_readvariableop_resource_0:){
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:{?
-while_gru_cell_matmul_readvariableop_resource:{A
/while_gru_cell_matmul_1_readvariableop_resource:){’$while/gru_cell/MatMul/ReadVariableOp’&while/gru_cell/MatMul_1/ReadVariableOp’while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Π
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????)Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)Α
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?u
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????)Ό

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 
ί
―
while_cond_2732219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2732219___redundant_placeholder05
1while_while_cond_2732219___redundant_placeholder15
1while_while_cond_2732219___redundant_placeholder25
1while_while_cond_2732219___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
ί
―
while_cond_2733042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2733042___redundant_placeholder05
1while_while_cond_2733042___redundant_placeholder15
1while_while_cond_2733042___redundant_placeholder25
1while_while_cond_2733042___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
Χ
ρ
,__inference_sequential_layer_call_fn_2732133
input_1
unknown:{
	unknown_0:{
	unknown_1:){
	unknown_2:)
	unknown_3:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_2732120o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1

Φ
E__inference_gru_cell_layer_call_and_return_conditional_losses_2733563

inputs
states_0)
readvariableop_resource:{0
matmul_readvariableop_resource:{2
 matmul_1_readvariableop_resource:){
identity

identity_1’MatMul/ReadVariableOp’MatMul_1/ReadVariableOp’ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:{*
dtype0_
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
numt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:{*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{h
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:?????????{Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_splitx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{l
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:?????????{Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ζ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????)M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????)b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????)Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????)]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????)Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????)I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:?????????)U
mul_1MulSigmoid:y:0states_0*
T0*'
_output_shapes
:?????????)J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????)[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:?????????)V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????)X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????)Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????)
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????): : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????)
"
_user_specified_name
states/0
ΫK
σ
@__inference_gru_layer_call_and_return_conditional_losses_2732979
inputs_02
 gru_cell_readvariableop_resource:{9
'gru_cell_matmul_readvariableop_resource:{;
)gru_cell_matmul_1_readvariableop_resource:){
identity’gru_cell/MatMul/ReadVariableOp’ gru_cell/MatMul_1/ReadVariableOp’gru_cell/ReadVariableOp’while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????)c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????κ
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)_
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????)}
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)[
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????)S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2732890*
condR
while_cond_2732889*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????)*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????)[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????)¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
«
κ
%__inference_signature_wrapper_2732782
input_1
unknown:{
	unknown_0:{
	unknown_1:){
	unknown_2:)
	unknown_3:
identity’StatefulPartitionedCallί
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2731598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1

ΐ
G__inference_sequential_layer_call_and_return_conditional_losses_2732411
input_1
gru_2732398:{
gru_2732400:{
gru_2732402:){
dense_2732405:)
dense_2732407:
identity’dense/StatefulPartitionedCall’gru/StatefulPartitionedCallο
gru/StatefulPartitionedCallStatefulPartitionedCallinput_1gru_2732398gru_2732400gru_2732402*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2732309
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_2732405dense_2732407*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_2732113u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
ί
―
while_cond_2732005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2732005___redundant_placeholder05
1while_while_cond_2732005___redundant_placeholder15
1while_while_cond_2732005___redundant_placeholder25
1while_while_cond_2732005___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
Τ
π
,__inference_sequential_layer_call_fn_2732447

inputs
unknown:{
	unknown_0:{
	unknown_1:){
	unknown_2:)
	unknown_3:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_2732351o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Λ
ϋ
gru_while_cond_2732669$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1=
9gru_while_gru_while_cond_2732669___redundant_placeholder0=
9gru_while_gru_while_cond_2732669___redundant_placeholder1=
9gru_while_gru_while_cond_2732669___redundant_placeholder2=
9gru_while_gru_while_cond_2732669___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
ΫK
σ
@__inference_gru_layer_call_and_return_conditional_losses_2733132
inputs_02
 gru_cell_readvariableop_resource:{9
'gru_cell_matmul_readvariableop_resource:{;
)gru_cell_matmul_1_readvariableop_resource:){
identity’gru_cell/MatMul/ReadVariableOp’ gru_cell/MatMul_1/ReadVariableOp’gru_cell/ReadVariableOp’while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????)c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????κ
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)_
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????)}
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)[
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????)S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2733043*
condR
while_cond_2733042*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????)*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????)[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????)¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
ΏW
Ύ
G__inference_sequential_layer_call_and_return_conditional_losses_2732606

inputs6
$gru_gru_cell_readvariableop_resource:{=
+gru_gru_cell_matmul_readvariableop_resource:{?
-gru_gru_cell_matmul_1_readvariableop_resource:){6
$dense_matmul_readvariableop_resource:)3
%dense_biasadd_readvariableop_resource:
identity’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOp’"gru/gru_cell/MatMul/ReadVariableOp’$gru/gru_cell/MatMul_1/ReadVariableOp’gru/gru_cell/ReadVariableOp’	gru/while?
	gru/ShapeShapeinputs*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????)g
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
gru/transpose	Transposeinputsgru/transpose/perm:output:0*
T0*+
_output_shapes
:?????????L
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????ΐ
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   μ
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?c
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ύ
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0y
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
"gru/gru_cell/MatMul/ReadVariableOpReadVariableOp+gru_gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0*gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0gru/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{g
gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Κ
gru/gru_cell/splitSplit%gru/gru_cell/split/split_dim:output:0gru/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
$gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp-gru_gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0
gru/gru_cell/MatMul_1MatMulgru/zeros:output:0,gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0gru/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{g
gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????i
gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????ϊ
gru/gru_cell/split_1SplitVgru/gru_cell/BiasAdd_1:output:0gru/gru_cell/Const:output:0'gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
gru/gru_cell/addAddV2gru/gru_cell/split:output:0gru/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)g
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
gru/gru_cell/add_1AddV2gru/gru_cell/split:output:1gru/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)k
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
gru/gru_cell/mulMulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
gru/gru_cell/add_2AddV2gru/gru_cell/split:output:2gru/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)c
gru/gru_cell/ReluRelugru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)y
gru/gru_cell/mul_1Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*'
_output_shapes
:?????????)W
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
gru/gru_cell/mul_2Mulgru/gru_cell/sub:z:0gru/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)}
gru/gru_cell/add_3AddV2gru/gru_cell/mul_1:z:0gru/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)r
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Δ
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?J
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????X
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : λ
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource+gru_gru_cell_matmul_readvariableop_resource-gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *"
bodyR
gru_while_body_2732511*"
condR
gru_while_cond_2732510*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Ξ
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????)*
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????e
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????)_
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:)*
dtype0
dense/MatMulMatMulgru/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????ω
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp#^gru/gru_cell/MatMul/ReadVariableOp%^gru/gru_cell/MatMul_1/ReadVariableOp^gru/gru_cell/ReadVariableOp
^gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2H
"gru/gru_cell/MatMul/ReadVariableOp"gru/gru_cell/MatMul/ReadVariableOp2L
$gru/gru_cell/MatMul_1/ReadVariableOp$gru/gru_cell/MatMul_1/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2
	gru/while	gru/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ί
―
while_cond_2733348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2733348___redundant_placeholder05
1while_while_cond_2733348___redundant_placeholder15
1while_while_cond_2733348___redundant_placeholder25
1while_while_cond_2733348___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
;
θ
while_body_2733196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:{A
/while_gru_cell_matmul_readvariableop_resource_0:{C
1while_gru_cell_matmul_1_readvariableop_resource_0:){
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:{?
-while_gru_cell_matmul_readvariableop_resource:{A
/while_gru_cell_matmul_1_readvariableop_resource:){’$while/gru_cell/MatMul/ReadVariableOp’&while/gru_cell/MatMul_1/ReadVariableOp’while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Π
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????)Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)Α
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?u
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????)Ό

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 
ύM
ͺ
!sequential_gru_while_body_2731503:
6sequential_gru_while_sequential_gru_while_loop_counter@
<sequential_gru_while_sequential_gru_while_maximum_iterations$
 sequential_gru_while_placeholder&
"sequential_gru_while_placeholder_1&
"sequential_gru_while_placeholder_29
5sequential_gru_while_sequential_gru_strided_slice_1_0u
qsequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensor_0I
7sequential_gru_while_gru_cell_readvariableop_resource_0:{P
>sequential_gru_while_gru_cell_matmul_readvariableop_resource_0:{R
@sequential_gru_while_gru_cell_matmul_1_readvariableop_resource_0:){!
sequential_gru_while_identity#
sequential_gru_while_identity_1#
sequential_gru_while_identity_2#
sequential_gru_while_identity_3#
sequential_gru_while_identity_47
3sequential_gru_while_sequential_gru_strided_slice_1s
osequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensorG
5sequential_gru_while_gru_cell_readvariableop_resource:{N
<sequential_gru_while_gru_cell_matmul_readvariableop_resource:{P
>sequential_gru_while_gru_cell_matmul_1_readvariableop_resource:){’3sequential/gru/while/gru_cell/MatMul/ReadVariableOp’5sequential/gru/while/gru_cell/MatMul_1/ReadVariableOp’,sequential/gru/while/gru_cell/ReadVariableOp
Fsequential/gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ρ
8sequential/gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensor_0 sequential_gru_while_placeholderOsequential/gru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0€
,sequential/gru/while/gru_cell/ReadVariableOpReadVariableOp7sequential_gru_while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0
%sequential/gru/while/gru_cell/unstackUnpack4sequential/gru/while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num²
3sequential/gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp>sequential_gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0ή
$sequential/gru/while/gru_cell/MatMulMatMul?sequential/gru/while/TensorArrayV2Read/TensorListGetItem:item:0;sequential/gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{Β
%sequential/gru/while/gru_cell/BiasAddBiasAdd.sequential/gru/while/gru_cell/MatMul:product:0.sequential/gru/while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{x
-sequential/gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????ύ
#sequential/gru/while/gru_cell/splitSplit6sequential/gru/while/gru_cell/split/split_dim:output:0.sequential/gru/while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_splitΆ
5sequential/gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp@sequential_gru_while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0Ε
&sequential/gru/while/gru_cell/MatMul_1MatMul"sequential_gru_while_placeholder_2=sequential/gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{Ζ
'sequential/gru/while/gru_cell/BiasAdd_1BiasAdd0sequential/gru/while/gru_cell/MatMul_1:product:0.sequential/gru/while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{x
#sequential/gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????z
/sequential/gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
%sequential/gru/while/gru_cell/split_1SplitV0sequential/gru/while/gru_cell/BiasAdd_1:output:0,sequential/gru/while/gru_cell/Const:output:08sequential/gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_splitΊ
!sequential/gru/while/gru_cell/addAddV2,sequential/gru/while/gru_cell/split:output:0.sequential/gru/while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)
%sequential/gru/while/gru_cell/SigmoidSigmoid%sequential/gru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)Ό
#sequential/gru/while/gru_cell/add_1AddV2,sequential/gru/while/gru_cell/split:output:1.sequential/gru/while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)
'sequential/gru/while/gru_cell/Sigmoid_1Sigmoid'sequential/gru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)·
!sequential/gru/while/gru_cell/mulMul+sequential/gru/while/gru_cell/Sigmoid_1:y:0.sequential/gru/while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)³
#sequential/gru/while/gru_cell/add_2AddV2,sequential/gru/while/gru_cell/split:output:2%sequential/gru/while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)
"sequential/gru/while/gru_cell/ReluRelu'sequential/gru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)«
#sequential/gru/while/gru_cell/mul_1Mul)sequential/gru/while/gru_cell/Sigmoid:y:0"sequential_gru_while_placeholder_2*
T0*'
_output_shapes
:?????????)h
#sequential/gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?³
!sequential/gru/while/gru_cell/subSub,sequential/gru/while/gru_cell/sub/x:output:0)sequential/gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)΅
#sequential/gru/while/gru_cell/mul_2Mul%sequential/gru/while/gru_cell/sub:z:00sequential/gru/while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)°
#sequential/gru/while/gru_cell/add_3AddV2'sequential/gru/while/gru_cell/mul_1:z:0'sequential/gru/while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)ύ
9sequential/gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"sequential_gru_while_placeholder_1 sequential_gru_while_placeholder'sequential/gru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?\
sequential/gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/gru/while/addAddV2 sequential_gru_while_placeholder#sequential/gru/while/add/y:output:0*
T0*
_output_shapes
: ^
sequential/gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
sequential/gru/while/add_1AddV26sequential_gru_while_sequential_gru_while_loop_counter%sequential/gru/while/add_1/y:output:0*
T0*
_output_shapes
: 
sequential/gru/while/IdentityIdentitysequential/gru/while/add_1:z:0^sequential/gru/while/NoOp*
T0*
_output_shapes
: ¦
sequential/gru/while/Identity_1Identity<sequential_gru_while_sequential_gru_while_maximum_iterations^sequential/gru/while/NoOp*
T0*
_output_shapes
: 
sequential/gru/while/Identity_2Identitysequential/gru/while/add:z:0^sequential/gru/while/NoOp*
T0*
_output_shapes
: Ζ
sequential/gru/while/Identity_3IdentityIsequential/gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/gru/while/NoOp*
T0*
_output_shapes
: :ιθ?’
sequential/gru/while/Identity_4Identity'sequential/gru/while/gru_cell/add_3:z:0^sequential/gru/while/NoOp*
T0*'
_output_shapes
:?????????)ψ
sequential/gru/while/NoOpNoOp4^sequential/gru/while/gru_cell/MatMul/ReadVariableOp6^sequential/gru/while/gru_cell/MatMul_1/ReadVariableOp-^sequential/gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
>sequential_gru_while_gru_cell_matmul_1_readvariableop_resource@sequential_gru_while_gru_cell_matmul_1_readvariableop_resource_0"~
<sequential_gru_while_gru_cell_matmul_readvariableop_resource>sequential_gru_while_gru_cell_matmul_readvariableop_resource_0"p
5sequential_gru_while_gru_cell_readvariableop_resource7sequential_gru_while_gru_cell_readvariableop_resource_0"G
sequential_gru_while_identity&sequential/gru/while/Identity:output:0"K
sequential_gru_while_identity_1(sequential/gru/while/Identity_1:output:0"K
sequential_gru_while_identity_2(sequential/gru/while/Identity_2:output:0"K
sequential_gru_while_identity_3(sequential/gru/while/Identity_3:output:0"K
sequential_gru_while_identity_4(sequential/gru/while/Identity_4:output:0"l
3sequential_gru_while_sequential_gru_strided_slice_15sequential_gru_while_sequential_gru_strided_slice_1_0"δ
osequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensorqsequential_gru_while_tensorarrayv2read_tensorlistgetitem_sequential_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2j
3sequential/gru/while/gru_cell/MatMul/ReadVariableOp3sequential/gru/while/gru_cell/MatMul/ReadVariableOp2n
5sequential/gru/while/gru_cell/MatMul_1/ReadVariableOp5sequential/gru/while/gru_cell/MatMul_1/ReadVariableOp2\
,sequential/gru/while/gru_cell/ReadVariableOp,sequential/gru/while/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 
ό
Τ
E__inference_gru_cell_layer_call_and_return_conditional_losses_2731811

inputs

states)
readvariableop_resource:{0
matmul_readvariableop_resource:{2
 matmul_1_readvariableop_resource:){
identity

identity_1’MatMul/ReadVariableOp’MatMul_1/ReadVariableOp’ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:{*
dtype0_
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
numt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:{*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{h
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:?????????{Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_splitx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{l
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:?????????{Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ζ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????)M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????)b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????)Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????)]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????)Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????)I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:?????????)S
mul_1MulSigmoid:y:0states*
T0*'
_output_shapes
:?????????)J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????)[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:?????????)V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????)X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????)Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????)
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????): : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????)
 
_user_specified_namestates
ί
―
while_cond_2731680
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2731680___redundant_placeholder05
1while_while_cond_2731680___redundant_placeholder15
1while_while_cond_2731680___redundant_placeholder25
1while_while_cond_2731680___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:

Φ
E__inference_gru_cell_layer_call_and_return_conditional_losses_2733524

inputs
states_0)
readvariableop_resource:{0
matmul_readvariableop_resource:{2
 matmul_1_readvariableop_resource:){
identity

identity_1’MatMul/ReadVariableOp’MatMul_1/ReadVariableOp’ReadVariableOpf
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:{*
dtype0_
unstackUnpackReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
numt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:{*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{h
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*'
_output_shapes
:?????????{Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????£
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_splitx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{l
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*'
_output_shapes
:?????????{Z
ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????\
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ζ
split_1SplitVBiasAdd_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:?????????)M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:?????????)b
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:?????????)Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:?????????)]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:?????????)Y
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:?????????)I
ReluRelu	add_2:z:0*
T0*'
_output_shapes
:?????????)U
mul_1MulSigmoid:y:0states_0*
T0*'
_output_shapes
:?????????)J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:?????????)[
mul_2Mulsub:z:0Relu:activations:0*
T0*'
_output_shapes
:?????????)V
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:?????????)X
IdentityIdentity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????)Z

Identity_1Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:?????????)
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????): : : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????)
"
_user_specified_name
states/0
@
ΰ
gru_while_body_2732670$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0>
,gru_while_gru_cell_readvariableop_resource_0:{E
3gru_while_gru_cell_matmul_readvariableop_resource_0:{G
5gru_while_gru_cell_matmul_1_readvariableop_resource_0:){
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor<
*gru_while_gru_cell_readvariableop_resource:{C
1gru_while_gru_cell_matmul_readvariableop_resource:{E
3gru_while_gru_cell_matmul_1_readvariableop_resource:){’(gru/while/gru_cell/MatMul/ReadVariableOp’*gru/while/gru_cell/MatMul_1/ReadVariableOp’!gru/while/gru_cell/ReadVariableOp
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ί
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
(gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp3gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0½
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:00gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{‘
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0#gru/while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{m
"gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????ά
gru/while/gru_cell/splitSplit+gru/while/gru_cell/split/split_dim:output:0#gru/while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split 
*gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp5gru_while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0€
gru/while/gru_cell/MatMul_1MatMulgru_while_placeholder_22gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{₯
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0#gru/while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{m
gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????o
$gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
gru/while/gru_cell/split_1SplitV%gru/while/gru_cell/BiasAdd_1:output:0!gru/while/gru_cell/Const:output:0-gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
gru/while/gru_cell/addAddV2!gru/while/gru_cell/split:output:0#gru/while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)s
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/add_1AddV2!gru/while/gru_cell/split:output:1#gru/while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)w
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/mulMul gru/while/gru_cell/Sigmoid_1:y:0#gru/while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/add_2AddV2!gru/while/gru_cell/split:output:2gru/while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)o
gru/while/gru_cell/ReluRelugru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/mul_1Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*'
_output_shapes
:?????????)]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/mul_2Mulgru/while/gru_cell/sub:z:0%gru/while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_1:z:0gru/while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)Ρ
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?Q
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: ₯
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: :ιθ?
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*'
_output_shapes
:?????????)Μ
gru/while/NoOpNoOp)^gru/while/gru_cell/MatMul/ReadVariableOp+^gru/while/gru_cell/MatMul_1/ReadVariableOp"^gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3gru_while_gru_cell_matmul_1_readvariableop_resource5gru_while_gru_cell_matmul_1_readvariableop_resource_0"h
1gru_while_gru_cell_matmul_readvariableop_resource3gru_while_gru_cell_matmul_readvariableop_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"Έ
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2T
(gru/while/gru_cell/MatMul/ReadVariableOp(gru/while/gru_cell/MatMul/ReadVariableOp2X
*gru/while/gru_cell/MatMul_1/ReadVariableOp*gru/while/gru_cell/MatMul_1/ReadVariableOp2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 
Σ
‘
while_body_2731681
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_gru_cell_2731703_0:{*
while_gru_cell_2731705_0:{*
while_gru_cell_2731707_0:){
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_gru_cell_2731703:{(
while_gru_cell_2731705:{(
while_gru_cell_2731707:){’&while/gru_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0ω
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2731703_0while_gru_cell_2731705_0while_gru_cell_2731707_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????):?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2731668Ψ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????)u

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "2
while_gru_cell_2731703while_gru_cell_2731703_0"2
while_gru_cell_2731705while_gru_cell_2731705_0"2
while_gru_cell_2731707while_gru_cell_2731707_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 

΅
%__inference_gru_layer_call_fn_2732804
inputs_0
unknown:{
	unknown_0:{
	unknown_1:){
identity’StatefulPartitionedCallδ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2731927o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????)`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
Χ
ρ
,__inference_sequential_layer_call_fn_2732379
input_1
unknown:{
	unknown_0:{
	unknown_1:){
	unknown_2:)
	unknown_3:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_2732351o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
ί
―
while_cond_2732889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2732889___redundant_placeholder05
1while_while_cond_2732889___redundant_placeholder15
1while_while_cond_2732889___redundant_placeholder25
1while_while_cond_2732889___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
Λ
ϋ
gru_while_cond_2732510$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2&
"gru_while_less_gru_strided_slice_1=
9gru_while_gru_while_cond_2732510___redundant_placeholder0=
9gru_while_gru_while_cond_2732510___redundant_placeholder1=
9gru_while_gru_while_cond_2732510___redundant_placeholder2=
9gru_while_gru_while_cond_2732510___redundant_placeholder3
gru_while_identity
r
gru/while/LessLessgru_while_placeholder"gru_while_less_gru_strided_slice_1*
T0*
_output_shapes
: S
gru/while/IdentityIdentitygru/while/Less:z:0*
T0
*
_output_shapes
: "1
gru_while_identitygru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
ί
―
while_cond_2733195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2733195___redundant_placeholder05
1while_while_cond_2733195___redundant_placeholder15
1while_while_cond_2733195___redundant_placeholder25
1while_while_cond_2733195___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:

Ώ
G__inference_sequential_layer_call_and_return_conditional_losses_2732120

inputs
gru_2732096:{
gru_2732098:{
gru_2732100:){
dense_2732114:)
dense_2732116:
identity’dense/StatefulPartitionedCall’gru/StatefulPartitionedCallξ
gru/StatefulPartitionedCallStatefulPartitionedCallinputsgru_2732096gru_2732098gru_2732100*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2732095
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_2732114dense_2732116*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_2732113u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
;
θ
while_body_2732006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:{A
/while_gru_cell_matmul_readvariableop_resource_0:{C
1while_gru_cell_matmul_1_readvariableop_resource_0:){
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:{?
-while_gru_cell_matmul_readvariableop_resource:{A
/while_gru_cell_matmul_1_readvariableop_resource:){’$while/gru_cell/MatMul/ReadVariableOp’&while/gru_cell/MatMul_1/ReadVariableOp’while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Π
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????)Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)Α
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?u
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????)Ό

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 
ί
―
while_cond_2731862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_2731862___redundant_placeholder05
1while_while_cond_2731862___redundant_placeholder15
1while_while_cond_2731862___redundant_placeholder25
1while_while_cond_2731862___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
Ε	
σ
B__inference_dense_layer_call_and_return_conditional_losses_2733457

inputs0
matmul_readvariableop_resource:)-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:)*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
η3
φ
@__inference_gru_layer_call_and_return_conditional_losses_2731745

inputs"
gru_cell_2731669:{"
gru_cell_2731671:{"
gru_cell_2731673:){
identity’ gru_cell/StatefulPartitionedCall’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????)c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskΎ
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2731669gru_cell_2731671gru_cell_2731673*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????):?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2731668n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : χ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2731669gru_cell_2731671gru_cell_2731673*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2731681*
condR
while_cond_2731680*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????)*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????)[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????)q
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
@
ΰ
gru_while_body_2732511$
 gru_while_gru_while_loop_counter*
&gru_while_gru_while_maximum_iterations
gru_while_placeholder
gru_while_placeholder_1
gru_while_placeholder_2#
gru_while_gru_strided_slice_1_0_
[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0>
,gru_while_gru_cell_readvariableop_resource_0:{E
3gru_while_gru_cell_matmul_readvariableop_resource_0:{G
5gru_while_gru_cell_matmul_1_readvariableop_resource_0:){
gru_while_identity
gru_while_identity_1
gru_while_identity_2
gru_while_identity_3
gru_while_identity_4!
gru_while_gru_strided_slice_1]
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor<
*gru_while_gru_cell_readvariableop_resource:{C
1gru_while_gru_cell_matmul_readvariableop_resource:{E
3gru_while_gru_cell_matmul_1_readvariableop_resource:){’(gru/while/gru_cell/MatMul/ReadVariableOp’*gru/while/gru_cell/MatMul_1/ReadVariableOp’!gru/while/gru_cell/ReadVariableOp
;gru/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   Ί
-gru/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0gru_while_placeholderDgru/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
!gru/while/gru_cell/ReadVariableOpReadVariableOp,gru_while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0
gru/while/gru_cell/unstackUnpack)gru/while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
(gru/while/gru_cell/MatMul/ReadVariableOpReadVariableOp3gru_while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0½
gru/while/gru_cell/MatMulMatMul4gru/while/TensorArrayV2Read/TensorListGetItem:item:00gru/while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{‘
gru/while/gru_cell/BiasAddBiasAdd#gru/while/gru_cell/MatMul:product:0#gru/while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{m
"gru/while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????ά
gru/while/gru_cell/splitSplit+gru/while/gru_cell/split/split_dim:output:0#gru/while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split 
*gru/while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp5gru_while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0€
gru/while/gru_cell/MatMul_1MatMulgru_while_placeholder_22gru/while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{₯
gru/while/gru_cell/BiasAdd_1BiasAdd%gru/while/gru_cell/MatMul_1:product:0#gru/while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{m
gru/while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????o
$gru/while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
gru/while/gru_cell/split_1SplitV%gru/while/gru_cell/BiasAdd_1:output:0!gru/while/gru_cell/Const:output:0-gru/while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
gru/while/gru_cell/addAddV2!gru/while/gru_cell/split:output:0#gru/while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)s
gru/while/gru_cell/SigmoidSigmoidgru/while/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/add_1AddV2!gru/while/gru_cell/split:output:1#gru/while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)w
gru/while/gru_cell/Sigmoid_1Sigmoidgru/while/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/mulMul gru/while/gru_cell/Sigmoid_1:y:0#gru/while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/add_2AddV2!gru/while/gru_cell/split:output:2gru/while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)o
gru/while/gru_cell/ReluRelugru/while/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/mul_1Mulgru/while/gru_cell/Sigmoid:y:0gru_while_placeholder_2*
T0*'
_output_shapes
:?????????)]
gru/while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru/while/gru_cell/subSub!gru/while/gru_cell/sub/x:output:0gru/while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/mul_2Mulgru/while/gru_cell/sub:z:0%gru/while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
gru/while/gru_cell/add_3AddV2gru/while/gru_cell/mul_1:z:0gru/while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)Ρ
.gru/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_while_placeholder_1gru_while_placeholdergru/while/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?Q
gru/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
gru/while/addAddV2gru_while_placeholdergru/while/add/y:output:0*
T0*
_output_shapes
: S
gru/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
gru/while/add_1AddV2 gru_while_gru_while_loop_countergru/while/add_1/y:output:0*
T0*
_output_shapes
: e
gru/while/IdentityIdentitygru/while/add_1:z:0^gru/while/NoOp*
T0*
_output_shapes
: z
gru/while/Identity_1Identity&gru_while_gru_while_maximum_iterations^gru/while/NoOp*
T0*
_output_shapes
: e
gru/while/Identity_2Identitygru/while/add:z:0^gru/while/NoOp*
T0*
_output_shapes
: ₯
gru/while/Identity_3Identity>gru/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru/while/NoOp*
T0*
_output_shapes
: :ιθ?
gru/while/Identity_4Identitygru/while/gru_cell/add_3:z:0^gru/while/NoOp*
T0*'
_output_shapes
:?????????)Μ
gru/while/NoOpNoOp)^gru/while/gru_cell/MatMul/ReadVariableOp+^gru/while/gru_cell/MatMul_1/ReadVariableOp"^gru/while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3gru_while_gru_cell_matmul_1_readvariableop_resource5gru_while_gru_cell_matmul_1_readvariableop_resource_0"h
1gru_while_gru_cell_matmul_readvariableop_resource3gru_while_gru_cell_matmul_readvariableop_resource_0"Z
*gru_while_gru_cell_readvariableop_resource,gru_while_gru_cell_readvariableop_resource_0"@
gru_while_gru_strided_slice_1gru_while_gru_strided_slice_1_0"1
gru_while_identitygru/while/Identity:output:0"5
gru_while_identity_1gru/while/Identity_1:output:0"5
gru_while_identity_2gru/while/Identity_2:output:0"5
gru_while_identity_3gru/while/Identity_3:output:0"5
gru_while_identity_4gru/while/Identity_4:output:0"Έ
Ygru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor[gru_while_tensorarrayv2read_tensorlistgetitem_gru_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2T
(gru/while/gru_cell/MatMul/ReadVariableOp(gru/while/gru_cell/MatMul/ReadVariableOp2X
*gru/while/gru_cell/MatMul_1/ReadVariableOp*gru/while/gru_cell/MatMul_1/ReadVariableOp2F
!gru/while/gru_cell/ReadVariableOp!gru/while/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 

ΐ
G__inference_sequential_layer_call_and_return_conditional_losses_2732395
input_1
gru_2732382:{
gru_2732384:{
gru_2732386:){
dense_2732389:)
dense_2732391:
identity’dense/StatefulPartitionedCall’gru/StatefulPartitionedCallο
gru/StatefulPartitionedCallStatefulPartitionedCallinput_1gru_2732382gru_2732384gru_2732386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2732095
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_2732389dense_2732391*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_2732113u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1
Σ
‘
while_body_2731863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_gru_cell_2731885_0:{*
while_gru_cell_2731887_0:{*
while_gru_cell_2731889_0:){
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_gru_cell_2731885:{(
while_gru_cell_2731887:{(
while_gru_cell_2731889:){’&while/gru_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0ω
&while/gru_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2731885_0while_gru_cell_2731887_0while_gru_cell_2731889_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????):?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2731811Ψ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder/while/gru_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?
while/Identity_4Identity/while/gru_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:?????????)u

while/NoOpNoOp'^while/gru_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "2
while_gru_cell_2731885while_gru_cell_2731885_0"2
while_gru_cell_2731887while_gru_cell_2731887_0"2
while_gru_cell_2731889while_gru_cell_2731889_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2P
&while/gru_cell/StatefulPartitionedCall&while/gru_cell/StatefulPartitionedCall: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 

Ώ
G__inference_sequential_layer_call_and_return_conditional_losses_2732351

inputs
gru_2732338:{
gru_2732340:{
gru_2732342:){
dense_2732345:)
dense_2732347:
identity’dense/StatefulPartitionedCall’gru/StatefulPartitionedCallξ
gru/StatefulPartitionedCallStatefulPartitionedCallinputsgru_2732338gru_2732340gru_2732342*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2732309
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_2732345dense_2732347*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_2732113u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp^dense/StatefulPartitionedCall^gru/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
;
θ
while_body_2732890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:{A
/while_gru_cell_matmul_readvariableop_resource_0:{C
1while_gru_cell_matmul_1_readvariableop_resource_0:){
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:{?
-while_gru_cell_matmul_readvariableop_resource:{A
/while_gru_cell_matmul_1_readvariableop_resource:){’$while/gru_cell/MatMul/ReadVariableOp’&while/gru_cell/MatMul_1/ReadVariableOp’while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Π
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????)Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)Α
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?u
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????)Ό

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 
Ε	
σ
B__inference_dense_layer_call_and_return_conditional_losses_2732113

inputs0
matmul_readvariableop_resource:)-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:)*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
¦K
ρ
@__inference_gru_layer_call_and_return_conditional_losses_2733285

inputs2
 gru_cell_readvariableop_resource:{9
'gru_cell_matmul_readvariableop_resource:{;
)gru_cell_matmul_1_readvariableop_resource:){
identity’gru_cell/MatMul/ReadVariableOp’ gru_cell/MatMul_1/ReadVariableOp’gru_cell/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????)c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????κ
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)_
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????)}
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)[
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????)S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2733196*
condR
while_cond_2733195*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????)*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????)[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????)¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
­

Φ
*__inference_gru_cell_layer_call_fn_2733485

inputs
states_0
unknown:{
	unknown_0:{
	unknown_1:){
identity

identity_1’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????):?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2731811o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????)q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????)`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????): : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????)
"
_user_specified_name
states/0
;
θ
while_body_2733043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:{A
/while_gru_cell_matmul_readvariableop_resource_0:{C
1while_gru_cell_matmul_1_readvariableop_resource_0:){
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:{?
-while_gru_cell_matmul_readvariableop_resource:{A
/while_gru_cell_matmul_1_readvariableop_resource:){’$while/gru_cell/MatMul/ReadVariableOp’&while/gru_cell/MatMul_1/ReadVariableOp’while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Π
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????)Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)Α
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?u
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????)Ό

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 

΅
%__inference_gru_layer_call_fn_2732793
inputs_0
unknown:{
	unknown_0:{
	unknown_1:){
identity’StatefulPartitionedCallδ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2731745o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????)`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
;
θ
while_body_2732220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0:
(while_gru_cell_readvariableop_resource_0:{A
/while_gru_cell_matmul_readvariableop_resource_0:{C
1while_gru_cell_matmul_1_readvariableop_resource_0:){
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor8
&while_gru_cell_readvariableop_resource:{?
-while_gru_cell_matmul_readvariableop_resource:{A
/while_gru_cell_matmul_1_readvariableop_resource:){’$while/gru_cell/MatMul/ReadVariableOp’&while/gru_cell/MatMul_1/ReadVariableOp’while/gru_cell/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype0
while/gru_cell/ReadVariableOpReadVariableOp(while_gru_cell_readvariableop_resource_0*
_output_shapes

:{*
dtype0}
while/gru_cell/unstackUnpack%while/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
$while/gru_cell/MatMul/ReadVariableOpReadVariableOp/while_gru_cell_matmul_readvariableop_resource_0*
_output_shapes

:{*
dtype0±
while/gru_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0,while/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAddBiasAddwhile/gru_cell/MatMul:product:0while/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{i
while/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Π
while/gru_cell/splitSplit'while/gru_cell/split/split_dim:output:0while/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
&while/gru_cell/MatMul_1/ReadVariableOpReadVariableOp1while_gru_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:){*
dtype0
while/gru_cell/MatMul_1MatMulwhile_placeholder_2.while/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
while/gru_cell/BiasAdd_1BiasAdd!while/gru_cell/MatMul_1:product:0while/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{i
while/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????k
 while/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
while/gru_cell/split_1SplitV!while/gru_cell/BiasAdd_1:output:0while/gru_cell/Const:output:0)while/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
while/gru_cell/addAddV2while/gru_cell/split:output:0while/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)k
while/gru_cell/SigmoidSigmoidwhile/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_1AddV2while/gru_cell/split:output:1while/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)o
while/gru_cell/Sigmoid_1Sigmoidwhile/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mulMulwhile/gru_cell/Sigmoid_1:y:0while/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_2AddV2while/gru_cell/split:output:2while/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)g
while/gru_cell/ReluReluwhile/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)~
while/gru_cell/mul_1Mulwhile/gru_cell/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:?????????)Y
while/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/gru_cell/subSubwhile/gru_cell/sub/x:output:0while/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/mul_2Mulwhile/gru_cell/sub:z:0!while/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
while/gru_cell/add_3AddV2while/gru_cell/mul_1:z:0while/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)Α
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell/add_3:z:0*
_output_shapes
: *
element_dtype0:ιθ?M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :ιθ?u
while/Identity_4Identitywhile/gru_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:?????????)Ό

while/NoOpNoOp%^while/gru_cell/MatMul/ReadVariableOp'^while/gru_cell/MatMul_1/ReadVariableOp^while/gru_cell/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/while_gru_cell_matmul_1_readvariableop_resource1while_gru_cell_matmul_1_readvariableop_resource_0"`
-while_gru_cell_matmul_readvariableop_resource/while_gru_cell_matmul_readvariableop_resource_0"R
&while_gru_cell_readvariableop_resource(while_gru_cell_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :?????????): : : : : 2L
$while/gru_cell/MatMul/ReadVariableOp$while/gru_cell/MatMul/ReadVariableOp2P
&while/gru_cell/MatMul_1/ReadVariableOp&while/gru_cell/MatMul_1/ReadVariableOp2>
while/gru_cell/ReadVariableOpwhile/gru_cell/ReadVariableOp: 
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
:?????????):

_output_shapes
: :

_output_shapes
: 
ς
³
%__inference_gru_layer_call_fn_2732815

inputs
unknown:{
	unknown_0:{
	unknown_1:){
identity’StatefulPartitionedCallβ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_gru_layer_call_and_return_conditional_losses_2732095o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????)`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
υ

Μ
!sequential_gru_while_cond_2731502:
6sequential_gru_while_sequential_gru_while_loop_counter@
<sequential_gru_while_sequential_gru_while_maximum_iterations$
 sequential_gru_while_placeholder&
"sequential_gru_while_placeholder_1&
"sequential_gru_while_placeholder_2<
8sequential_gru_while_less_sequential_gru_strided_slice_1S
Osequential_gru_while_sequential_gru_while_cond_2731502___redundant_placeholder0S
Osequential_gru_while_sequential_gru_while_cond_2731502___redundant_placeholder1S
Osequential_gru_while_sequential_gru_while_cond_2731502___redundant_placeholder2S
Osequential_gru_while_sequential_gru_while_cond_2731502___redundant_placeholder3!
sequential_gru_while_identity

sequential/gru/while/LessLess sequential_gru_while_placeholder8sequential_gru_while_less_sequential_gru_strided_slice_1*
T0*
_output_shapes
: i
sequential/gru/while/IdentityIdentitysequential/gru/while/Less:z:0*
T0
*
_output_shapes
: "G
sequential_gru_while_identity&sequential/gru/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :?????????): ::::: 
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
:?????????):

_output_shapes
: :

_output_shapes
:
­

Φ
*__inference_gru_cell_layer_call_fn_2733471

inputs
states_0
unknown:{
	unknown_0:{
	unknown_1:){
identity

identity_1’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????):?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2731668o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????)q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????)`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:?????????:?????????): : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:QM
'
_output_shapes
:?????????)
"
_user_specified_name
states/0
¦K
ρ
@__inference_gru_layer_call_and_return_conditional_losses_2733438

inputs2
 gru_cell_readvariableop_resource:{9
'gru_cell_matmul_readvariableop_resource:{;
)gru_cell_matmul_1_readvariableop_resource:){
identity’gru_cell/MatMul/ReadVariableOp’ gru_cell/MatMul_1/ReadVariableOp’gru_cell/ReadVariableOp’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????)c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskx
gru_cell/ReadVariableOpReadVariableOp gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0q
gru_cell/unstackUnpackgru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
gru_cell/MatMul/ReadVariableOpReadVariableOp'gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0
gru_cell/MatMulMatMulstrided_slice_2:output:0&gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAddBiasAddgru_cell/MatMul:product:0gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{c
gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Ύ
gru_cell/splitSplit!gru_cell/split/split_dim:output:0gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
 gru_cell/MatMul_1/ReadVariableOpReadVariableOp)gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0
gru_cell/MatMul_1MatMulzeros:output:0(gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru_cell/BiasAdd_1BiasAddgru_cell/MatMul_1:product:0gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{c
gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????e
gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????κ
gru_cell/split_1SplitVgru_cell/BiasAdd_1:output:0gru_cell/Const:output:0#gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split{
gru_cell/addAddV2gru_cell/split:output:0gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)_
gru_cell/SigmoidSigmoidgru_cell/add:z:0*
T0*'
_output_shapes
:?????????)}
gru_cell/add_1AddV2gru_cell/split:output:1gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)c
gru_cell/Sigmoid_1Sigmoidgru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)x
gru_cell/mulMulgru_cell/Sigmoid_1:y:0gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)t
gru_cell/add_2AddV2gru_cell/split:output:2gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)[
gru_cell/ReluRelugru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)m
gru_cell/mul_1Mulgru_cell/Sigmoid:y:0zeros:output:0*
T0*'
_output_shapes
:?????????)S
gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?t
gru_cell/subSubgru_cell/sub/x:output:0gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)v
gru_cell/mul_2Mulgru_cell/sub:z:0gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)q
gru_cell/add_3AddV2gru_cell/mul_1:z:0gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ·
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0 gru_cell_readvariableop_resource'gru_cell_matmul_readvariableop_resource)gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2733349*
condR
while_cond_2733348*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Β
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????)*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????)[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????)¬
NoOpNoOp^gru_cell/MatMul/ReadVariableOp!^gru_cell/MatMul_1/ReadVariableOp^gru_cell/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2@
gru_cell/MatMul/ReadVariableOpgru_cell/MatMul/ReadVariableOp2D
 gru_cell/MatMul_1/ReadVariableOp gru_cell/MatMul_1/ReadVariableOp22
gru_cell/ReadVariableOpgru_cell/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
ήf

#__inference__traced_restore_2733752
file_prefix/
assignvariableop_dense_kernel:)+
assignvariableop_1_dense_bias:%
assignvariableop_2_variable: '
assignvariableop_3_variable_1: '
assignvariableop_4_variable_2: '
assignvariableop_5_variable_3: !
assignvariableop_6_iter:	 8
&assignvariableop_7_gru_gru_cell_kernel:{B
0assignvariableop_8_gru_gru_cell_recurrent_kernel:){6
$assignvariableop_9_gru_gru_cell_bias:{#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: %
assignvariableop_14_total_2: %
assignvariableop_15_count_2: 4
"assignvariableop_16_dense_kernel_m:).
 assignvariableop_17_dense_bias_m:;
)assignvariableop_18_gru_gru_cell_kernel_m:{E
3assignvariableop_19_gru_gru_cell_recurrent_kernel_m:){9
'assignvariableop_20_gru_gru_cell_bias_m:{4
"assignvariableop_21_dense_kernel_v:).
 assignvariableop_22_dense_bias_v:;
)assignvariableop_23_gru_gru_cell_kernel_v:{E
3assignvariableop_24_gru_gru_cell_recurrent_kernel_v:){9
'assignvariableop_25_gru_gru_cell_bias_v:{
identity_27’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_3’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¦
valueBB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¦
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ¦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_variableIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_3Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp&assignvariableop_7_gru_gru_cell_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp0assignvariableop_8_gru_gru_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp$assignvariableop_9_gru_gru_cell_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_gru_gru_cell_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:€
AssignVariableOp_19AssignVariableOp3assignvariableop_19_gru_gru_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp'assignvariableop_20_gru_gru_cell_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_gru_gru_cell_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:€
AssignVariableOp_24AssignVariableOp3assignvariableop_24_gru_gru_cell_recurrent_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp'assignvariableop_25_gru_gru_cell_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: ψ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252(
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
η3
φ
@__inference_gru_layer_call_and_return_conditional_losses_2731927

inputs"
gru_cell_2731851:{"
gru_cell_2731853:{"
gru_cell_2731855:){
identity’ gru_cell/StatefulPartitionedCall’while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????)c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ϋ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????΄
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   ΰ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ι
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_maskΎ
 gru_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_2731851gru_cell_2731853gru_cell_2731855*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????):?????????)*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_gru_cell_layer_call_and_return_conditional_losses_2731811n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Έ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : χ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2731851gru_cell_2731853gru_cell_2731855*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_2731863*
condR
while_cond_2731862*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Λ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????)*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????)[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:?????????)q
NoOpNoOp!^gru_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2D
 gru_cell/StatefulPartitionedCall gru_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
ΏW
Ύ
G__inference_sequential_layer_call_and_return_conditional_losses_2732765

inputs6
$gru_gru_cell_readvariableop_resource:{=
+gru_gru_cell_matmul_readvariableop_resource:{?
-gru_gru_cell_matmul_1_readvariableop_resource:){6
$dense_matmul_readvariableop_resource:)3
%dense_biasadd_readvariableop_resource:
identity’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOp’"gru/gru_cell/MatMul/ReadVariableOp’$gru/gru_cell/MatMul_1/ReadVariableOp’gru/gru_cell/ReadVariableOp’	gru/while?
	gru/ShapeShapeinputs*
T0*
_output_shapes
:a
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ε
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :)
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????)g
gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
gru/transpose	Transposeinputsgru/transpose/perm:output:0*
T0*+
_output_shapes
:?????????L
gru/Shape_1Shapegru/transpose:y:0*
T0*
_output_shapes
:c
gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
gru/strided_slice_1StridedSlicegru/Shape_1:output:0"gru/strided_slice_1/stack:output:0$gru/strided_slice_1/stack_1:output:0$gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????ΐ
gru/TensorArrayV2TensorListReserve(gru/TensorArrayV2/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
9gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   μ
+gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru/transpose:y:0Bgru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?c
gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ύ
gru/strided_slice_2StridedSlicegru/transpose:y:0"gru/strided_slice_2/stack:output:0$gru/strided_slice_2/stack_1:output:0$gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
gru/gru_cell/ReadVariableOpReadVariableOp$gru_gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0y
gru/gru_cell/unstackUnpack#gru/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num
"gru/gru_cell/MatMul/ReadVariableOpReadVariableOp+gru_gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0
gru/gru_cell/MatMulMatMulgru/strided_slice_2:output:0*gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru/gru_cell/BiasAddBiasAddgru/gru_cell/MatMul:product:0gru/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{g
gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????Κ
gru/gru_cell/splitSplit%gru/gru_cell/split/split_dim:output:0gru/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
$gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp-gru_gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0
gru/gru_cell/MatMul_1MatMulgru/zeros:output:0,gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{
gru/gru_cell/BiasAdd_1BiasAddgru/gru_cell/MatMul_1:product:0gru/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{g
gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????i
gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????ϊ
gru/gru_cell/split_1SplitVgru/gru_cell/BiasAdd_1:output:0gru/gru_cell/Const:output:0'gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split
gru/gru_cell/addAddV2gru/gru_cell/split:output:0gru/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)g
gru/gru_cell/SigmoidSigmoidgru/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)
gru/gru_cell/add_1AddV2gru/gru_cell/split:output:1gru/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)k
gru/gru_cell/Sigmoid_1Sigmoidgru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)
gru/gru_cell/mulMulgru/gru_cell/Sigmoid_1:y:0gru/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)
gru/gru_cell/add_2AddV2gru/gru_cell/split:output:2gru/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)c
gru/gru_cell/ReluRelugru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)y
gru/gru_cell/mul_1Mulgru/gru_cell/Sigmoid:y:0gru/zeros:output:0*
T0*'
_output_shapes
:?????????)W
gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
gru/gru_cell/subSubgru/gru_cell/sub/x:output:0gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)
gru/gru_cell/mul_2Mulgru/gru_cell/sub:z:0gru/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)}
gru/gru_cell/add_3AddV2gru/gru_cell/mul_1:z:0gru/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)r
!gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Δ
gru/TensorArrayV2_1TensorListReserve*gru/TensorArrayV2_1/element_shape:output:0gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?J
gru/timeConst*
_output_shapes
: *
dtype0*
value	B : g
gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????X
gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : λ
	gru/whileWhilegru/while/loop_counter:output:0%gru/while/maximum_iterations:output:0gru/time:output:0gru/TensorArrayV2_1:handle:0gru/zeros:output:0gru/strided_slice_1:output:0;gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0$gru_gru_cell_readvariableop_resource+gru_gru_cell_matmul_readvariableop_resource-gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *"
bodyR
gru_while_body_2732670*"
condR
gru_while_cond_2732669*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
4gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   Ξ
&gru/TensorArrayV2Stack/TensorListStackTensorListStackgru/while:output:3=gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????)*
element_dtype0l
gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????e
gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
gru/strided_slice_3StridedSlice/gru/TensorArrayV2Stack/TensorListStack:tensor:0"gru/strided_slice_3/stack:output:0$gru/strided_slice_3/stack_1:output:0$gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maski
gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
gru/transpose_1	Transpose/gru/TensorArrayV2Stack/TensorListStack:tensor:0gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????)_
gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:)*
dtype0
dense/MatMulMatMulgru/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????ω
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp#^gru/gru_cell/MatMul/ReadVariableOp%^gru/gru_cell/MatMul_1/ReadVariableOp^gru/gru_cell/ReadVariableOp
^gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2H
"gru/gru_cell/MatMul/ReadVariableOp"gru/gru_cell/MatMul/ReadVariableOp2L
$gru/gru_cell/MatMul_1/ReadVariableOp$gru/gru_cell/MatMul_1/ReadVariableOp2:
gru/gru_cell/ReadVariableOpgru/gru_cell/ReadVariableOp2
	gru/while	gru/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
Ύ

'__inference_dense_layer_call_fn_2733447

inputs
unknown:)
	unknown_0:
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_2732113o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????): : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????)
 
_user_specified_nameinputs
8
°

 __inference__traced_save_2733664
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop'
#savev2_variable_read_readvariableop)
%savev2_variable_1_read_readvariableop)
%savev2_variable_2_read_readvariableop)
%savev2_variable_3_read_readvariableop#
savev2_iter_read_readvariableop	2
.savev2_gru_gru_cell_kernel_read_readvariableop<
8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop0
,savev2_gru_gru_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop-
)savev2_dense_kernel_m_read_readvariableop+
'savev2_dense_bias_m_read_readvariableop4
0savev2_gru_gru_cell_kernel_m_read_readvariableop>
:savev2_gru_gru_cell_recurrent_kernel_m_read_readvariableop2
.savev2_gru_gru_cell_bias_m_read_readvariableop-
)savev2_dense_kernel_v_read_readvariableop+
'savev2_dense_bias_v_read_readvariableop4
0savev2_gru_gru_cell_kernel_v_read_readvariableop>
:savev2_gru_gru_cell_recurrent_kernel_v_read_readvariableop2
.savev2_gru_gru_cell_bias_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ύ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¦
valueBB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH£
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ₯

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop%savev2_variable_3_read_readvariableopsavev2_iter_read_readvariableop.savev2_gru_gru_cell_kernel_read_readvariableop8savev2_gru_gru_cell_recurrent_kernel_read_readvariableop,savev2_gru_gru_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop)savev2_dense_kernel_m_read_readvariableop'savev2_dense_bias_m_read_readvariableop0savev2_gru_gru_cell_kernel_m_read_readvariableop:savev2_gru_gru_cell_recurrent_kernel_m_read_readvariableop.savev2_gru_gru_cell_bias_m_read_readvariableop)savev2_dense_kernel_v_read_readvariableop'savev2_dense_bias_v_read_readvariableop0savev2_gru_gru_cell_kernel_v_read_readvariableop:savev2_gru_gru_cell_recurrent_kernel_v_read_readvariableop.savev2_gru_gru_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *)
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ή
_input_shapes§
€: :):: : : : : :{:){:{: : : : : : :)::{:){:{:)::{:){:{: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:): 
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
: :$ 

_output_shapes

:{:$	 

_output_shapes

:){:$
 

_output_shapes

:{:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:): 

_output_shapes
::$ 

_output_shapes

:{:$ 

_output_shapes

:){:$ 

_output_shapes

:{:$ 

_output_shapes

:): 

_output_shapes
::$ 

_output_shapes

:{:$ 

_output_shapes

:){:$ 

_output_shapes

:{:

_output_shapes
: 
g

"__inference__wrapped_model_2731598
input_1A
/sequential_gru_gru_cell_readvariableop_resource:{H
6sequential_gru_gru_cell_matmul_readvariableop_resource:{J
8sequential_gru_gru_cell_matmul_1_readvariableop_resource:){A
/sequential_dense_matmul_readvariableop_resource:)>
0sequential_dense_biasadd_readvariableop_resource:
identity’'sequential/dense/BiasAdd/ReadVariableOp’&sequential/dense/MatMul/ReadVariableOp’-sequential/gru/gru_cell/MatMul/ReadVariableOp’/sequential/gru/gru_cell/MatMul_1/ReadVariableOp’&sequential/gru/gru_cell/ReadVariableOp’sequential/gru/whileK
sequential/gru/ShapeShapeinput_1*
T0*
_output_shapes
:l
"sequential/gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential/gru/strided_sliceStridedSlicesequential/gru/Shape:output:0+sequential/gru/strided_slice/stack:output:0-sequential/gru/strided_slice/stack_1:output:0-sequential/gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential/gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :) 
sequential/gru/zeros/packedPack%sequential/gru/strided_slice:output:0&sequential/gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
sequential/gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/gru/zerosFill$sequential/gru/zeros/packed:output:0#sequential/gru/zeros/Const:output:0*
T0*'
_output_shapes
:?????????)r
sequential/gru/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential/gru/transpose	Transposeinput_1&sequential/gru/transpose/perm:output:0*
T0*+
_output_shapes
:?????????b
sequential/gru/Shape_1Shapesequential/gru/transpose:y:0*
T0*
_output_shapes
:n
$sequential/gru/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/gru/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/gru/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
sequential/gru/strided_slice_1StridedSlicesequential/gru/Shape_1:output:0-sequential/gru/strided_slice_1/stack:output:0/sequential/gru/strided_slice_1/stack_1:output:0/sequential/gru/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*sequential/gru/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????α
sequential/gru/TensorArrayV2TensorListReserve3sequential/gru/TensorArrayV2/element_shape:output:0'sequential/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?
Dsequential/gru/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
6sequential/gru/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/gru/transpose:y:0Msequential/gru/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?n
$sequential/gru/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/gru/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/gru/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:΄
sequential/gru/strided_slice_2StridedSlicesequential/gru/transpose:y:0-sequential/gru/strided_slice_2/stack:output:0/sequential/gru/strided_slice_2/stack_1:output:0/sequential/gru/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask
&sequential/gru/gru_cell/ReadVariableOpReadVariableOp/sequential_gru_gru_cell_readvariableop_resource*
_output_shapes

:{*
dtype0
sequential/gru/gru_cell/unstackUnpack.sequential/gru/gru_cell/ReadVariableOp:value:0*
T0* 
_output_shapes
:{:{*	
num€
-sequential/gru/gru_cell/MatMul/ReadVariableOpReadVariableOp6sequential_gru_gru_cell_matmul_readvariableop_resource*
_output_shapes

:{*
dtype0Ί
sequential/gru/gru_cell/MatMulMatMul'sequential/gru/strided_slice_2:output:05sequential/gru/gru_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{°
sequential/gru/gru_cell/BiasAddBiasAdd(sequential/gru/gru_cell/MatMul:product:0(sequential/gru/gru_cell/unstack:output:0*
T0*'
_output_shapes
:?????????{r
'sequential/gru/gru_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????λ
sequential/gru/gru_cell/splitSplit0sequential/gru/gru_cell/split/split_dim:output:0(sequential/gru/gru_cell/BiasAdd:output:0*
T0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split¨
/sequential/gru/gru_cell/MatMul_1/ReadVariableOpReadVariableOp8sequential_gru_gru_cell_matmul_1_readvariableop_resource*
_output_shapes

:){*
dtype0΄
 sequential/gru/gru_cell/MatMul_1MatMulsequential/gru/zeros:output:07sequential/gru/gru_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????{΄
!sequential/gru/gru_cell/BiasAdd_1BiasAdd*sequential/gru/gru_cell/MatMul_1:product:0(sequential/gru/gru_cell/unstack:output:1*
T0*'
_output_shapes
:?????????{r
sequential/gru/gru_cell/ConstConst*
_output_shapes
:*
dtype0*!
valueB")   )   ????t
)sequential/gru/gru_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????¦
sequential/gru/gru_cell/split_1SplitV*sequential/gru/gru_cell/BiasAdd_1:output:0&sequential/gru/gru_cell/Const:output:02sequential/gru/gru_cell/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:?????????):?????????):?????????)*
	num_split¨
sequential/gru/gru_cell/addAddV2&sequential/gru/gru_cell/split:output:0(sequential/gru/gru_cell/split_1:output:0*
T0*'
_output_shapes
:?????????)}
sequential/gru/gru_cell/SigmoidSigmoidsequential/gru/gru_cell/add:z:0*
T0*'
_output_shapes
:?????????)ͺ
sequential/gru/gru_cell/add_1AddV2&sequential/gru/gru_cell/split:output:1(sequential/gru/gru_cell/split_1:output:1*
T0*'
_output_shapes
:?????????)
!sequential/gru/gru_cell/Sigmoid_1Sigmoid!sequential/gru/gru_cell/add_1:z:0*
T0*'
_output_shapes
:?????????)₯
sequential/gru/gru_cell/mulMul%sequential/gru/gru_cell/Sigmoid_1:y:0(sequential/gru/gru_cell/split_1:output:2*
T0*'
_output_shapes
:?????????)‘
sequential/gru/gru_cell/add_2AddV2&sequential/gru/gru_cell/split:output:2sequential/gru/gru_cell/mul:z:0*
T0*'
_output_shapes
:?????????)y
sequential/gru/gru_cell/ReluRelu!sequential/gru/gru_cell/add_2:z:0*
T0*'
_output_shapes
:?????????)
sequential/gru/gru_cell/mul_1Mul#sequential/gru/gru_cell/Sigmoid:y:0sequential/gru/zeros:output:0*
T0*'
_output_shapes
:?????????)b
sequential/gru/gru_cell/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?‘
sequential/gru/gru_cell/subSub&sequential/gru/gru_cell/sub/x:output:0#sequential/gru/gru_cell/Sigmoid:y:0*
T0*'
_output_shapes
:?????????)£
sequential/gru/gru_cell/mul_2Mulsequential/gru/gru_cell/sub:z:0*sequential/gru/gru_cell/Relu:activations:0*
T0*'
_output_shapes
:?????????)
sequential/gru/gru_cell/add_3AddV2!sequential/gru/gru_cell/mul_1:z:0!sequential/gru/gru_cell/mul_2:z:0*
T0*'
_output_shapes
:?????????)}
,sequential/gru/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   ε
sequential/gru/TensorArrayV2_1TensorListReserve5sequential/gru/TensorArrayV2_1/element_shape:output:0'sequential/gru/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:ιθ?U
sequential/gru/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'sequential/gru/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????c
!sequential/gru/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ϊ
sequential/gru/whileWhile*sequential/gru/while/loop_counter:output:00sequential/gru/while/maximum_iterations:output:0sequential/gru/time:output:0'sequential/gru/TensorArrayV2_1:handle:0sequential/gru/zeros:output:0'sequential/gru/strided_slice_1:output:0Fsequential/gru/TensorArrayUnstack/TensorListFromTensor:output_handle:0/sequential_gru_gru_cell_readvariableop_resource6sequential_gru_gru_cell_matmul_readvariableop_resource8sequential_gru_gru_cell_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :?????????): : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *-
body%R#
!sequential_gru_while_body_2731503*-
cond%R#
!sequential_gru_while_cond_2731502*8
output_shapes'
%: : : : :?????????): : : : : *
parallel_iterations 
?sequential/gru/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????)   ο
1sequential/gru/TensorArrayV2Stack/TensorListStackTensorListStacksequential/gru/while:output:3Hsequential/gru/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????)*
element_dtype0w
$sequential/gru/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????p
&sequential/gru/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&sequential/gru/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
sequential/gru/strided_slice_3StridedSlice:sequential/gru/TensorArrayV2Stack/TensorListStack:tensor:0-sequential/gru/strided_slice_3/stack:output:0/sequential/gru/strided_slice_3/stack_1:output:0/sequential/gru/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????)*
shrink_axis_maskt
sequential/gru/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Γ
sequential/gru/transpose_1	Transpose:sequential/gru/TensorArrayV2Stack/TensorListStack:tensor:0(sequential/gru/transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????)j
sequential/gru/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:)*
dtype0¬
sequential/dense/MatMulMatMul'sequential/gru/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
IdentityIdentity!sequential/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????»
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp.^sequential/gru/gru_cell/MatMul/ReadVariableOp0^sequential/gru/gru_cell/MatMul_1/ReadVariableOp'^sequential/gru/gru_cell/ReadVariableOp^sequential/gru/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????: : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2^
-sequential/gru/gru_cell/MatMul/ReadVariableOp-sequential/gru/gru_cell/MatMul/ReadVariableOp2b
/sequential/gru/gru_cell/MatMul_1/ReadVariableOp/sequential/gru/gru_cell/MatMul_1/ReadVariableOp2P
&sequential/gru/gru_cell/ReadVariableOp&sequential/gru/gru_cell/ReadVariableOp2,
sequential/gru/whilesequential/gru/while:T P
+
_output_shapes
:?????????
!
_user_specified_name	input_1"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¬
serving_default
?
input_14
serving_default_input_1:0?????????9
dense0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:·c
΄
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
Ϊ
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
­

beta_1

beta_2
	decay
 learning_rate
!itermSmT"mU#mV$mWvXvY"vZ#v[$v\"
	optimizer
C
"0
#1
$2
3
4"
trackable_list_wrapper
C
"0
#1
$2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ώ2ϋ
,__inference_sequential_layer_call_fn_2732133
,__inference_sequential_layer_call_fn_2732432
,__inference_sequential_layer_call_fn_2732447
,__inference_sequential_layer_call_fn_2732379ΐ
·²³
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
kwonlydefaultsͺ 
annotationsͺ *
 
κ2η
G__inference_sequential_layer_call_and_return_conditional_losses_2732606
G__inference_sequential_layer_call_and_return_conditional_losses_2732765
G__inference_sequential_layer_call_and_return_conditional_losses_2732395
G__inference_sequential_layer_call_and_return_conditional_losses_2732411ΐ
·²³
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
kwonlydefaultsͺ 
annotationsͺ *
 
ΝBΚ
"__inference__wrapped_model_2731598input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
,
*serving_default"
signature_map
θ

"kernel
#recurrent_kernel
$bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/_random_generator
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
Ή

2states
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
χ2τ
%__inference_gru_layer_call_fn_2732793
%__inference_gru_layer_call_fn_2732804
%__inference_gru_layer_call_fn_2732815
%__inference_gru_layer_call_fn_2732826Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
γ2ΰ
@__inference_gru_layer_call_and_return_conditional_losses_2732979
@__inference_gru_layer_call_and_return_conditional_losses_2733132
@__inference_gru_layer_call_and_return_conditional_losses_2733285
@__inference_gru_layer_call_and_return_conditional_losses_2733438Υ
Μ²Θ
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
kwonlydefaultsͺ 
annotationsͺ *
 
:)2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ρ2Ξ
'__inference_dense_layer_call_fn_2733447’
²
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
annotationsͺ *
 
μ2ι
B__inference_dense_layer_call_and_return_conditional_losses_2733457’
²
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
annotationsͺ *
 
: 2Variable
: 2Variable
: 2Variable
: 2Variable
:	 (2iter
%:#{2gru/gru_cell/kernel
/:-){2gru/gru_cell/recurrent_kernel
#:!{2gru/gru_cell/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΜBΙ
%__inference_signature_wrapper_2732782input_1"
²
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
annotationsͺ *
 
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
+	variables
,trainable_variables
-regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_gru_cell_layer_call_fn_2733471
*__inference_gru_cell_layer_call_fn_2733485Ύ
΅²±
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
kwonlydefaultsͺ 
annotationsͺ *
 
?2Ο
E__inference_gru_cell_layer_call_and_return_conditional_losses_2733524
E__inference_gru_cell_layer_call_and_return_conditional_losses_2733563Ύ
΅²±
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
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Etotal
	Fcount
G	variables
H	keras_api"
_tf_keras_metric
^
	Itotal
	Jcount
K
_fn_kwargs
L	variables
M	keras_api"
_tf_keras_metric
^
	Ntotal
	Ocount
P
_fn_kwargs
Q	variables
R	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
E0
F1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
:)2dense/kernel/m
:2dense/bias/m
%:#{2gru/gru_cell/kernel/m
/:-){2gru/gru_cell/recurrent_kernel/m
#:!{2gru/gru_cell/bias/m
:)2dense/kernel/v
:2dense/bias/v
%:#{2gru/gru_cell/kernel/v
/:-){2gru/gru_cell/recurrent_kernel/v
#:!{2gru/gru_cell/bias/v
"__inference__wrapped_model_2731598l$"#4’1
*’'
%"
input_1?????????
ͺ "-ͺ*
(
dense
dense?????????’
B__inference_dense_layer_call_and_return_conditional_losses_2733457\/’,
%’"
 
inputs?????????)
ͺ "%’"

0?????????
 z
'__inference_dense_layer_call_fn_2733447O/’,
%’"
 
inputs?????????)
ͺ "?????????
E__inference_gru_cell_layer_call_and_return_conditional_losses_2733524·$"#\’Y
R’O
 
inputs?????????
'’$
"
states/0?????????)
p 
ͺ "R’O
H’E

0/0?????????)
$!

0/1/0?????????)
 
E__inference_gru_cell_layer_call_and_return_conditional_losses_2733563·$"#\’Y
R’O
 
inputs?????????
'’$
"
states/0?????????)
p
ͺ "R’O
H’E

0/0?????????)
$!

0/1/0?????????)
 Ψ
*__inference_gru_cell_layer_call_fn_2733471©$"#\’Y
R’O
 
inputs?????????
'’$
"
states/0?????????)
p 
ͺ "D’A

0?????????)
"

1/0?????????)Ψ
*__inference_gru_cell_layer_call_fn_2733485©$"#\’Y
R’O
 
inputs?????????
'’$
"
states/0?????????)
p
ͺ "D’A

0?????????)
"

1/0?????????)Α
@__inference_gru_layer_call_and_return_conditional_losses_2732979}$"#O’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "%’"

0?????????)
 Α
@__inference_gru_layer_call_and_return_conditional_losses_2733132}$"#O’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "%’"

0?????????)
 ±
@__inference_gru_layer_call_and_return_conditional_losses_2733285m$"#?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "%’"

0?????????)
 ±
@__inference_gru_layer_call_and_return_conditional_losses_2733438m$"#?’<
5’2
$!
inputs?????????

 
p

 
ͺ "%’"

0?????????)
 
%__inference_gru_layer_call_fn_2732793p$"#O’L
E’B
41
/,
inputs/0??????????????????

 
p 

 
ͺ "?????????)
%__inference_gru_layer_call_fn_2732804p$"#O’L
E’B
41
/,
inputs/0??????????????????

 
p

 
ͺ "?????????)
%__inference_gru_layer_call_fn_2732815`$"#?’<
5’2
$!
inputs?????????

 
p 

 
ͺ "?????????)
%__inference_gru_layer_call_fn_2732826`$"#?’<
5’2
$!
inputs?????????

 
p

 
ͺ "?????????)·
G__inference_sequential_layer_call_and_return_conditional_losses_2732395l$"#<’9
2’/
%"
input_1?????????
p 

 
ͺ "%’"

0?????????
 ·
G__inference_sequential_layer_call_and_return_conditional_losses_2732411l$"#<’9
2’/
%"
input_1?????????
p

 
ͺ "%’"

0?????????
 Ά
G__inference_sequential_layer_call_and_return_conditional_losses_2732606k$"#;’8
1’.
$!
inputs?????????
p 

 
ͺ "%’"

0?????????
 Ά
G__inference_sequential_layer_call_and_return_conditional_losses_2732765k$"#;’8
1’.
$!
inputs?????????
p

 
ͺ "%’"

0?????????
 
,__inference_sequential_layer_call_fn_2732133_$"#<’9
2’/
%"
input_1?????????
p 

 
ͺ "?????????
,__inference_sequential_layer_call_fn_2732379_$"#<’9
2’/
%"
input_1?????????
p

 
ͺ "?????????
,__inference_sequential_layer_call_fn_2732432^$"#;’8
1’.
$!
inputs?????????
p 

 
ͺ "?????????
,__inference_sequential_layer_call_fn_2732447^$"#;’8
1’.
$!
inputs?????????
p

 
ͺ "????????? 
%__inference_signature_wrapper_2732782w$"#?’<
’ 
5ͺ2
0
input_1%"
input_1?????????"-ͺ*
(
dense
dense?????????