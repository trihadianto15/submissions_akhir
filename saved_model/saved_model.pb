��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028��
�
sequential_5/dense_21/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_5/dense_21/bias/*
dtype0*
shape:*+
shared_namesequential_5/dense_21/bias
�
.sequential_5/dense_21/bias/Read/ReadVariableOpReadVariableOpsequential_5/dense_21/bias*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential_5/dense_21/bias*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
sequential_5/dense_21/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_5/dense_21/kernel/*
dtype0*
shape
:@*-
shared_namesequential_5/dense_21/kernel
�
0sequential_5/dense_21/kernel/Read/ReadVariableOpReadVariableOpsequential_5/dense_21/kernel*
_output_shapes

:@*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential_5/dense_21/kernel*
_class
loc:@Variable_1*
_output_shapes

:@*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:@*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:@*
dtype0
�
sequential_5/dense_20/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_5/dense_20/bias/*
dtype0*
shape:@*+
shared_namesequential_5/dense_20/bias
�
.sequential_5/dense_20/bias/Read/ReadVariableOpReadVariableOpsequential_5/dense_20/bias*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpsequential_5/dense_20/bias*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
sequential_5/dense_20/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_5/dense_20/kernel/*
dtype0*
shape:	�@*-
shared_namesequential_5/dense_20/kernel
�
0sequential_5/dense_20/kernel/Read/ReadVariableOpReadVariableOpsequential_5/dense_20/kernel*
_output_shapes
:	�@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential_5/dense_20/kernel*
_class
loc:@Variable_3*
_output_shapes
:	�@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:	�@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
j
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:	�@*
dtype0
�
sequential_5/dense_19/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_5/dense_19/bias/*
dtype0*
shape:�*+
shared_namesequential_5/dense_19/bias
�
.sequential_5/dense_19/bias/Read/ReadVariableOpReadVariableOpsequential_5/dense_19/bias*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential_5/dense_19/bias*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
sequential_5/dense_19/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_5/dense_19/kernel/*
dtype0*
shape:���*-
shared_namesequential_5/dense_19/kernel
�
0sequential_5/dense_19/kernel/Read/ReadVariableOpReadVariableOpsequential_5/dense_19/kernel*!
_output_shapes
:���*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpsequential_5/dense_19/kernel*
_class
loc:@Variable_5*!
_output_shapes
:���*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:���*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
l
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*!
_output_shapes
:���*
dtype0
�
sequential_5/conv2d_21/biasVarHandleOp*
_output_shapes
: *,

debug_namesequential_5/conv2d_21/bias/*
dtype0*
shape:�*,
shared_namesequential_5/conv2d_21/bias
�
/sequential_5/conv2d_21/bias/Read/ReadVariableOpReadVariableOpsequential_5/conv2d_21/bias*
_output_shapes	
:�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpsequential_5/conv2d_21/bias*
_class
loc:@Variable_6*
_output_shapes	
:�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:�*
dtype0
�
sequential_5/conv2d_21/kernelVarHandleOp*
_output_shapes
: *.

debug_name sequential_5/conv2d_21/kernel/*
dtype0*
shape:@�*.
shared_namesequential_5/conv2d_21/kernel
�
1sequential_5/conv2d_21/kernel/Read/ReadVariableOpReadVariableOpsequential_5/conv2d_21/kernel*'
_output_shapes
:@�*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpsequential_5/conv2d_21/kernel*
_class
loc:@Variable_7*'
_output_shapes
:@�*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:@�*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
r
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*'
_output_shapes
:@�*
dtype0
�
sequential_5/conv2d_20/biasVarHandleOp*
_output_shapes
: *,

debug_namesequential_5/conv2d_20/bias/*
dtype0*
shape:@*,
shared_namesequential_5/conv2d_20/bias
�
/sequential_5/conv2d_20/bias/Read/ReadVariableOpReadVariableOpsequential_5/conv2d_20/bias*
_output_shapes
:@*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpsequential_5/conv2d_20/bias*
_class
loc:@Variable_8*
_output_shapes
:@*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:@*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:@*
dtype0
�
sequential_5/conv2d_20/kernelVarHandleOp*
_output_shapes
: *.

debug_name sequential_5/conv2d_20/kernel/*
dtype0*
shape: @*.
shared_namesequential_5/conv2d_20/kernel
�
1sequential_5/conv2d_20/kernel/Read/ReadVariableOpReadVariableOpsequential_5/conv2d_20/kernel*&
_output_shapes
: @*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpsequential_5/conv2d_20/kernel*
_class
loc:@Variable_9*&
_output_shapes
: @*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape: @*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
q
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*&
_output_shapes
: @*
dtype0
�
sequential_5/conv2d_19/biasVarHandleOp*
_output_shapes
: *,

debug_namesequential_5/conv2d_19/bias/*
dtype0*
shape: *,
shared_namesequential_5/conv2d_19/bias
�
/sequential_5/conv2d_19/bias/Read/ReadVariableOpReadVariableOpsequential_5/conv2d_19/bias*
_output_shapes
: *
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpsequential_5/conv2d_19/bias*
_class
loc:@Variable_10*
_output_shapes
: *
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape: *
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
: *
dtype0
�
sequential_5/conv2d_19/kernelVarHandleOp*
_output_shapes
: *.

debug_name sequential_5/conv2d_19/kernel/*
dtype0*
shape: *.
shared_namesequential_5/conv2d_19/kernel
�
1sequential_5/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpsequential_5/conv2d_19/kernel*&
_output_shapes
: *
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpsequential_5/conv2d_19/kernel*
_class
loc:@Variable_11*&
_output_shapes
: *
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape: *
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
s
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*&
_output_shapes
: *
dtype0
�
(adam/sequential_5_dense_21_bias_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_5_dense_21_bias_velocity/*
dtype0*
shape:*9
shared_name*(adam/sequential_5_dense_21_bias_velocity
�
<adam/sequential_5_dense_21_bias_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_5_dense_21_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp(adam/sequential_5_dense_21_bias_velocity*
_class
loc:@Variable_12*
_output_shapes
:*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
:*
dtype0
�
(adam/sequential_5_dense_21_bias_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_5_dense_21_bias_momentum/*
dtype0*
shape:*9
shared_name*(adam/sequential_5_dense_21_bias_momentum
�
<adam/sequential_5_dense_21_bias_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_5_dense_21_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp(adam/sequential_5_dense_21_bias_momentum*
_class
loc:@Variable_13*
_output_shapes
:*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
g
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:*
dtype0
�
*adam/sequential_5_dense_21_kernel_velocityVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_5_dense_21_kernel_velocity/*
dtype0*
shape
:@*;
shared_name,*adam/sequential_5_dense_21_kernel_velocity
�
>adam/sequential_5_dense_21_kernel_velocity/Read/ReadVariableOpReadVariableOp*adam/sequential_5_dense_21_kernel_velocity*
_output_shapes

:@*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOp*adam/sequential_5_dense_21_kernel_velocity*
_class
loc:@Variable_14*
_output_shapes

:@*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape
:@*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
k
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes

:@*
dtype0
�
*adam/sequential_5_dense_21_kernel_momentumVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_5_dense_21_kernel_momentum/*
dtype0*
shape
:@*;
shared_name,*adam/sequential_5_dense_21_kernel_momentum
�
>adam/sequential_5_dense_21_kernel_momentum/Read/ReadVariableOpReadVariableOp*adam/sequential_5_dense_21_kernel_momentum*
_output_shapes

:@*
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOp*adam/sequential_5_dense_21_kernel_momentum*
_class
loc:@Variable_15*
_output_shapes

:@*
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape
:@*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
k
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes

:@*
dtype0
�
(adam/sequential_5_dense_20_bias_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_5_dense_20_bias_velocity/*
dtype0*
shape:@*9
shared_name*(adam/sequential_5_dense_20_bias_velocity
�
<adam/sequential_5_dense_20_bias_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_5_dense_20_bias_velocity*
_output_shapes
:@*
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOp(adam/sequential_5_dense_20_bias_velocity*
_class
loc:@Variable_16*
_output_shapes
:@*
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape:@*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
g
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
:@*
dtype0
�
(adam/sequential_5_dense_20_bias_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_5_dense_20_bias_momentum/*
dtype0*
shape:@*9
shared_name*(adam/sequential_5_dense_20_bias_momentum
�
<adam/sequential_5_dense_20_bias_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_5_dense_20_bias_momentum*
_output_shapes
:@*
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOp(adam/sequential_5_dense_20_bias_momentum*
_class
loc:@Variable_17*
_output_shapes
:@*
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape:@*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
g
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes
:@*
dtype0
�
*adam/sequential_5_dense_20_kernel_velocityVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_5_dense_20_kernel_velocity/*
dtype0*
shape:	�@*;
shared_name,*adam/sequential_5_dense_20_kernel_velocity
�
>adam/sequential_5_dense_20_kernel_velocity/Read/ReadVariableOpReadVariableOp*adam/sequential_5_dense_20_kernel_velocity*
_output_shapes
:	�@*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOp*adam/sequential_5_dense_20_kernel_velocity*
_class
loc:@Variable_18*
_output_shapes
:	�@*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape:	�@*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
l
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
:	�@*
dtype0
�
*adam/sequential_5_dense_20_kernel_momentumVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_5_dense_20_kernel_momentum/*
dtype0*
shape:	�@*;
shared_name,*adam/sequential_5_dense_20_kernel_momentum
�
>adam/sequential_5_dense_20_kernel_momentum/Read/ReadVariableOpReadVariableOp*adam/sequential_5_dense_20_kernel_momentum*
_output_shapes
:	�@*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOp*adam/sequential_5_dense_20_kernel_momentum*
_class
loc:@Variable_19*
_output_shapes
:	�@*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:	�@*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
l
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes
:	�@*
dtype0
�
(adam/sequential_5_dense_19_bias_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_5_dense_19_bias_velocity/*
dtype0*
shape:�*9
shared_name*(adam/sequential_5_dense_19_bias_velocity
�
<adam/sequential_5_dense_19_bias_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_5_dense_19_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOp(adam/sequential_5_dense_19_bias_velocity*
_class
loc:@Variable_20*
_output_shapes	
:�*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:�*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
h
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes	
:�*
dtype0
�
(adam/sequential_5_dense_19_bias_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_5_dense_19_bias_momentum/*
dtype0*
shape:�*9
shared_name*(adam/sequential_5_dense_19_bias_momentum
�
<adam/sequential_5_dense_19_bias_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_5_dense_19_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOp(adam/sequential_5_dense_19_bias_momentum*
_class
loc:@Variable_21*
_output_shapes	
:�*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:�*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
h
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*
_output_shapes	
:�*
dtype0
�
*adam/sequential_5_dense_19_kernel_velocityVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_5_dense_19_kernel_velocity/*
dtype0*
shape:���*;
shared_name,*adam/sequential_5_dense_19_kernel_velocity
�
>adam/sequential_5_dense_19_kernel_velocity/Read/ReadVariableOpReadVariableOp*adam/sequential_5_dense_19_kernel_velocity*!
_output_shapes
:���*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOp*adam/sequential_5_dense_19_kernel_velocity*
_class
loc:@Variable_22*!
_output_shapes
:���*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:���*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
n
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*!
_output_shapes
:���*
dtype0
�
*adam/sequential_5_dense_19_kernel_momentumVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_5_dense_19_kernel_momentum/*
dtype0*
shape:���*;
shared_name,*adam/sequential_5_dense_19_kernel_momentum
�
>adam/sequential_5_dense_19_kernel_momentum/Read/ReadVariableOpReadVariableOp*adam/sequential_5_dense_19_kernel_momentum*!
_output_shapes
:���*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOp*adam/sequential_5_dense_19_kernel_momentum*
_class
loc:@Variable_23*!
_output_shapes
:���*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:���*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
n
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*!
_output_shapes
:���*
dtype0
�
)adam/sequential_5_conv2d_21_bias_velocityVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_5_conv2d_21_bias_velocity/*
dtype0*
shape:�*:
shared_name+)adam/sequential_5_conv2d_21_bias_velocity
�
=adam/sequential_5_conv2d_21_bias_velocity/Read/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_21_bias_velocity*
_output_shapes	
:�*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_21_bias_velocity*
_class
loc:@Variable_24*
_output_shapes	
:�*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape:�*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
h
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes	
:�*
dtype0
�
)adam/sequential_5_conv2d_21_bias_momentumVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_5_conv2d_21_bias_momentum/*
dtype0*
shape:�*:
shared_name+)adam/sequential_5_conv2d_21_bias_momentum
�
=adam/sequential_5_conv2d_21_bias_momentum/Read/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_21_bias_momentum*
_output_shapes	
:�*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_21_bias_momentum*
_class
loc:@Variable_25*
_output_shapes	
:�*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:�*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
h
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*
_output_shapes	
:�*
dtype0
�
+adam/sequential_5_conv2d_21_kernel_velocityVarHandleOp*
_output_shapes
: *<

debug_name.,adam/sequential_5_conv2d_21_kernel_velocity/*
dtype0*
shape:@�*<
shared_name-+adam/sequential_5_conv2d_21_kernel_velocity
�
?adam/sequential_5_conv2d_21_kernel_velocity/Read/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_21_kernel_velocity*'
_output_shapes
:@�*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_21_kernel_velocity*
_class
loc:@Variable_26*'
_output_shapes
:@�*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape:@�*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
t
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*'
_output_shapes
:@�*
dtype0
�
+adam/sequential_5_conv2d_21_kernel_momentumVarHandleOp*
_output_shapes
: *<

debug_name.,adam/sequential_5_conv2d_21_kernel_momentum/*
dtype0*
shape:@�*<
shared_name-+adam/sequential_5_conv2d_21_kernel_momentum
�
?adam/sequential_5_conv2d_21_kernel_momentum/Read/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_21_kernel_momentum*'
_output_shapes
:@�*
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_21_kernel_momentum*
_class
loc:@Variable_27*'
_output_shapes
:@�*
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape:@�*
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
t
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*'
_output_shapes
:@�*
dtype0
�
)adam/sequential_5_conv2d_20_bias_velocityVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_5_conv2d_20_bias_velocity/*
dtype0*
shape:@*:
shared_name+)adam/sequential_5_conv2d_20_bias_velocity
�
=adam/sequential_5_conv2d_20_bias_velocity/Read/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_20_bias_velocity*
_output_shapes
:@*
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_20_bias_velocity*
_class
loc:@Variable_28*
_output_shapes
:@*
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape:@*
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
g
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes
:@*
dtype0
�
)adam/sequential_5_conv2d_20_bias_momentumVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_5_conv2d_20_bias_momentum/*
dtype0*
shape:@*:
shared_name+)adam/sequential_5_conv2d_20_bias_momentum
�
=adam/sequential_5_conv2d_20_bias_momentum/Read/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_20_bias_momentum*
_output_shapes
:@*
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_20_bias_momentum*
_class
loc:@Variable_29*
_output_shapes
:@*
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape:@*
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
g
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes
:@*
dtype0
�
+adam/sequential_5_conv2d_20_kernel_velocityVarHandleOp*
_output_shapes
: *<

debug_name.,adam/sequential_5_conv2d_20_kernel_velocity/*
dtype0*
shape: @*<
shared_name-+adam/sequential_5_conv2d_20_kernel_velocity
�
?adam/sequential_5_conv2d_20_kernel_velocity/Read/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_20_kernel_velocity*&
_output_shapes
: @*
dtype0
�
&Variable_30/Initializer/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_20_kernel_velocity*
_class
loc:@Variable_30*&
_output_shapes
: @*
dtype0
�
Variable_30VarHandleOp*
_class
loc:@Variable_30*
_output_shapes
: *

debug_nameVariable_30/*
dtype0*
shape: @*
shared_nameVariable_30
g
,Variable_30/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_30*
_output_shapes
: 
h
Variable_30/AssignAssignVariableOpVariable_30&Variable_30/Initializer/ReadVariableOp*
dtype0
s
Variable_30/Read/ReadVariableOpReadVariableOpVariable_30*&
_output_shapes
: @*
dtype0
�
+adam/sequential_5_conv2d_20_kernel_momentumVarHandleOp*
_output_shapes
: *<

debug_name.,adam/sequential_5_conv2d_20_kernel_momentum/*
dtype0*
shape: @*<
shared_name-+adam/sequential_5_conv2d_20_kernel_momentum
�
?adam/sequential_5_conv2d_20_kernel_momentum/Read/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_20_kernel_momentum*&
_output_shapes
: @*
dtype0
�
&Variable_31/Initializer/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_20_kernel_momentum*
_class
loc:@Variable_31*&
_output_shapes
: @*
dtype0
�
Variable_31VarHandleOp*
_class
loc:@Variable_31*
_output_shapes
: *

debug_nameVariable_31/*
dtype0*
shape: @*
shared_nameVariable_31
g
,Variable_31/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_31*
_output_shapes
: 
h
Variable_31/AssignAssignVariableOpVariable_31&Variable_31/Initializer/ReadVariableOp*
dtype0
s
Variable_31/Read/ReadVariableOpReadVariableOpVariable_31*&
_output_shapes
: @*
dtype0
�
)adam/sequential_5_conv2d_19_bias_velocityVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_5_conv2d_19_bias_velocity/*
dtype0*
shape: *:
shared_name+)adam/sequential_5_conv2d_19_bias_velocity
�
=adam/sequential_5_conv2d_19_bias_velocity/Read/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_19_bias_velocity*
_output_shapes
: *
dtype0
�
&Variable_32/Initializer/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_19_bias_velocity*
_class
loc:@Variable_32*
_output_shapes
: *
dtype0
�
Variable_32VarHandleOp*
_class
loc:@Variable_32*
_output_shapes
: *

debug_nameVariable_32/*
dtype0*
shape: *
shared_nameVariable_32
g
,Variable_32/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_32*
_output_shapes
: 
h
Variable_32/AssignAssignVariableOpVariable_32&Variable_32/Initializer/ReadVariableOp*
dtype0
g
Variable_32/Read/ReadVariableOpReadVariableOpVariable_32*
_output_shapes
: *
dtype0
�
)adam/sequential_5_conv2d_19_bias_momentumVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_5_conv2d_19_bias_momentum/*
dtype0*
shape: *:
shared_name+)adam/sequential_5_conv2d_19_bias_momentum
�
=adam/sequential_5_conv2d_19_bias_momentum/Read/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_19_bias_momentum*
_output_shapes
: *
dtype0
�
&Variable_33/Initializer/ReadVariableOpReadVariableOp)adam/sequential_5_conv2d_19_bias_momentum*
_class
loc:@Variable_33*
_output_shapes
: *
dtype0
�
Variable_33VarHandleOp*
_class
loc:@Variable_33*
_output_shapes
: *

debug_nameVariable_33/*
dtype0*
shape: *
shared_nameVariable_33
g
,Variable_33/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_33*
_output_shapes
: 
h
Variable_33/AssignAssignVariableOpVariable_33&Variable_33/Initializer/ReadVariableOp*
dtype0
g
Variable_33/Read/ReadVariableOpReadVariableOpVariable_33*
_output_shapes
: *
dtype0
�
+adam/sequential_5_conv2d_19_kernel_velocityVarHandleOp*
_output_shapes
: *<

debug_name.,adam/sequential_5_conv2d_19_kernel_velocity/*
dtype0*
shape: *<
shared_name-+adam/sequential_5_conv2d_19_kernel_velocity
�
?adam/sequential_5_conv2d_19_kernel_velocity/Read/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_19_kernel_velocity*&
_output_shapes
: *
dtype0
�
&Variable_34/Initializer/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_19_kernel_velocity*
_class
loc:@Variable_34*&
_output_shapes
: *
dtype0
�
Variable_34VarHandleOp*
_class
loc:@Variable_34*
_output_shapes
: *

debug_nameVariable_34/*
dtype0*
shape: *
shared_nameVariable_34
g
,Variable_34/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_34*
_output_shapes
: 
h
Variable_34/AssignAssignVariableOpVariable_34&Variable_34/Initializer/ReadVariableOp*
dtype0
s
Variable_34/Read/ReadVariableOpReadVariableOpVariable_34*&
_output_shapes
: *
dtype0
�
+adam/sequential_5_conv2d_19_kernel_momentumVarHandleOp*
_output_shapes
: *<

debug_name.,adam/sequential_5_conv2d_19_kernel_momentum/*
dtype0*
shape: *<
shared_name-+adam/sequential_5_conv2d_19_kernel_momentum
�
?adam/sequential_5_conv2d_19_kernel_momentum/Read/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_19_kernel_momentum*&
_output_shapes
: *
dtype0
�
&Variable_35/Initializer/ReadVariableOpReadVariableOp+adam/sequential_5_conv2d_19_kernel_momentum*
_class
loc:@Variable_35*&
_output_shapes
: *
dtype0
�
Variable_35VarHandleOp*
_class
loc:@Variable_35*
_output_shapes
: *

debug_nameVariable_35/*
dtype0*
shape: *
shared_nameVariable_35
g
,Variable_35/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_35*
_output_shapes
: 
h
Variable_35/AssignAssignVariableOpVariable_35&Variable_35/Initializer/ReadVariableOp*
dtype0
s
Variable_35/Read/ReadVariableOpReadVariableOpVariable_35*&
_output_shapes
: *
dtype0
�
adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameadam/learning_rate/*
dtype0*
shape: *#
shared_nameadam/learning_rate
q
&adam/learning_rate/Read/ReadVariableOpReadVariableOpadam/learning_rate*
_output_shapes
: *
dtype0
�
&Variable_36/Initializer/ReadVariableOpReadVariableOpadam/learning_rate*
_class
loc:@Variable_36*
_output_shapes
: *
dtype0
�
Variable_36VarHandleOp*
_class
loc:@Variable_36*
_output_shapes
: *

debug_nameVariable_36/*
dtype0*
shape: *
shared_nameVariable_36
g
,Variable_36/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_36*
_output_shapes
: 
h
Variable_36/AssignAssignVariableOpVariable_36&Variable_36/Initializer/ReadVariableOp*
dtype0
c
Variable_36/Read/ReadVariableOpReadVariableOpVariable_36*
_output_shapes
: *
dtype0
�
adam/iterationVarHandleOp*
_output_shapes
: *

debug_nameadam/iteration/*
dtype0	*
shape: *
shared_nameadam/iteration
i
"adam/iteration/Read/ReadVariableOpReadVariableOpadam/iteration*
_output_shapes
: *
dtype0	
�
&Variable_37/Initializer/ReadVariableOpReadVariableOpadam/iteration*
_class
loc:@Variable_37*
_output_shapes
: *
dtype0	
�
Variable_37VarHandleOp*
_class
loc:@Variable_37*
_output_shapes
: *

debug_nameVariable_37/*
dtype0	*
shape: *
shared_nameVariable_37
g
,Variable_37/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_37*
_output_shapes
: 
h
Variable_37/AssignAssignVariableOpVariable_37&Variable_37/Initializer/ReadVariableOp*
dtype0	
c
Variable_37/Read/ReadVariableOpReadVariableOpVariable_37*
_output_shapes
: *
dtype0	
�
serving_default_inputsPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputssequential_5/conv2d_19/kernelsequential_5/conv2d_19/biassequential_5/conv2d_20/kernelsequential_5/conv2d_20/biassequential_5/conv2d_21/kernelsequential_5/conv2d_21/biassequential_5/dense_19/kernelsequential_5/dense_19/biassequential_5/dense_20/kernelsequential_5/dense_20/biassequential_5/dense_21/kernelsequential_5/dense_21/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *<
f7R5
3__inference_signature_wrapper_serving_default_35712

NoOpNoOp
�4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�4
value�3B�3 B�3
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures*
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities*

trace_0* 
* 
* 
* 
* 
* 
b
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12*
* 

+serving_default* 
* 
* 
* 
* 
* 
b
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12*
b
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12*
* 
* 

,trace_0* 
�
0
1
-2
.3
/4
05
16
27
38
49
510
611
712
813
914
:15
;16
<17
=18
>19
?20
@21
A22
B23
C24
D25*
Z
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11*
* 
UO
VARIABLE_VALUEVariable_370optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEVariable_363optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
]
Q_inbound_nodes
R_outbound_nodes
S_losses
T	_loss_ids
U_losses_override* 
�
E_kernel
Fbias
V_inbound_nodes
W_outbound_nodes
X_losses
Y	_loss_ids
Z_losses_override
[_build_shapes_dict*
]
\_inbound_nodes
]_outbound_nodes
^_losses
_	_loss_ids
`_losses_override* 
�
G_kernel
Hbias
a_inbound_nodes
b_outbound_nodes
c_losses
d	_loss_ids
e_losses_override
f_build_shapes_dict*
]
g_inbound_nodes
h_outbound_nodes
i_losses
j	_loss_ids
k_losses_override* 
�
I_kernel
Jbias
l_inbound_nodes
m_outbound_nodes
n_losses
o	_loss_ids
p_losses_override
q_build_shapes_dict*
]
r_inbound_nodes
s_outbound_nodes
t_losses
u	_loss_ids
v_losses_override* 
u
w_inbound_nodes
x_outbound_nodes
y_losses
z	_loss_ids
{_losses_override
|_build_shapes_dict* 
�
K_kernel
Lbias
}_inbound_nodes
~_outbound_nodes
_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
�
M_kernel
Nbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
�
O_kernel
Pbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
* 
* 
VP
VARIABLE_VALUEVariable_351optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_341optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_331optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_321optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_311optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_301optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_291optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEVariable_281optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_272optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_262optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_252optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_242optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_232optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_222optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_212optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_202optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_192optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_182optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_172optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_162optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_152optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_142optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_132optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEVariable_122optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_11;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEVariable_10;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_9;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_8;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_7;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_6;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_5;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_4;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_3;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUE
Variable_2;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE
Variable_1<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEVariable<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *'
f"R 
__inference__traced_save_36174
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_37Variable_36Variable_35Variable_34Variable_33Variable_32Variable_31Variable_30Variable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J **
f%R#
!__inference__traced_restore_36297��
�
�!
__inference__traced_save_36174
file_prefix,
"read_disablecopyonread_variable_37:	 .
$read_1_disablecopyonread_variable_36: >
$read_2_disablecopyonread_variable_35: >
$read_3_disablecopyonread_variable_34: 2
$read_4_disablecopyonread_variable_33: 2
$read_5_disablecopyonread_variable_32: >
$read_6_disablecopyonread_variable_31: @>
$read_7_disablecopyonread_variable_30: @2
$read_8_disablecopyonread_variable_29:@2
$read_9_disablecopyonread_variable_28:@@
%read_10_disablecopyonread_variable_27:@�@
%read_11_disablecopyonread_variable_26:@�4
%read_12_disablecopyonread_variable_25:	�4
%read_13_disablecopyonread_variable_24:	�:
%read_14_disablecopyonread_variable_23:���:
%read_15_disablecopyonread_variable_22:���4
%read_16_disablecopyonread_variable_21:	�4
%read_17_disablecopyonread_variable_20:	�8
%read_18_disablecopyonread_variable_19:	�@8
%read_19_disablecopyonread_variable_18:	�@3
%read_20_disablecopyonread_variable_17:@3
%read_21_disablecopyonread_variable_16:@7
%read_22_disablecopyonread_variable_15:@7
%read_23_disablecopyonread_variable_14:@3
%read_24_disablecopyonread_variable_13:3
%read_25_disablecopyonread_variable_12:?
%read_26_disablecopyonread_variable_11: 3
%read_27_disablecopyonread_variable_10: >
$read_28_disablecopyonread_variable_9: @2
$read_29_disablecopyonread_variable_8:@?
$read_30_disablecopyonread_variable_7:@�3
$read_31_disablecopyonread_variable_6:	�9
$read_32_disablecopyonread_variable_5:���3
$read_33_disablecopyonread_variable_4:	�7
$read_34_disablecopyonread_variable_3:	�@2
$read_35_disablecopyonread_variable_2:@6
$read_36_disablecopyonread_variable_1:@0
"read_37_disablecopyonread_variable:
savev2_const
identity_77��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_37*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_37^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_36*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_36^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_35*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_35^Read_2/DisableCopyOnRead*&
_output_shapes
: *
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_34*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_34^Read_3/DisableCopyOnRead*&
_output_shapes
: *
dtype0f

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*&
_output_shapes
: k

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*&
_output_shapes
: i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_33*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_33^Read_4/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_32*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_32^Read_5/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_31*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_31^Read_6/DisableCopyOnRead*&
_output_shapes
: @*
dtype0g
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_30*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_30^Read_7/DisableCopyOnRead*&
_output_shapes
: @*
dtype0g
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*&
_output_shapes
: @i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_29*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_29^Read_8/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_28*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_28^Read_9/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_27*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_27^Read_10/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0i
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_26*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_26^Read_11/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0i
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_25*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_25^Read_12/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_24*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_24^Read_13/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_23*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_23^Read_14/DisableCopyOnRead*!
_output_shapes
:���*
dtype0c
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*!
_output_shapes
:���k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_22*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_22^Read_15/DisableCopyOnRead*!
_output_shapes
:���*
dtype0c
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*!
_output_shapes
:���k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_21*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_21^Read_16/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_20*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_20^Read_17/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:�k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_19*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_19^Read_18/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@k
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_18*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_18^Read_19/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@k
Read_20/DisableCopyOnReadDisableCopyOnRead%read_20_disablecopyonread_variable_17*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp%read_20_disablecopyonread_variable_17^Read_20/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_variable_16*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_variable_16^Read_21/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_22/DisableCopyOnReadDisableCopyOnRead%read_22_disablecopyonread_variable_15*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp%read_22_disablecopyonread_variable_15^Read_22/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:@k
Read_23/DisableCopyOnReadDisableCopyOnRead%read_23_disablecopyonread_variable_14*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp%read_23_disablecopyonread_variable_14^Read_23/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:@k
Read_24/DisableCopyOnReadDisableCopyOnRead%read_24_disablecopyonread_variable_13*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp%read_24_disablecopyonread_variable_13^Read_24/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_variable_12*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_variable_12^Read_25/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_26/DisableCopyOnReadDisableCopyOnRead%read_26_disablecopyonread_variable_11*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp%read_26_disablecopyonread_variable_11^Read_26/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
: k
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_variable_10*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_variable_10^Read_27/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: j
Read_28/DisableCopyOnReadDisableCopyOnRead$read_28_disablecopyonread_variable_9*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp$read_28_disablecopyonread_variable_9^Read_28/DisableCopyOnRead*&
_output_shapes
: @*
dtype0h
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
: @j
Read_29/DisableCopyOnReadDisableCopyOnRead$read_29_disablecopyonread_variable_8*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp$read_29_disablecopyonread_variable_8^Read_29/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_30/DisableCopyOnReadDisableCopyOnRead$read_30_disablecopyonread_variable_7*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp$read_30_disablecopyonread_variable_7^Read_30/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0i
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�j
Read_31/DisableCopyOnReadDisableCopyOnRead$read_31_disablecopyonread_variable_6*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp$read_31_disablecopyonread_variable_6^Read_31/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_32/DisableCopyOnReadDisableCopyOnRead$read_32_disablecopyonread_variable_5*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp$read_32_disablecopyonread_variable_5^Read_32/DisableCopyOnRead*!
_output_shapes
:���*
dtype0c
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*!
_output_shapes
:���j
Read_33/DisableCopyOnReadDisableCopyOnRead$read_33_disablecopyonread_variable_4*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp$read_33_disablecopyonread_variable_4^Read_33/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_66IdentityRead_33/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_34/DisableCopyOnReadDisableCopyOnRead$read_34_disablecopyonread_variable_3*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp$read_34_disablecopyonread_variable_3^Read_34/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0a
Identity_68IdentityRead_34/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@j
Read_35/DisableCopyOnReadDisableCopyOnRead$read_35_disablecopyonread_variable_2*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp$read_35_disablecopyonread_variable_2^Read_35/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_70IdentityRead_35/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_36/DisableCopyOnReadDisableCopyOnRead$read_36_disablecopyonread_variable_1*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp$read_36_disablecopyonread_variable_1^Read_36/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_72IdentityRead_36/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes

:@h
Read_37/DisableCopyOnReadDisableCopyOnRead"read_37_disablecopyonread_variable*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp"read_37_disablecopyonread_variable^Read_37/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_74IdentityRead_37/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*�
value�B�'B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *5
dtypes+
)2'	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_76Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_77IdentityIdentity_76:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_77Identity_77:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:='9

_output_shapes
: 

_user_specified_nameConst:(&$
"
_user_specified_name
Variable:*%&
$
_user_specified_name
Variable_1:*$&
$
_user_specified_name
Variable_2:*#&
$
_user_specified_name
Variable_3:*"&
$
_user_specified_name
Variable_4:*!&
$
_user_specified_name
Variable_5:* &
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_27:+
'
%
_user_specified_nameVariable_28:+	'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_37:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
!__inference__traced_restore_36297
file_prefix&
assignvariableop_variable_37:	 (
assignvariableop_1_variable_36: 8
assignvariableop_2_variable_35: 8
assignvariableop_3_variable_34: ,
assignvariableop_4_variable_33: ,
assignvariableop_5_variable_32: 8
assignvariableop_6_variable_31: @8
assignvariableop_7_variable_30: @,
assignvariableop_8_variable_29:@,
assignvariableop_9_variable_28:@:
assignvariableop_10_variable_27:@�:
assignvariableop_11_variable_26:@�.
assignvariableop_12_variable_25:	�.
assignvariableop_13_variable_24:	�4
assignvariableop_14_variable_23:���4
assignvariableop_15_variable_22:���.
assignvariableop_16_variable_21:	�.
assignvariableop_17_variable_20:	�2
assignvariableop_18_variable_19:	�@2
assignvariableop_19_variable_18:	�@-
assignvariableop_20_variable_17:@-
assignvariableop_21_variable_16:@1
assignvariableop_22_variable_15:@1
assignvariableop_23_variable_14:@-
assignvariableop_24_variable_13:-
assignvariableop_25_variable_12:9
assignvariableop_26_variable_11: -
assignvariableop_27_variable_10: 8
assignvariableop_28_variable_9: @,
assignvariableop_29_variable_8:@9
assignvariableop_30_variable_7:@�-
assignvariableop_31_variable_6:	�3
assignvariableop_32_variable_5:���-
assignvariableop_33_variable_4:	�1
assignvariableop_34_variable_3:	�@,
assignvariableop_35_variable_2:@0
assignvariableop_36_variable_1:@*
assignvariableop_37_variable:
identity_39��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*�
value�B�'B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB<optimizer/_trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_37Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_36Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_35Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_34Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_33Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_32Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_31Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_30Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_29Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_28Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_27Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_26Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_25Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_24Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_23Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_22Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_21Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_20Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_19Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_18Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_17Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_16Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_15Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_14Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_13Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_12Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_11Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_10Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_9Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variable_8Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_variable_7Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_variable_6Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_variable_5Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_variable_4Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_variable_3Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpassignvariableop_35_variable_2Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpassignvariableop_36_variable_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpassignvariableop_37_variableIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_39IdentityIdentity_38:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_39Identity_39:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:(&$
"
_user_specified_name
Variable:*%&
$
_user_specified_name
Variable_1:*$&
$
_user_specified_name
Variable_2:*#&
$
_user_specified_name
Variable_3:*"&
$
_user_specified_name
Variable_4:*!&
$
_user_specified_name
Variable_5:* &
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_27:+
'
%
_user_specified_nameVariable_28:+	'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_30:+'
%
_user_specified_nameVariable_31:+'
%
_user_specified_nameVariable_32:+'
%
_user_specified_nameVariable_33:+'
%
_user_specified_nameVariable_34:+'
%
_user_specified_nameVariable_35:+'
%
_user_specified_nameVariable_36:+'
%
_user_specified_nameVariable_37:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�a
�
!__inference_serving_default_35772

inputsY
?functional_16_1_conv2d_19_1_convolution_readvariableop_resource: I
;functional_16_1_conv2d_19_1_reshape_readvariableop_resource: Y
?functional_16_1_conv2d_20_1_convolution_readvariableop_resource: @I
;functional_16_1_conv2d_20_1_reshape_readvariableop_resource:@Z
?functional_16_1_conv2d_21_1_convolution_readvariableop_resource:@�J
;functional_16_1_conv2d_21_1_reshape_readvariableop_resource:	�L
7functional_16_1_dense_19_1_cast_readvariableop_resource:���I
:functional_16_1_dense_19_1_biasadd_readvariableop_resource:	�J
7functional_16_1_dense_20_1_cast_readvariableop_resource:	�@H
:functional_16_1_dense_20_1_biasadd_readvariableop_resource:@I
7functional_16_1_dense_21_1_cast_readvariableop_resource:@H
:functional_16_1_dense_21_1_biasadd_readvariableop_resource:
identity��2functional_16_1/conv2d_19_1/Reshape/ReadVariableOp�6functional_16_1/conv2d_19_1/convolution/ReadVariableOp�2functional_16_1/conv2d_20_1/Reshape/ReadVariableOp�6functional_16_1/conv2d_20_1/convolution/ReadVariableOp�2functional_16_1/conv2d_21_1/Reshape/ReadVariableOp�6functional_16_1/conv2d_21_1/convolution/ReadVariableOp�1functional_16_1/dense_19_1/BiasAdd/ReadVariableOp�.functional_16_1/dense_19_1/Cast/ReadVariableOp�1functional_16_1/dense_20_1/BiasAdd/ReadVariableOp�.functional_16_1/dense_20_1/Cast/ReadVariableOp�1functional_16_1/dense_21_1/BiasAdd/ReadVariableOp�.functional_16_1/dense_21_1/Cast/ReadVariableOp�
6functional_16_1/conv2d_19_1/convolution/ReadVariableOpReadVariableOp?functional_16_1_conv2d_19_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
'functional_16_1/conv2d_19_1/convolutionConv2Dinputs>functional_16_1/conv2d_19_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
2functional_16_1/conv2d_19_1/Reshape/ReadVariableOpReadVariableOp;functional_16_1_conv2d_19_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0�
)functional_16_1/conv2d_19_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
#functional_16_1/conv2d_19_1/ReshapeReshape:functional_16_1/conv2d_19_1/Reshape/ReadVariableOp:value:02functional_16_1/conv2d_19_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
#functional_16_1/conv2d_19_1/SqueezeSqueeze,functional_16_1/conv2d_19_1/Reshape:output:0*
T0*
_output_shapes
: �
#functional_16_1/conv2d_19_1/BiasAddBiasAdd0functional_16_1/conv2d_19_1/convolution:output:0,functional_16_1/conv2d_19_1/Squeeze:output:0*
T0*1
_output_shapes
:����������� �
 functional_16_1/conv2d_19_1/ReluRelu,functional_16_1/conv2d_19_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
,functional_16_1/max_pooling2d_18_1/MaxPool2dMaxPool.functional_16_1/conv2d_19_1/Relu:activations:0*/
_output_shapes
:���������KK *
ksize
*
paddingVALID*
strides
�
6functional_16_1/conv2d_20_1/convolution/ReadVariableOpReadVariableOp?functional_16_1_conv2d_20_1_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
'functional_16_1/conv2d_20_1/convolutionConv2D5functional_16_1/max_pooling2d_18_1/MaxPool2d:output:0>functional_16_1/conv2d_20_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������KK@*
paddingSAME*
strides
�
2functional_16_1/conv2d_20_1/Reshape/ReadVariableOpReadVariableOp;functional_16_1_conv2d_20_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
)functional_16_1/conv2d_20_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
#functional_16_1/conv2d_20_1/ReshapeReshape:functional_16_1/conv2d_20_1/Reshape/ReadVariableOp:value:02functional_16_1/conv2d_20_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
#functional_16_1/conv2d_20_1/SqueezeSqueeze,functional_16_1/conv2d_20_1/Reshape:output:0*
T0*
_output_shapes
:@�
#functional_16_1/conv2d_20_1/BiasAddBiasAdd0functional_16_1/conv2d_20_1/convolution:output:0,functional_16_1/conv2d_20_1/Squeeze:output:0*
T0*/
_output_shapes
:���������KK@�
 functional_16_1/conv2d_20_1/ReluRelu,functional_16_1/conv2d_20_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������KK@�
,functional_16_1/max_pooling2d_19_1/MaxPool2dMaxPool.functional_16_1/conv2d_20_1/Relu:activations:0*/
_output_shapes
:���������%%@*
ksize
*
paddingVALID*
strides
�
6functional_16_1/conv2d_21_1/convolution/ReadVariableOpReadVariableOp?functional_16_1_conv2d_21_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
'functional_16_1/conv2d_21_1/convolutionConv2D5functional_16_1/max_pooling2d_19_1/MaxPool2d:output:0>functional_16_1/conv2d_21_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
�
2functional_16_1/conv2d_21_1/Reshape/ReadVariableOpReadVariableOp;functional_16_1_conv2d_21_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)functional_16_1/conv2d_21_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
#functional_16_1/conv2d_21_1/ReshapeReshape:functional_16_1/conv2d_21_1/Reshape/ReadVariableOp:value:02functional_16_1/conv2d_21_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
#functional_16_1/conv2d_21_1/SqueezeSqueeze,functional_16_1/conv2d_21_1/Reshape:output:0*
T0*
_output_shapes	
:��
#functional_16_1/conv2d_21_1/BiasAddBiasAdd0functional_16_1/conv2d_21_1/convolution:output:0,functional_16_1/conv2d_21_1/Squeeze:output:0*
T0*0
_output_shapes
:���������%%��
 functional_16_1/conv2d_21_1/ReluRelu,functional_16_1/conv2d_21_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%��
,functional_16_1/max_pooling2d_20_1/MaxPool2dMaxPool.functional_16_1/conv2d_21_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
z
)functional_16_1/flatten_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
#functional_16_1/flatten_5_1/ReshapeReshape5functional_16_1/max_pooling2d_20_1/MaxPool2d:output:02functional_16_1/flatten_5_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
.functional_16_1/dense_19_1/Cast/ReadVariableOpReadVariableOp7functional_16_1_dense_19_1_cast_readvariableop_resource*!
_output_shapes
:���*
dtype0�
!functional_16_1/dense_19_1/MatMulMatMul,functional_16_1/flatten_5_1/Reshape:output:06functional_16_1/dense_19_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1functional_16_1/dense_19_1/BiasAdd/ReadVariableOpReadVariableOp:functional_16_1_dense_19_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"functional_16_1/dense_19_1/BiasAddBiasAdd+functional_16_1/dense_19_1/MatMul:product:09functional_16_1/dense_19_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
functional_16_1/dense_19_1/ReluRelu+functional_16_1/dense_19_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
.functional_16_1/dense_20_1/Cast/ReadVariableOpReadVariableOp7functional_16_1_dense_20_1_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
!functional_16_1/dense_20_1/MatMulMatMul-functional_16_1/dense_19_1/Relu:activations:06functional_16_1/dense_20_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
1functional_16_1/dense_20_1/BiasAdd/ReadVariableOpReadVariableOp:functional_16_1_dense_20_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
"functional_16_1/dense_20_1/BiasAddBiasAdd+functional_16_1/dense_20_1/MatMul:product:09functional_16_1/dense_20_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
functional_16_1/dense_20_1/ReluRelu+functional_16_1/dense_20_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
.functional_16_1/dense_21_1/Cast/ReadVariableOpReadVariableOp7functional_16_1_dense_21_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
!functional_16_1/dense_21_1/MatMulMatMul-functional_16_1/dense_20_1/Relu:activations:06functional_16_1/dense_21_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
1functional_16_1/dense_21_1/BiasAdd/ReadVariableOpReadVariableOp:functional_16_1_dense_21_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
"functional_16_1/dense_21_1/BiasAddBiasAdd+functional_16_1/dense_21_1/MatMul:product:09functional_16_1/dense_21_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"functional_16_1/dense_21_1/SoftmaxSoftmax+functional_16_1/dense_21_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������{
IdentityIdentity,functional_16_1/dense_21_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp3^functional_16_1/conv2d_19_1/Reshape/ReadVariableOp7^functional_16_1/conv2d_19_1/convolution/ReadVariableOp3^functional_16_1/conv2d_20_1/Reshape/ReadVariableOp7^functional_16_1/conv2d_20_1/convolution/ReadVariableOp3^functional_16_1/conv2d_21_1/Reshape/ReadVariableOp7^functional_16_1/conv2d_21_1/convolution/ReadVariableOp2^functional_16_1/dense_19_1/BiasAdd/ReadVariableOp/^functional_16_1/dense_19_1/Cast/ReadVariableOp2^functional_16_1/dense_20_1/BiasAdd/ReadVariableOp/^functional_16_1/dense_20_1/Cast/ReadVariableOp2^functional_16_1/dense_21_1/BiasAdd/ReadVariableOp/^functional_16_1/dense_21_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2h
2functional_16_1/conv2d_19_1/Reshape/ReadVariableOp2functional_16_1/conv2d_19_1/Reshape/ReadVariableOp2p
6functional_16_1/conv2d_19_1/convolution/ReadVariableOp6functional_16_1/conv2d_19_1/convolution/ReadVariableOp2h
2functional_16_1/conv2d_20_1/Reshape/ReadVariableOp2functional_16_1/conv2d_20_1/Reshape/ReadVariableOp2p
6functional_16_1/conv2d_20_1/convolution/ReadVariableOp6functional_16_1/conv2d_20_1/convolution/ReadVariableOp2h
2functional_16_1/conv2d_21_1/Reshape/ReadVariableOp2functional_16_1/conv2d_21_1/Reshape/ReadVariableOp2p
6functional_16_1/conv2d_21_1/convolution/ReadVariableOp6functional_16_1/conv2d_21_1/convolution/ReadVariableOp2f
1functional_16_1/dense_19_1/BiasAdd/ReadVariableOp1functional_16_1/dense_19_1/BiasAdd/ReadVariableOp2`
.functional_16_1/dense_19_1/Cast/ReadVariableOp.functional_16_1/dense_19_1/Cast/ReadVariableOp2f
1functional_16_1/dense_20_1/BiasAdd/ReadVariableOp1functional_16_1/dense_20_1/BiasAdd/ReadVariableOp2`
.functional_16_1/dense_20_1/Cast/ReadVariableOp.functional_16_1/dense_20_1/Cast/ReadVariableOp2f
1functional_16_1/dense_21_1/BiasAdd/ReadVariableOp1functional_16_1/dense_21_1/BiasAdd/ReadVariableOp2`
.functional_16_1/dense_21_1/Cast/ReadVariableOp.functional_16_1/dense_21_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�_
�
!__inference_serving_default_35682

inputsX
>sequential_5_1_conv2d_19_1_convolution_readvariableop_resource: H
:sequential_5_1_conv2d_19_1_reshape_readvariableop_resource: X
>sequential_5_1_conv2d_20_1_convolution_readvariableop_resource: @H
:sequential_5_1_conv2d_20_1_reshape_readvariableop_resource:@Y
>sequential_5_1_conv2d_21_1_convolution_readvariableop_resource:@�I
:sequential_5_1_conv2d_21_1_reshape_readvariableop_resource:	�K
6sequential_5_1_dense_19_1_cast_readvariableop_resource:���H
9sequential_5_1_dense_19_1_biasadd_readvariableop_resource:	�I
6sequential_5_1_dense_20_1_cast_readvariableop_resource:	�@G
9sequential_5_1_dense_20_1_biasadd_readvariableop_resource:@H
6sequential_5_1_dense_21_1_cast_readvariableop_resource:@G
9sequential_5_1_dense_21_1_biasadd_readvariableop_resource:
identity��1sequential_5_1/conv2d_19_1/Reshape/ReadVariableOp�5sequential_5_1/conv2d_19_1/convolution/ReadVariableOp�1sequential_5_1/conv2d_20_1/Reshape/ReadVariableOp�5sequential_5_1/conv2d_20_1/convolution/ReadVariableOp�1sequential_5_1/conv2d_21_1/Reshape/ReadVariableOp�5sequential_5_1/conv2d_21_1/convolution/ReadVariableOp�0sequential_5_1/dense_19_1/BiasAdd/ReadVariableOp�-sequential_5_1/dense_19_1/Cast/ReadVariableOp�0sequential_5_1/dense_20_1/BiasAdd/ReadVariableOp�-sequential_5_1/dense_20_1/Cast/ReadVariableOp�0sequential_5_1/dense_21_1/BiasAdd/ReadVariableOp�-sequential_5_1/dense_21_1/Cast/ReadVariableOp�
5sequential_5_1/conv2d_19_1/convolution/ReadVariableOpReadVariableOp>sequential_5_1_conv2d_19_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
&sequential_5_1/conv2d_19_1/convolutionConv2Dinputs=sequential_5_1/conv2d_19_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
1sequential_5_1/conv2d_19_1/Reshape/ReadVariableOpReadVariableOp:sequential_5_1_conv2d_19_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0�
(sequential_5_1/conv2d_19_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
"sequential_5_1/conv2d_19_1/ReshapeReshape9sequential_5_1/conv2d_19_1/Reshape/ReadVariableOp:value:01sequential_5_1/conv2d_19_1/Reshape/shape:output:0*
T0*&
_output_shapes
: 
"sequential_5_1/conv2d_19_1/SqueezeSqueeze+sequential_5_1/conv2d_19_1/Reshape:output:0*
T0*
_output_shapes
: �
"sequential_5_1/conv2d_19_1/BiasAddBiasAdd/sequential_5_1/conv2d_19_1/convolution:output:0+sequential_5_1/conv2d_19_1/Squeeze:output:0*
T0*1
_output_shapes
:����������� �
sequential_5_1/conv2d_19_1/ReluRelu+sequential_5_1/conv2d_19_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
+sequential_5_1/max_pooling2d_18_1/MaxPool2dMaxPool-sequential_5_1/conv2d_19_1/Relu:activations:0*/
_output_shapes
:���������KK *
ksize
*
paddingVALID*
strides
�
5sequential_5_1/conv2d_20_1/convolution/ReadVariableOpReadVariableOp>sequential_5_1_conv2d_20_1_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&sequential_5_1/conv2d_20_1/convolutionConv2D4sequential_5_1/max_pooling2d_18_1/MaxPool2d:output:0=sequential_5_1/conv2d_20_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������KK@*
paddingSAME*
strides
�
1sequential_5_1/conv2d_20_1/Reshape/ReadVariableOpReadVariableOp:sequential_5_1_conv2d_20_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
(sequential_5_1/conv2d_20_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
"sequential_5_1/conv2d_20_1/ReshapeReshape9sequential_5_1/conv2d_20_1/Reshape/ReadVariableOp:value:01sequential_5_1/conv2d_20_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@
"sequential_5_1/conv2d_20_1/SqueezeSqueeze+sequential_5_1/conv2d_20_1/Reshape:output:0*
T0*
_output_shapes
:@�
"sequential_5_1/conv2d_20_1/BiasAddBiasAdd/sequential_5_1/conv2d_20_1/convolution:output:0+sequential_5_1/conv2d_20_1/Squeeze:output:0*
T0*/
_output_shapes
:���������KK@�
sequential_5_1/conv2d_20_1/ReluRelu+sequential_5_1/conv2d_20_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������KK@�
+sequential_5_1/max_pooling2d_19_1/MaxPool2dMaxPool-sequential_5_1/conv2d_20_1/Relu:activations:0*/
_output_shapes
:���������%%@*
ksize
*
paddingVALID*
strides
�
5sequential_5_1/conv2d_21_1/convolution/ReadVariableOpReadVariableOp>sequential_5_1_conv2d_21_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&sequential_5_1/conv2d_21_1/convolutionConv2D4sequential_5_1/max_pooling2d_19_1/MaxPool2d:output:0=sequential_5_1/conv2d_21_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
�
1sequential_5_1/conv2d_21_1/Reshape/ReadVariableOpReadVariableOp:sequential_5_1_conv2d_21_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(sequential_5_1/conv2d_21_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
"sequential_5_1/conv2d_21_1/ReshapeReshape9sequential_5_1/conv2d_21_1/Reshape/ReadVariableOp:value:01sequential_5_1/conv2d_21_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
"sequential_5_1/conv2d_21_1/SqueezeSqueeze+sequential_5_1/conv2d_21_1/Reshape:output:0*
T0*
_output_shapes	
:��
"sequential_5_1/conv2d_21_1/BiasAddBiasAdd/sequential_5_1/conv2d_21_1/convolution:output:0+sequential_5_1/conv2d_21_1/Squeeze:output:0*
T0*0
_output_shapes
:���������%%��
sequential_5_1/conv2d_21_1/ReluRelu+sequential_5_1/conv2d_21_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%��
+sequential_5_1/max_pooling2d_20_1/MaxPool2dMaxPool-sequential_5_1/conv2d_21_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
y
(sequential_5_1/flatten_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
"sequential_5_1/flatten_5_1/ReshapeReshape4sequential_5_1/max_pooling2d_20_1/MaxPool2d:output:01sequential_5_1/flatten_5_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
-sequential_5_1/dense_19_1/Cast/ReadVariableOpReadVariableOp6sequential_5_1_dense_19_1_cast_readvariableop_resource*!
_output_shapes
:���*
dtype0�
 sequential_5_1/dense_19_1/MatMulMatMul+sequential_5_1/flatten_5_1/Reshape:output:05sequential_5_1/dense_19_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0sequential_5_1/dense_19_1/BiasAdd/ReadVariableOpReadVariableOp9sequential_5_1_dense_19_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!sequential_5_1/dense_19_1/BiasAddBiasAdd*sequential_5_1/dense_19_1/MatMul:product:08sequential_5_1/dense_19_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
sequential_5_1/dense_19_1/ReluRelu*sequential_5_1/dense_19_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
-sequential_5_1/dense_20_1/Cast/ReadVariableOpReadVariableOp6sequential_5_1_dense_20_1_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
 sequential_5_1/dense_20_1/MatMulMatMul,sequential_5_1/dense_19_1/Relu:activations:05sequential_5_1/dense_20_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0sequential_5_1/dense_20_1/BiasAdd/ReadVariableOpReadVariableOp9sequential_5_1_dense_20_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
!sequential_5_1/dense_20_1/BiasAddBiasAdd*sequential_5_1/dense_20_1/MatMul:product:08sequential_5_1/dense_20_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
sequential_5_1/dense_20_1/ReluRelu*sequential_5_1/dense_20_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
-sequential_5_1/dense_21_1/Cast/ReadVariableOpReadVariableOp6sequential_5_1_dense_21_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
 sequential_5_1/dense_21_1/MatMulMatMul,sequential_5_1/dense_20_1/Relu:activations:05sequential_5_1/dense_21_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0sequential_5_1/dense_21_1/BiasAdd/ReadVariableOpReadVariableOp9sequential_5_1_dense_21_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!sequential_5_1/dense_21_1/BiasAddBiasAdd*sequential_5_1/dense_21_1/MatMul:product:08sequential_5_1/dense_21_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!sequential_5_1/dense_21_1/SoftmaxSoftmax*sequential_5_1/dense_21_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+sequential_5_1/dense_21_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^sequential_5_1/conv2d_19_1/Reshape/ReadVariableOp6^sequential_5_1/conv2d_19_1/convolution/ReadVariableOp2^sequential_5_1/conv2d_20_1/Reshape/ReadVariableOp6^sequential_5_1/conv2d_20_1/convolution/ReadVariableOp2^sequential_5_1/conv2d_21_1/Reshape/ReadVariableOp6^sequential_5_1/conv2d_21_1/convolution/ReadVariableOp1^sequential_5_1/dense_19_1/BiasAdd/ReadVariableOp.^sequential_5_1/dense_19_1/Cast/ReadVariableOp1^sequential_5_1/dense_20_1/BiasAdd/ReadVariableOp.^sequential_5_1/dense_20_1/Cast/ReadVariableOp1^sequential_5_1/dense_21_1/BiasAdd/ReadVariableOp.^sequential_5_1/dense_21_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2f
1sequential_5_1/conv2d_19_1/Reshape/ReadVariableOp1sequential_5_1/conv2d_19_1/Reshape/ReadVariableOp2n
5sequential_5_1/conv2d_19_1/convolution/ReadVariableOp5sequential_5_1/conv2d_19_1/convolution/ReadVariableOp2f
1sequential_5_1/conv2d_20_1/Reshape/ReadVariableOp1sequential_5_1/conv2d_20_1/Reshape/ReadVariableOp2n
5sequential_5_1/conv2d_20_1/convolution/ReadVariableOp5sequential_5_1/conv2d_20_1/convolution/ReadVariableOp2f
1sequential_5_1/conv2d_21_1/Reshape/ReadVariableOp1sequential_5_1/conv2d_21_1/Reshape/ReadVariableOp2n
5sequential_5_1/conv2d_21_1/convolution/ReadVariableOp5sequential_5_1/conv2d_21_1/convolution/ReadVariableOp2d
0sequential_5_1/dense_19_1/BiasAdd/ReadVariableOp0sequential_5_1/dense_19_1/BiasAdd/ReadVariableOp2^
-sequential_5_1/dense_19_1/Cast/ReadVariableOp-sequential_5_1/dense_19_1/Cast/ReadVariableOp2d
0sequential_5_1/dense_20_1/BiasAdd/ReadVariableOp0sequential_5_1/dense_20_1/BiasAdd/ReadVariableOp2^
-sequential_5_1/dense_20_1/Cast/ReadVariableOp-sequential_5_1/dense_20_1/Cast/ReadVariableOp2d
0sequential_5_1/dense_21_1/BiasAdd/ReadVariableOp0sequential_5_1/dense_21_1/BiasAdd/ReadVariableOp2^
-sequential_5_1/dense_21_1/Cast/ReadVariableOp-sequential_5_1/dense_21_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
3__inference_signature_wrapper_serving_default_35712

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�
	unknown_5:���
	unknown_6:	�
	unknown_7:	�@
	unknown_8:@
	unknown_9:@

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J **
f%R#
!__inference_serving_default_35682o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name35708:%!

_user_specified_name35706:%
!

_user_specified_name35704:%	!

_user_specified_name35702:%!

_user_specified_name35700:%!

_user_specified_name35698:%!

_user_specified_name35696:%!

_user_specified_name35694:%!

_user_specified_name35692:%!

_user_specified_name35690:%!

_user_specified_name35688:%!

_user_specified_name35686:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
inputs9
serving_default_inputs:0�����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:�N
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures"
_generic_user_object
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities"
_generic_user_object
�
trace_02�
!__inference_serving_default_35682�
���
FullArgSpec
args�

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
annotations� *'�$
"������������ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
~
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
+serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
~
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12"
trackable_list_wrapper
~
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
,trace_02�
!__inference_serving_default_35772�
���
FullArgSpec
args�

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
annotations� *'�$
"������������z,trace_0
�
0
1
-2
.3
/4
05
16
27
38
49
510
611
712
813
914
:15
;16
<17
=18
>19
?20
@21
A22
B23
C24
D25"
trackable_list_wrapper
v
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11"
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 (2adam/iteration
: (2adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
!__inference_serving_default_35682inputs"�
���
FullArgSpec
args�

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
annotations� *
 
y
Q_inbound_nodes
R_outbound_nodes
S_losses
T	_loss_ids
U_losses_override"
_generic_user_object
�
E_kernel
Fbias
V_inbound_nodes
W_outbound_nodes
X_losses
Y	_loss_ids
Z_losses_override
[_build_shapes_dict"
_generic_user_object
y
\_inbound_nodes
]_outbound_nodes
^_losses
_	_loss_ids
`_losses_override"
_generic_user_object
�
G_kernel
Hbias
a_inbound_nodes
b_outbound_nodes
c_losses
d	_loss_ids
e_losses_override
f_build_shapes_dict"
_generic_user_object
y
g_inbound_nodes
h_outbound_nodes
i_losses
j	_loss_ids
k_losses_override"
_generic_user_object
�
I_kernel
Jbias
l_inbound_nodes
m_outbound_nodes
n_losses
o	_loss_ids
p_losses_override
q_build_shapes_dict"
_generic_user_object
y
r_inbound_nodes
s_outbound_nodes
t_losses
u	_loss_ids
v_losses_override"
_generic_user_object
�
w_inbound_nodes
x_outbound_nodes
y_losses
z	_loss_ids
{_losses_override
|_build_shapes_dict"
_generic_user_object
�
K_kernel
Lbias
}_inbound_nodes
~_outbound_nodes
_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
M_kernel
Nbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
O_kernel
Pbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�B�
3__inference_signature_wrapper_serving_default_35712inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
!__inference_serving_default_35772inputs"�
���
FullArgSpec
args�

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
annotations� *
 
C:A 2+adam/sequential_5_conv2d_19_kernel_momentum
C:A 2+adam/sequential_5_conv2d_19_kernel_velocity
5:3 2)adam/sequential_5_conv2d_19_bias_momentum
5:3 2)adam/sequential_5_conv2d_19_bias_velocity
C:A @2+adam/sequential_5_conv2d_20_kernel_momentum
C:A @2+adam/sequential_5_conv2d_20_kernel_velocity
5:3@2)adam/sequential_5_conv2d_20_bias_momentum
5:3@2)adam/sequential_5_conv2d_20_bias_velocity
D:B@�2+adam/sequential_5_conv2d_21_kernel_momentum
D:B@�2+adam/sequential_5_conv2d_21_kernel_velocity
6:4�2)adam/sequential_5_conv2d_21_bias_momentum
6:4�2)adam/sequential_5_conv2d_21_bias_velocity
=:;���2*adam/sequential_5_dense_19_kernel_momentum
=:;���2*adam/sequential_5_dense_19_kernel_velocity
5:3�2(adam/sequential_5_dense_19_bias_momentum
5:3�2(adam/sequential_5_dense_19_bias_velocity
;:9	�@2*adam/sequential_5_dense_20_kernel_momentum
;:9	�@2*adam/sequential_5_dense_20_kernel_velocity
4:2@2(adam/sequential_5_dense_20_bias_momentum
4:2@2(adam/sequential_5_dense_20_bias_velocity
::8@2*adam/sequential_5_dense_21_kernel_momentum
::8@2*adam/sequential_5_dense_21_kernel_velocity
4:22(adam/sequential_5_dense_21_bias_momentum
4:22(adam/sequential_5_dense_21_bias_velocity
7:5 2sequential_5/conv2d_19/kernel
):' 2sequential_5/conv2d_19/bias
7:5 @2sequential_5/conv2d_20/kernel
):'@2sequential_5/conv2d_20/bias
8:6@�2sequential_5/conv2d_21/kernel
*:(�2sequential_5/conv2d_21/bias
1:/���2sequential_5/dense_19/kernel
):'�2sequential_5/dense_19/bias
/:-	�@2sequential_5/dense_20/kernel
(:&@2sequential_5/dense_20/bias
.:,@2sequential_5/dense_21/kernel
(:&2sequential_5/dense_21/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
!__inference_serving_default_35682lEFGHIJKLMNOP9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
!__inference_serving_default_35772lEFGHIJKLMNOP9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
3__inference_signature_wrapper_serving_default_35712�EFGHIJKLMNOPC�@
� 
9�6
4
inputs*�'
inputs�����������"3�0
.
output_0"�
output_0���������