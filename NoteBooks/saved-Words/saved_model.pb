Ίψ
»
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8ηκ

j
ConstConst*&
_output_shapes
:*
dtype0*%
valueB*?
l
Const_1Const*&
_output_shapes
:*
dtype0*%
valueB*Uk >
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
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0

Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/v/dense_3/kernel

)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes
:	*
dtype0

Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/m/dense_3/kernel

)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes
:	*
dtype0

Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_2/bias
x
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes	
:*
dtype0

Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_2/bias
x
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes	
:*
dtype0

Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
b*&
shared_nameAdam/v/dense_2/kernel

)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel* 
_output_shapes
:
b*
dtype0

Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
b*&
shared_nameAdam/m/dense_2/kernel

)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel* 
_output_shapes
:
b*
dtype0

Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_3/bias
y
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_3/bias
y
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/v/conv2d_3/kernel

*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*&
_output_shapes
: @*
dtype0

Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/m/conv2d_3/kernel

*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*&
_output_shapes
: @*
dtype0

Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
: *
dtype0

Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
: *
dtype0

Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_2/kernel

*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
: *
dtype0

Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_2/kernel

*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
b*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
b*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0	
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0

NoOpNoOp
ηT
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0* T
valueTBT BT
-
	model
__call__

signatures*
ΐ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	layer-5

layer-6
layer_with_weights-3
layer-7
layer-8
layer_with_weights-4
layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer*

trace_0
trace_1* 
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Ύ
	keras_api

_keep_axis
 _reduce_axis
!_reduce_axis_mask
"_broadcast_shape
#mean
#
adapt_mean
$variance
$adapt_variance
	%count
&_adapt_function*
Θ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op*
Θ
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op*

9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
₯
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
E_random_generator* 

F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses* 
¦
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias*
₯
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator* 
¦
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias*
R
#0
$1
%2
-3
.4
65
76
R7
S8
a9
b10*
<
-0
.1
62
73
R4
S5
a6
b7*
* 
°
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
htrace_0
itrace_1
jtrace_2
ktrace_3* 
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
 
p	capture_0
q	capture_1* 

r
_variables
s_iterations
t_learning_rate
u_index_dict
v
_momentums
w_velocities
x_update_step_xla*
 
p	capture_0
q	capture_1* 
 
p	capture_0
q	capture_1* 
* 
* 
* 

ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

~trace_0* 

trace_0* 
* 
* 
* 
* 
* 
XR
VARIABLE_VALUEmean:model/layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEvariance>model/layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEcount_2;model/layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE*

trace_0* 

-0
.1*

-0
.1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

trace_0* 

trace_0* 
e_
VARIABLE_VALUEconv2d_2/kernel<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEconv2d_2/bias:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

60
71*

60
71*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

trace_0* 

trace_0* 
e_
VARIABLE_VALUEconv2d_3/kernel<model/layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEconv2d_3/bias:model/layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 
* 
* 
* 

non_trainable_variables
 layers
‘metrics
 ’layer_regularization_losses
£layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses* 

€trace_0* 

₯trace_0* 

R0
S1*

R0
S1*
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ͺlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

«trace_0* 

¬trace_0* 
d^
VARIABLE_VALUEdense_2/kernel<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_2/bias:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

­non_trainable_variables
?layers
―metrics
 °layer_regularization_losses
±layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

²trace_0
³trace_1* 

΄trace_0
΅trace_1* 
* 

a0
b1*

a0
b1*
* 

Άnon_trainable_variables
·layers
Έmetrics
 Ήlayer_regularization_losses
Ίlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

»trace_0* 

Όtrace_0* 
d^
VARIABLE_VALUEdense_3/kernel<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_3/bias:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1
%2*
J
0
1
2
3
4
	5

6
7
8
9*

½0
Ύ1*
* 
* 
 
p	capture_0
q	capture_1* 
 
p	capture_0
q	capture_1* 
 
p	capture_0
q	capture_1* 
 
p	capture_0
q	capture_1* 
 
p	capture_0
q	capture_1* 
 
p	capture_0
q	capture_1* 
 
p	capture_0
q	capture_1* 
 
p	capture_0
q	capture_1* 
* 
* 

s0
Ώ1
ΐ2
Α3
Β4
Γ5
Δ6
Ε7
Ζ8
Η9
Θ10
Ι11
Κ12
Λ13
Μ14
Ν15
Ξ16*
YS
VARIABLE_VALUE	iteration6model/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUElearning_rate9model/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
Ώ0
Α1
Γ2
Ε3
Η4
Ι5
Λ6
Ν7*
D
ΐ0
Β1
Δ2
Ζ3
Θ4
Κ5
Μ6
Ξ7*
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
<
Ο	variables
Π	keras_api

Ρtotal

?count*
M
Σ	variables
Τ	keras_api

Υtotal

Φcount
Χ
_fn_kwargs*
ga
VARIABLE_VALUEAdam/m/conv2d_2/kernel7model/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/conv2d_2/kernel7model/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/conv2d_2/bias7model/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/conv2d_2/bias7model/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/conv2d_3/kernel7model/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/conv2d_3/kernel7model/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/conv2d_3/bias7model/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/conv2d_3/bias7model/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/dense_2/kernel7model/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_2/kernel8model/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dense_2/bias8model/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dense_2/bias8model/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/dense_3/kernel8model/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_3/kernel8model/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dense_3/bias8model/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dense_3/bias8model/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*

Ρ0
?1*

Ο	variables*
[U
VARIABLE_VALUEtotal_1:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcount_1:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Υ0
Φ1*

Σ	variables*
YS
VARIABLE_VALUEtotal:model/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEcount:model/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCallStatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount_2/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp*Adam/m/conv2d_2/kernel/Read/ReadVariableOp*Adam/v/conv2d_2/kernel/Read/ReadVariableOp(Adam/m/conv2d_2/bias/Read/ReadVariableOp(Adam/v/conv2d_2/bias/Read/ReadVariableOp*Adam/m/conv2d_3/kernel/Read/ReadVariableOp*Adam/v/conv2d_3/kernel/Read/ReadVariableOp(Adam/m/conv2d_3/bias/Read/ReadVariableOp(Adam/v/conv2d_3/bias/Read/ReadVariableOp)Adam/m/dense_2/kernel/Read/ReadVariableOp)Adam/v/dense_2/kernel/Read/ReadVariableOp'Adam/m/dense_2/bias/Read/ReadVariableOp'Adam/v/dense_2/bias/Read/ReadVariableOp)Adam/m/dense_3/kernel/Read/ReadVariableOp)Adam/v/dense_3/kernel/Read/ReadVariableOp'Adam/m/dense_3/bias/Read/ReadVariableOp'Adam/v/dense_3/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst_2*.
Tin'
%2#		*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_19371
ν
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemeanvariancecount_2conv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcount*-
Tin&
$2"*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_19480ιΒ	
‘
E
)__inference_dropout_3_layer_call_fn_19208

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_18560a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
εB

G__inference_sequential_1_layer_call_and_return_conditional_losses_19084

inputs
normalization_1_sub_y
normalization_1_sqrt_xA
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource: @6
(conv2d_3_biasadd_readvariableop_resource:@:
&dense_2_matmul_readvariableop_resource:
b6
'dense_2_biasadd_readvariableop_resource:	9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identity’conv2d_2/BiasAdd/ReadVariableOp’conv2d_2/Conv2D/ReadVariableOp’conv2d_3/BiasAdd/ReadVariableOp’conv2d_3/Conv2D/ReadVariableOp’dense_2/BiasAdd/ReadVariableOp’dense_2/MatMul/ReadVariableOp’dense_3/BiasAdd/ReadVariableOp’dense_3/MatMul/ReadVariableOpg
resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        ―
 resizing_1/resize/ResizeBilinearResizeBilinearinputsresizing_1/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(
normalization_1/subSub1resizing_1/resize/ResizeBilinear:resized_images:0normalization_1_sub_y*
T0*/
_output_shapes
:?????????  e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*/
_output_shapes
:?????????  
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Α
conv2d_2/Conv2DConv2Dnormalization_1/truediv:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Α
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@¬
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ͺͺ?
dropout_2/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@g
dropout_2/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:΄
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype0*

seed*e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Μ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Γ
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*/
_output_shapes
:?????????@`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  
flatten_1/ReshapeReshape#dropout_2/dropout/SelectV2:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:?????????b
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
b*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????a
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:?????????\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_3/dropout/MulMuldense_2/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:?????????a
dropout_3/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:Ί
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0*

seed**
seed2e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ε
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ό
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*(
_output_shapes
:?????????
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMul#dropout_3/dropout/SelectV2:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????Ξ
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
½
E
)__inference_dropout_2_layer_call_fn_19150

inputs
identity·
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_18528h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
₯

φ
B__inference_dense_2_layer_call_and_return_conditional_losses_18549

inputs2
matmul_readvariableop_resource:
b.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
b*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????b
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19145

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
θ

(__inference_conv2d_3_layer_call_fn_19124

inputs!
unknown: @
	unknown_0:@
identity’StatefulPartitionedCallΰ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18516w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
μ€
Ή
__inference___call___18408
x&
"sequential_1_normalization_1_sub_y'
#sequential_1_normalization_1_sqrt_xN
4sequential_1_conv2d_2_conv2d_readvariableop_resource: C
5sequential_1_conv2d_2_biasadd_readvariableop_resource: N
4sequential_1_conv2d_3_conv2d_readvariableop_resource: @C
5sequential_1_conv2d_3_biasadd_readvariableop_resource:@G
3sequential_1_dense_2_matmul_readvariableop_resource:
bC
4sequential_1_dense_2_biasadd_readvariableop_resource:	F
3sequential_1_dense_3_matmul_readvariableop_resource:	B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identity’,sequential_1/conv2d_2/BiasAdd/ReadVariableOp’+sequential_1/conv2d_2/Conv2D/ReadVariableOp’,sequential_1/conv2d_3/BiasAdd/ReadVariableOp’+sequential_1/conv2d_3/Conv2D/ReadVariableOp’+sequential_1/dense_2/BiasAdd/ReadVariableOp’*sequential_1/dense_2/MatMul/ReadVariableOp’+sequential_1/dense_3/BiasAdd/ReadVariableOp’*sequential_1/dense_3/MatMul/ReadVariableOpT
stft/frame_lengthConst*
_output_shapes
: *
dtype0*
value
B :?R
stft/frame_stepConst*
_output_shapes
: *
dtype0*
value
B :M

stft/ConstConst*
_output_shapes
: *
dtype0*
value
B :Z
stft/frame/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????A
stft/frame/ShapeShapex*
T0*
_output_shapes
:Q
stft/frame/RankConst*
_output_shapes
: *
dtype0*
value	B :X
stft/frame/range/startConst*
_output_shapes
: *
dtype0*
value	B : X
stft/frame/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/rangeRangestft/frame/range/start:output:0stft/frame/Rank:output:0stft/frame/range/delta:output:0*
_output_shapes
:q
stft/frame/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????j
 stft/frame/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 stft/frame/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
stft/frame/strided_sliceStridedSlicestft/frame/range:output:0'stft/frame/strided_slice/stack:output:0)stft/frame/strided_slice/stack_1:output:0)stft/frame/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
stft/frame/sub/yConst*
_output_shapes
: *
dtype0*
value	B :k
stft/frame/subSubstft/frame/Rank:output:0stft/frame/sub/y:output:0*
T0*
_output_shapes
: o
stft/frame/sub_1Substft/frame/sub:z:0!stft/frame/strided_slice:output:0*
T0*
_output_shapes
: U
stft/frame/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
stft/frame/packedPack!stft/frame/strided_slice:output:0stft/frame/packed/1:output:0stft/frame/sub_1:z:0*
N*
T0*
_output_shapes
:\
stft/frame/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Β
stft/frame/splitSplitVstft/frame/Shape:output:0stft/frame/packed:output:0#stft/frame/split/split_dim:output:0*
T0*

Tlen0*$
_output_shapes
::: *
	num_split[
stft/frame/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB ]
stft/frame/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB ~
stft/frame/ReshapeReshapestft/frame/split:output:1#stft/frame/Reshape/shape_1:output:0*
T0*
_output_shapes
: Q
stft/frame/SizeConst*
_output_shapes
: *
dtype0*
value	B :S
stft/frame/Size_1Const*
_output_shapes
: *
dtype0*
value	B : R
stft/frame/ConstConst*
_output_shapes
: *
dtype0*
value	B : q
stft/frame/sub_2Substft/frame/Reshape:output:0stft/frame_length:output:0*
T0*
_output_shapes
: p
stft/frame/floordivFloorDivstft/frame/sub_2:z:0stft/frame_step:output:0*
T0*
_output_shapes
: R
stft/frame/add/xConst*
_output_shapes
: *
dtype0*
value	B :l
stft/frame/addAddV2stft/frame/add/x:output:0stft/frame/floordiv:z:0*
T0*
_output_shapes
: m
stft/frame/MaximumMaximumstft/frame/Const:output:0stft/frame/add:z:0*
T0*
_output_shapes
: V
stft/frame/gcd/ConstConst*
_output_shapes
: *
dtype0*
value	B :Y
stft/frame/floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/floordiv_1FloorDivstft/frame_length:output:0 stft/frame/floordiv_1/y:output:0*
T0*
_output_shapes
: Y
stft/frame/floordiv_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
stft/frame/floordiv_2FloorDivstft/frame_step:output:0 stft/frame/floordiv_2/y:output:0*
T0*
_output_shapes
: Y
stft/frame/floordiv_3/yConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/floordiv_3FloorDivstft/frame/Reshape:output:0 stft/frame/floordiv_3/y:output:0*
T0*
_output_shapes
: R
stft/frame/mul/yConst*
_output_shapes
: *
dtype0*
value	B :l
stft/frame/mulMulstft/frame/floordiv_3:z:0stft/frame/mul/y:output:0*
T0*
_output_shapes
: d
stft/frame/concat/values_1Packstft/frame/mul:z:0*
N*
T0*
_output_shapes
:X
stft/frame/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Η
stft/frame/concatConcatV2stft/frame/split:output:0#stft/frame/concat/values_1:output:0stft/frame/split:output:2stft/frame/concat/axis:output:0*
N*
T0*
_output_shapes
:`
stft/frame/concat_1/values_1/1Const*
_output_shapes
: *
dtype0*
value	B :
stft/frame/concat_1/values_1Packstft/frame/floordiv_3:z:0'stft/frame/concat_1/values_1/1:output:0*
N*
T0*
_output_shapes
:Z
stft/frame/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ν
stft/frame/concat_1ConcatV2stft/frame/split:output:0%stft/frame/concat_1/values_1:output:0stft/frame/split:output:2!stft/frame/concat_1/axis:output:0*
N*
T0*
_output_shapes
:_
stft/frame/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: t
*stft/frame/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:\
stft/frame/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/ones_likeFill3stft/frame/ones_like/Shape/shape_as_tensor:output:0#stft/frame/ones_like/Const:output:0*
T0*
_output_shapes
:Ν
stft/frame/StridedSliceStridedSlicexstft/frame/zeros_like:output:0stft/frame/concat:output:0stft/frame/ones_like:output:0*
Index0*
T0*0
_output_shapes
:??????????????????
stft/frame/Reshape_1Reshape stft/frame/StridedSlice:output:0stft/frame/concat_1:output:0*
T0*4
_output_shapes"
 :??????????????????Z
stft/frame/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : Z
stft/frame/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/range_1Range!stft/frame/range_1/start:output:0stft/frame/Maximum:z:0!stft/frame/range_1/delta:output:0*#
_output_shapes
:?????????}
stft/frame/mul_1Mulstft/frame/range_1:output:0stft/frame/floordiv_2:z:0*
T0*#
_output_shapes
:?????????^
stft/frame/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stft/frame/Reshape_2/shapePackstft/frame/Maximum:z:0%stft/frame/Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:
stft/frame/Reshape_2Reshapestft/frame/mul_1:z:0#stft/frame/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????Z
stft/frame/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : Z
stft/frame/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/range_2Range!stft/frame/range_2/start:output:0stft/frame/floordiv_1:z:0!stft/frame/range_2/delta:output:0*
_output_shapes	
:?^
stft/frame/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
value	B :
stft/frame/Reshape_3/shapePack%stft/frame/Reshape_3/shape/0:output:0stft/frame/floordiv_1:z:0*
N*
T0*
_output_shapes
:
stft/frame/Reshape_3Reshapestft/frame/range_2:output:0#stft/frame/Reshape_3/shape:output:0*
T0*
_output_shapes
:	?
stft/frame/add_1AddV2stft/frame/Reshape_2:output:0stft/frame/Reshape_3:output:0*
T0*(
_output_shapes
:??????????}
stft/frame/packed_1Packstft/frame/Maximum:z:0stft/frame_length:output:0*
N*
T0*
_output_shapes
:ή
stft/frame/GatherV2GatherV2stft/frame/Reshape_1:output:0stft/frame/add_1:z:0!stft/frame/strided_slice:output:0*
Taxis0*
Tindices0*
Tparams0*9
_output_shapes'
%:#???????????????????Z
stft/frame/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Δ
stft/frame/concat_2ConcatV2stft/frame/split:output:0stft/frame/packed_1:output:0stft/frame/split:output:2!stft/frame/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
stft/frame/Reshape_4Reshapestft/frame/GatherV2:output:0stft/frame/concat_2:output:0*
T0*,
_output_shapes
:?????????|?[
stft/hann_window/periodicConst*
_output_shapes
: *
dtype0
*
value	B
 Zq
stft/hann_window/CastCast"stft/hann_window/periodic:output:0*

DstT0*

SrcT0
*
_output_shapes
: ]
stft/hann_window/FloorMod/yConst*
_output_shapes
: *
dtype0*
value	B :
stft/hann_window/FloorModFloorModstft/frame_length:output:0$stft/hann_window/FloorMod/y:output:0*
T0*
_output_shapes
: X
stft/hann_window/sub/xConst*
_output_shapes
: *
dtype0*
value	B :|
stft/hann_window/subSubstft/hann_window/sub/x:output:0stft/hann_window/FloorMod:z:0*
T0*
_output_shapes
: q
stft/hann_window/mulMulstft/hann_window/Cast:y:0stft/hann_window/sub:z:0*
T0*
_output_shapes
: t
stft/hann_window/addAddV2stft/frame_length:output:0stft/hann_window/mul:z:0*
T0*
_output_shapes
: Z
stft/hann_window/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
stft/hann_window/sub_1Substft/hann_window/add:z:0!stft/hann_window/sub_1/y:output:0*
T0*
_output_shapes
: k
stft/hann_window/Cast_1Caststft/hann_window/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: ^
stft/hann_window/range/startConst*
_output_shapes
: *
dtype0*
value	B : ^
stft/hann_window/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :¦
stft/hann_window/rangeRange%stft/hann_window/range/start:output:0stft/frame_length:output:0%stft/hann_window/range/delta:output:0*
_output_shapes	
:?u
stft/hann_window/Cast_2Caststft/hann_window/range:output:0*

DstT0*

SrcT0*
_output_shapes	
:?[
stft/hann_window/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ΫΙ@
stft/hann_window/mul_1Mulstft/hann_window/Const:output:0stft/hann_window/Cast_2:y:0*
T0*
_output_shapes	
:?
stft/hann_window/truedivRealDivstft/hann_window/mul_1:z:0stft/hann_window/Cast_1:y:0*
T0*
_output_shapes	
:?_
stft/hann_window/CosCosstft/hann_window/truediv:z:0*
T0*
_output_shapes	
:?]
stft/hann_window/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
stft/hann_window/mul_2Mul!stft/hann_window/mul_2/x:output:0stft/hann_window/Cos:y:0*
T0*
_output_shapes	
:?]
stft/hann_window/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
stft/hann_window/sub_2Sub!stft/hann_window/sub_2/x:output:0stft/hann_window/mul_2:z:0*
T0*
_output_shapes	
:?
stft/mulMulstft/frame/Reshape_4:output:0stft/hann_window/sub_2:z:0*
T0*,
_output_shapes
:?????????|?[
stft/rfft/packedPackstft/Const:output:0*
N*
T0*
_output_shapes
:
stft/rfft/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       z
stft/rfft/PadPadstft/mul:z:0stft/rfft/Pad/paddings:output:0*
T0*,
_output_shapes
:?????????|_
stft/rfft/fft_lengthConst*
_output_shapes
:*
dtype0*
valueB:v
	stft/rfftRFFTstft/rfft/Pad:output:0stft/rfft/fft_length:output:0*,
_output_shapes
:?????????|S
Abs
ComplexAbsstft/rfft:output:0*,
_output_shapes
:?????????|d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      φ
strided_sliceStridedSliceAbs:y:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*0
_output_shapes
:?????????|*
ellipsis_mask*
new_axis_maskt
#sequential_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        Ω
-sequential_1/resizing_1/resize/ResizeBilinearResizeBilinearstrided_slice:output:0,sequential_1/resizing_1/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(Ε
 sequential_1/normalization_1/subSub>sequential_1/resizing_1/resize/ResizeBilinear:resized_images:0"sequential_1_normalization_1_sub_y*
T0*/
_output_shapes
:?????????  
!sequential_1/normalization_1/SqrtSqrt#sequential_1_normalization_1_sqrt_x*
T0*&
_output_shapes
:k
&sequential_1/normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3Έ
$sequential_1/normalization_1/MaximumMaximum%sequential_1/normalization_1/Sqrt:y:0/sequential_1/normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:Ή
$sequential_1/normalization_1/truedivRealDiv$sequential_1/normalization_1/sub:z:0(sequential_1/normalization_1/Maximum:z:0*
T0*/
_output_shapes
:?????????  ¨
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0θ
sequential_1/conv2d_2/Conv2DConv2D(sequential_1/normalization_1/truediv:z:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides

,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ώ
sequential_1/conv2d_2/BiasAddBiasAdd%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 
sequential_1/conv2d_2/ReluRelu&sequential_1/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ¨
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0θ
sequential_1/conv2d_3/Conv2DConv2D(sequential_1/conv2d_2/Relu:activations:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ώ
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@Ζ
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

sequential_1/dropout_2/IdentityIdentity-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:?????????@m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  ­
sequential_1/flatten_1/ReshapeReshape(sequential_1/dropout_2/Identity:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:?????????b 
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
b*
dtype0΅
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ά
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????{
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
sequential_1/dropout_3/IdentityIdentity'sequential_1/dense_2/Relu:activations:0*
T0*(
_output_shapes
:?????????
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0΅
sequential_1/dense_3/MatMulMatMul(sequential_1/dropout_3/Identity:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0΅
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????
ArgMaxArgMax%sequential_1/dense_3/BiasAdd:output:0ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????
GatherV2/paramsConst*
_output_shapes
:*
dtype0*=
value4B2BdownBgoBleftBnoBrightBstopBupByesO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
GatherV2GatherV2GatherV2/params:output:0ArgMax:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:?????????t
IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????Ά
NoOpNoOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:?????????}::: : : : : : : : 2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:K G
(
_output_shapes
:?????????}

_user_specified_namex:,(
&
_output_shapes
::,(
&
_output_shapes
:
E
£
__inference__traced_save_19371
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop&
"savev2_count_2_read_readvariableop	.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop5
1savev2_adam_m_conv2d_2_kernel_read_readvariableop5
1savev2_adam_v_conv2d_2_kernel_read_readvariableop3
/savev2_adam_m_conv2d_2_bias_read_readvariableop3
/savev2_adam_v_conv2d_2_bias_read_readvariableop5
1savev2_adam_m_conv2d_3_kernel_read_readvariableop5
1savev2_adam_v_conv2d_3_kernel_read_readvariableop3
/savev2_adam_m_conv2d_3_bias_read_readvariableop3
/savev2_adam_v_conv2d_3_bias_read_readvariableop4
0savev2_adam_m_dense_2_kernel_read_readvariableop4
0savev2_adam_v_dense_2_kernel_read_readvariableop2
.savev2_adam_m_dense_2_bias_read_readvariableop2
.savev2_adam_v_dense_2_bias_read_readvariableop4
0savev2_adam_m_dense_3_kernel_read_readvariableop4
0savev2_adam_v_dense_3_kernel_read_readvariableop2
.savev2_adam_m_dense_3_bias_read_readvariableop2
.savev2_adam_v_dense_3_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const_2

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
: ₯
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ξ
valueΔBΑ"B:model/layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB>model/layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB;model/layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6model/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB9model/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop"savev2_count_2_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop1savev2_adam_m_conv2d_2_kernel_read_readvariableop1savev2_adam_v_conv2d_2_kernel_read_readvariableop/savev2_adam_m_conv2d_2_bias_read_readvariableop/savev2_adam_v_conv2d_2_bias_read_readvariableop1savev2_adam_m_conv2d_3_kernel_read_readvariableop1savev2_adam_v_conv2d_3_kernel_read_readvariableop/savev2_adam_m_conv2d_3_bias_read_readvariableop/savev2_adam_v_conv2d_3_bias_read_readvariableop0savev2_adam_m_dense_2_kernel_read_readvariableop0savev2_adam_v_dense_2_kernel_read_readvariableop.savev2_adam_m_dense_2_bias_read_readvariableop.savev2_adam_v_dense_2_bias_read_readvariableop0savev2_adam_m_dense_3_kernel_read_readvariableop0savev2_adam_v_dense_3_kernel_read_readvariableop.savev2_adam_m_dense_3_bias_read_readvariableop.savev2_adam_v_dense_3_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *0
dtypes&
$2"		
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:³
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*―
_input_shapes
: ::: : : : @:@:
b::	:: : : : : : : @: @:@:@:
b:
b:::	:	::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:&"
 
_output_shapes
:
b:!	

_output_shapes	
::%
!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @:,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@:&"
 
_output_shapes
:
b:&"
 
_output_shapes
:
b:!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	:%!

_output_shapes
:	: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: 
Ζ
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_19183

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????bY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
―
E
)__inference_flatten_1_layer_call_fn_19177

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_18536a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
χ
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_18528

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
Ϋ
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_18560

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
 
ν
,__inference_sequential_1_layer_call_fn_18955

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
b
	unknown_6:	
	unknown_7:	
	unknown_8:
identity’StatefulPartitionedCallΒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_18579o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
©
a
E__inference_resizing_1_layer_call_and_return_conditional_losses_19095

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(v
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????|:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs
.

G__inference_sequential_1_layer_call_and_return_conditional_losses_18883
input_2
normalization_1_sub_y
normalization_1_sqrt_x(
conv2d_2_18858: 
conv2d_2_18860: (
conv2d_3_18863: @
conv2d_3_18865:@!
dense_2_18871:
b
dense_2_18873:	 
dense_3_18877:	
dense_3_18879:
identity’ conv2d_2/StatefulPartitionedCall’ conv2d_3/StatefulPartitionedCall’dense_2/StatefulPartitionedCall’dense_3/StatefulPartitionedCall’!dropout_2/StatefulPartitionedCall’!dropout_3/StatefulPartitionedCallΔ
resizing_1/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_18479
normalization_1/subSub#resizing_1/PartitionedCall:output:0normalization_1_sub_y*
T0*/
_output_shapes
:?????????  e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*/
_output_shapes
:?????????  
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0conv2d_2_18858conv2d_2_18860*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18499
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_18863conv2d_3_18865*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18516π
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18463σ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_18671ή
flatten_1/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_18536
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_18871dense_2_18873*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18549
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_18632
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_18877dense_3_18879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_18572w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:Y U
0
_output_shapes
:?????????|
!
_user_specified_name	input_2:,(
&
_output_shapes
::,(
&
_output_shapes
:
©
a
E__inference_resizing_1_layer_call_and_return_conditional_losses_18479

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(v
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????|:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs
Ι	
τ
B__inference_dense_3_layer_call_and_return_conditional_losses_19249

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ά
K
/__inference_max_pooling2d_1_layer_call_fn_19140

inputs
identityΨ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18463
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18463

inputs
identity’
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
ν2

G__inference_sequential_1_layer_call_and_return_conditional_losses_19025

inputs
normalization_1_sub_y
normalization_1_sqrt_xA
'conv2d_2_conv2d_readvariableop_resource: 6
(conv2d_2_biasadd_readvariableop_resource: A
'conv2d_3_conv2d_readvariableop_resource: @6
(conv2d_3_biasadd_readvariableop_resource:@:
&dense_2_matmul_readvariableop_resource:
b6
'dense_2_biasadd_readvariableop_resource:	9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identity’conv2d_2/BiasAdd/ReadVariableOp’conv2d_2/Conv2D/ReadVariableOp’conv2d_3/BiasAdd/ReadVariableOp’conv2d_3/Conv2D/ReadVariableOp’dense_2/BiasAdd/ReadVariableOp’dense_2/MatMul/ReadVariableOp’dense_3/BiasAdd/ReadVariableOp’dense_3/MatMul/ReadVariableOpg
resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        ―
 resizing_1/resize/ResizeBilinearResizeBilinearinputsresizing_1/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(
normalization_1/subSub1resizing_1/resize/ResizeBilinear:resized_images:0normalization_1_sub_y*
T0*/
_output_shapes
:?????????  e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*/
_output_shapes
:?????????  
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Α
conv2d_2/Conv2DConv2Dnormalization_1/truediv:z:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Α
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@¬
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
z
dropout_2/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:?????????@`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  
flatten_1/ReshapeReshapedropout_2/Identity:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:?????????b
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
b*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????a
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:?????????m
dropout_3/IdentityIdentitydense_2/Relu:activations:0*
T0*(
_output_shapes
:?????????
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMuldropout_3/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????g
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????Ξ
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:

ό
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18499

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
Φ
ο
!__inference__traced_restore_19480
file_prefix#
assignvariableop_mean:)
assignvariableop_1_variance:$
assignvariableop_2_count_2:	 <
"assignvariableop_3_conv2d_2_kernel: .
 assignvariableop_4_conv2d_2_bias: <
"assignvariableop_5_conv2d_3_kernel: @.
 assignvariableop_6_conv2d_3_bias:@5
!assignvariableop_7_dense_2_kernel:
b.
assignvariableop_8_dense_2_bias:	4
!assignvariableop_9_dense_3_kernel:	.
 assignvariableop_10_dense_3_bias:'
assignvariableop_11_iteration:	 +
!assignvariableop_12_learning_rate: D
*assignvariableop_13_adam_m_conv2d_2_kernel: D
*assignvariableop_14_adam_v_conv2d_2_kernel: 6
(assignvariableop_15_adam_m_conv2d_2_bias: 6
(assignvariableop_16_adam_v_conv2d_2_bias: D
*assignvariableop_17_adam_m_conv2d_3_kernel: @D
*assignvariableop_18_adam_v_conv2d_3_kernel: @6
(assignvariableop_19_adam_m_conv2d_3_bias:@6
(assignvariableop_20_adam_v_conv2d_3_bias:@=
)assignvariableop_21_adam_m_dense_2_kernel:
b=
)assignvariableop_22_adam_v_dense_2_kernel:
b6
'assignvariableop_23_adam_m_dense_2_bias:	6
'assignvariableop_24_adam_v_dense_2_bias:	<
)assignvariableop_25_adam_m_dense_3_kernel:	<
)assignvariableop_26_adam_v_dense_3_kernel:	5
'assignvariableop_27_adam_m_dense_3_bias:5
'assignvariableop_28_adam_v_dense_3_bias:%
assignvariableop_29_total_1: %
assignvariableop_30_count_1: #
assignvariableop_31_total: #
assignvariableop_32_count: 
identity_34’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9¨
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ξ
valueΔBΑ"B:model/layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB>model/layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB;model/layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB<model/layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB:model/layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6model/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB9model/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB:model/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH΄
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Λ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:±
AssignVariableOp_2AssignVariableOpassignvariableop_2_count_2Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ή
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_2_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv2d_2_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ή
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_3_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv2d_3_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Έ
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_2_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ά
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_2_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Έ
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_3_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ή
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_3_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:Ά
AssignVariableOp_11AssignVariableOpassignvariableop_11_iterationIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ί
AssignVariableOp_12AssignVariableOp!assignvariableop_12_learning_rateIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Γ
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_m_conv2d_2_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Γ
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_v_conv2d_2_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_m_conv2d_2_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_v_conv2d_2_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Γ
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_m_conv2d_3_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Γ
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_v_conv2d_3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_m_conv2d_3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Α
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_v_conv2d_3_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Β
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_m_dense_2_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Β
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_v_dense_2_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:ΐ
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_m_dense_2_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:ΐ
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_v_dense_2_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Β
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_m_dense_3_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Β
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_v_dense_3_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ΐ
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_m_dense_3_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ΐ
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_v_dense_3_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:΄
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:΄
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ₯
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
Ξ

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_18671

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ͺͺ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
£
ξ
,__inference_sequential_1_layer_call_fn_18811
input_2
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
b
	unknown_6:	
	unknown_7:	
	unknown_8:
identity’StatefulPartitionedCallΓ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_18763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:?????????|
!
_user_specified_name	input_2:,(
&
_output_shapes
::,(
&
_output_shapes
:

b
)__inference_dropout_2_layer_call_fn_19155

inputs
identity’StatefulPartitionedCallΗ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_18671w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
 
ν
,__inference_sequential_1_layer_call_fn_18980

inputs
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
b
	unknown_6:	
	unknown_7:	
	unknown_8:
identity’StatefulPartitionedCallΒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_18763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
₯

φ
B__inference_dense_2_layer_call_and_return_conditional_losses_19203

inputs2
matmul_readvariableop_resource:
b.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
b*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????b: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????b
 
_user_specified_nameinputs


c
D__inference_dropout_3_layer_call_and_return_conditional_losses_18632

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

ό
C__inference_conv2d_3_layer_call_and_return_conditional_losses_19135

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
+
·
G__inference_sequential_1_layer_call_and_return_conditional_losses_18579

inputs
normalization_1_sub_y
normalization_1_sqrt_x(
conv2d_2_18500: 
conv2d_2_18502: (
conv2d_3_18517: @
conv2d_3_18519:@!
dense_2_18550:
b
dense_2_18552:	 
dense_3_18573:	
dense_3_18575:
identity’ conv2d_2/StatefulPartitionedCall’ conv2d_3/StatefulPartitionedCall’dense_2/StatefulPartitionedCall’dense_3/StatefulPartitionedCallΓ
resizing_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_18479
normalization_1/subSub#resizing_1/PartitionedCall:output:0normalization_1_sub_y*
T0*/
_output_shapes
:?????????  e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*/
_output_shapes
:?????????  
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0conv2d_2_18500conv2d_2_18502*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18499
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_18517conv2d_3_18519*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18516π
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18463γ
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_18528Φ
flatten_1/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_18536
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_18550dense_2_18552*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18549ά
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_18560
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_18573dense_3_18575*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_18572w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Π
NoOpNoOp!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ξ

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_19172

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ͺͺ?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
: 
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
£
ξ
,__inference_sequential_1_layer_call_fn_18602
input_2
unknown
	unknown_0#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:
b
	unknown_6:	
	unknown_7:	
	unknown_8:
identity’StatefulPartitionedCallΓ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_18579o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:?????????|
!
_user_specified_name	input_2:,(
&
_output_shapes
::,(
&
_output_shapes
:
>
Ε
 __inference__wrapped_model_18454
input_2&
"sequential_1_normalization_1_sub_y'
#sequential_1_normalization_1_sqrt_xN
4sequential_1_conv2d_2_conv2d_readvariableop_resource: C
5sequential_1_conv2d_2_biasadd_readvariableop_resource: N
4sequential_1_conv2d_3_conv2d_readvariableop_resource: @C
5sequential_1_conv2d_3_biasadd_readvariableop_resource:@G
3sequential_1_dense_2_matmul_readvariableop_resource:
bC
4sequential_1_dense_2_biasadd_readvariableop_resource:	F
3sequential_1_dense_3_matmul_readvariableop_resource:	B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identity’,sequential_1/conv2d_2/BiasAdd/ReadVariableOp’+sequential_1/conv2d_2/Conv2D/ReadVariableOp’,sequential_1/conv2d_3/BiasAdd/ReadVariableOp’+sequential_1/conv2d_3/Conv2D/ReadVariableOp’+sequential_1/dense_2/BiasAdd/ReadVariableOp’*sequential_1/dense_2/MatMul/ReadVariableOp’+sequential_1/dense_3/BiasAdd/ReadVariableOp’*sequential_1/dense_3/MatMul/ReadVariableOpt
#sequential_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        Κ
-sequential_1/resizing_1/resize/ResizeBilinearResizeBilinearinput_2,sequential_1/resizing_1/resize/size:output:0*
T0*/
_output_shapes
:?????????  *
half_pixel_centers(Ε
 sequential_1/normalization_1/subSub>sequential_1/resizing_1/resize/ResizeBilinear:resized_images:0"sequential_1_normalization_1_sub_y*
T0*/
_output_shapes
:?????????  
!sequential_1/normalization_1/SqrtSqrt#sequential_1_normalization_1_sqrt_x*
T0*&
_output_shapes
:k
&sequential_1/normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3Έ
$sequential_1/normalization_1/MaximumMaximum%sequential_1/normalization_1/Sqrt:y:0/sequential_1/normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:Ή
$sequential_1/normalization_1/truedivRealDiv$sequential_1/normalization_1/sub:z:0(sequential_1/normalization_1/Maximum:z:0*
T0*/
_output_shapes
:?????????  ¨
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0θ
sequential_1/conv2d_2/Conv2DConv2D(sequential_1/normalization_1/truediv:z:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides

,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ώ
sequential_1/conv2d_2/BiasAddBiasAdd%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 
sequential_1/conv2d_2/ReluRelu&sequential_1/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ¨
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0θ
sequential_1/conv2d_3/Conv2DConv2D(sequential_1/conv2d_2/Relu:activations:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides

,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ώ
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@Ζ
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides

sequential_1/dropout_2/IdentityIdentity-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:?????????@m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  ­
sequential_1/flatten_1/ReshapeReshape(sequential_1/dropout_2/Identity:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:?????????b 
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
b*
dtype0΅
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ά
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????{
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
sequential_1/dropout_3/IdentityIdentity'sequential_1/dense_2/Relu:activations:0*
T0*(
_output_shapes
:?????????
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0΅
sequential_1/dense_3/MatMulMatMul(sequential_1/dropout_3/Identity:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0΅
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????t
IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????Ά
NoOpNoOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:Y U
0
_output_shapes
:?????????|
!
_user_specified_name	input_2:,(
&
_output_shapes
::,(
&
_output_shapes
:

ό
C__inference_conv2d_2_layer_call_and_return_conditional_losses_19115

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs

Ή
__inference___call___18250
x&
"sequential_1_normalization_1_sub_y'
#sequential_1_normalization_1_sqrt_xN
4sequential_1_conv2d_2_conv2d_readvariableop_resource: C
5sequential_1_conv2d_2_biasadd_readvariableop_resource: N
4sequential_1_conv2d_3_conv2d_readvariableop_resource: @C
5sequential_1_conv2d_3_biasadd_readvariableop_resource:@G
3sequential_1_dense_2_matmul_readvariableop_resource:
bC
4sequential_1_dense_2_biasadd_readvariableop_resource:	F
3sequential_1_dense_3_matmul_readvariableop_resource:	B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identity’,sequential_1/conv2d_2/BiasAdd/ReadVariableOp’+sequential_1/conv2d_2/Conv2D/ReadVariableOp’,sequential_1/conv2d_3/BiasAdd/ReadVariableOp’+sequential_1/conv2d_3/Conv2D/ReadVariableOp’+sequential_1/dense_2/BiasAdd/ReadVariableOp’*sequential_1/dense_2/MatMul/ReadVariableOp’+sequential_1/dense_3/BiasAdd/ReadVariableOp’*sequential_1/dense_3/MatMul/ReadVariableOp/
ReadFileReadFilex*
_output_shapes
: ~
	DecodeWav	DecodeWavReadFile:contents:0*!
_output_shapes
:	}: *
desired_channels*
desired_samples}k
SqueezeSqueezeDecodeWav:audio:0*
T0*
_output_shapes	
:}*
squeeze_dims

?????????d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ϋ
strided_sliceStridedSliceSqueeze:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	}*

begin_mask*
end_mask*
new_axis_maskT
stft/frame_lengthConst*
_output_shapes
: *
dtype0*
value
B :?R
stft/frame_stepConst*
_output_shapes
: *
dtype0*
value
B :M

stft/ConstConst*
_output_shapes
: *
dtype0*
value
B :Z
stft/frame/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????a
stft/frame/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   >  _
stft/frame/Size/ConstConst*
_output_shapes
:*
dtype0*
valueB:Q
stft/frame/SizeConst*
_output_shapes
: *
dtype0*
value	B :Z
stft/frame/Size_1/ConstConst*
_output_shapes
: *
dtype0*
valueB S
stft/frame/Size_1Const*
_output_shapes
: *
dtype0*
value	B : R
stft/frame/ConstConst*
_output_shapes
: *
dtype0*
value	B : S
stft/frame/sub/xConst*
_output_shapes
: *
dtype0*
value
B :}m
stft/frame/subSubstft/frame/sub/x:output:0stft/frame_length:output:0*
T0*
_output_shapes
: n
stft/frame/floordivFloorDivstft/frame/sub:z:0stft/frame_step:output:0*
T0*
_output_shapes
: R
stft/frame/add/xConst*
_output_shapes
: *
dtype0*
value	B :l
stft/frame/addAddV2stft/frame/add/x:output:0stft/frame/floordiv:z:0*
T0*
_output_shapes
: m
stft/frame/MaximumMaximumstft/frame/Const:output:0stft/frame/add:z:0*
T0*
_output_shapes
: V
stft/frame/gcd/ConstConst*
_output_shapes
: *
dtype0*
value	B :Y
stft/frame/floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/floordiv_1FloorDivstft/frame_length:output:0 stft/frame/floordiv_1/y:output:0*
T0*
_output_shapes
: Y
stft/frame/floordiv_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
stft/frame/floordiv_2FloorDivstft/frame_step:output:0 stft/frame/floordiv_2/y:output:0*
T0*
_output_shapes
: d
stft/frame/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:e
stft/frame/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:}]
stft/frame/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB X
stft/frame/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ϋ
stft/frame/concatConcatV2#stft/frame/concat/values_0:output:0#stft/frame/concat/values_1:output:0#stft/frame/concat/values_2:output:0stft/frame/concat/axis:output:0*
N*
T0*
_output_shapes
:f
stft/frame/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:m
stft/frame/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB">     _
stft/frame/concat_1/values_2Const*
_output_shapes
: *
dtype0*
valueB Z
stft/frame/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ε
stft/frame/concat_1ConcatV2%stft/frame/concat_1/values_0:output:0%stft/frame/concat_1/values_1:output:0%stft/frame/concat_1/values_2:output:0!stft/frame/concat_1/axis:output:0*
N*
T0*
_output_shapes
:m
stft/frame/zeros_like/tensorConst*
_output_shapes
:*
dtype0*
valueB"   >  _
stft/frame/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: t
*stft/frame/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:\
stft/frame/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/ones_likeFill3stft/frame/ones_like/Shape/shape_as_tensor:output:0#stft/frame/ones_like/Const:output:0*
T0*
_output_shapes
:Ρ
stft/frame/StridedSliceStridedSlicestrided_slice:output:0stft/frame/zeros_like:output:0stft/frame/concat:output:0stft/frame/ones_like:output:0*
Index0*
T0*
_output_shapes
:	}
stft/frame/ReshapeReshape stft/frame/StridedSlice:output:0stft/frame/concat_1:output:0*
T0*#
_output_shapes
:}X
stft/frame/range/startConst*
_output_shapes
: *
dtype0*
value	B : X
stft/frame/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/rangeRangestft/frame/range/start:output:0stft/frame/Maximum:z:0stft/frame/range/delta:output:0*
_output_shapes
:|p
stft/frame/mulMulstft/frame/range:output:0stft/frame/floordiv_2:z:0*
T0*
_output_shapes
:|^
stft/frame/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
stft/frame/Reshape_1/shapePackstft/frame/Maximum:z:0%stft/frame/Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:
stft/frame/Reshape_1Reshapestft/frame/mul:z:0#stft/frame/Reshape_1/shape:output:0*
T0*
_output_shapes

:|Z
stft/frame/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : Z
stft/frame/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :
stft/frame/range_1Range!stft/frame/range_1/start:output:0stft/frame/floordiv_1:z:0!stft/frame/range_1/delta:output:0*
_output_shapes	
:?^
stft/frame/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
value	B :
stft/frame/Reshape_2/shapePack%stft/frame/Reshape_2/shape/0:output:0stft/frame/floordiv_1:z:0*
N*
T0*
_output_shapes
:
stft/frame/Reshape_2Reshapestft/frame/range_1:output:0#stft/frame/Reshape_2/shape:output:0*
T0*
_output_shapes
:	?
stft/frame/add_1AddV2stft/frame/Reshape_1:output:0stft/frame/Reshape_2:output:0*
T0*
_output_shapes
:	|?\
stft/frame/Const_1Const*
_output_shapes
:*
dtype0*
valueB:U
stft/frame/Const_2Const*
_output_shapes
: *
dtype0*
valueB {
stft/frame/packedPackstft/frame/Maximum:z:0stft/frame_length:output:0*
N*
T0*
_output_shapes
:Z
stft/frame/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :Κ
stft/frame/GatherV2GatherV2stft/frame/Reshape:output:0stft/frame/add_1:z:0!stft/frame/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:|?Z
stft/frame/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ζ
stft/frame/concat_2ConcatV2stft/frame/Const_1:output:0stft/frame/packed:output:0stft/frame/Const_2:output:0!stft/frame/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
stft/frame/Reshape_3Reshapestft/frame/GatherV2:output:0stft/frame/concat_2:output:0*
T0*#
_output_shapes
:|?[
stft/hann_window/periodicConst*
_output_shapes
: *
dtype0
*
value	B
 Zq
stft/hann_window/CastCast"stft/hann_window/periodic:output:0*

DstT0*

SrcT0
*
_output_shapes
: ]
stft/hann_window/FloorMod/yConst*
_output_shapes
: *
dtype0*
value	B :
stft/hann_window/FloorModFloorModstft/frame_length:output:0$stft/hann_window/FloorMod/y:output:0*
T0*
_output_shapes
: X
stft/hann_window/sub/xConst*
_output_shapes
: *
dtype0*
value	B :|
stft/hann_window/subSubstft/hann_window/sub/x:output:0stft/hann_window/FloorMod:z:0*
T0*
_output_shapes
: q
stft/hann_window/mulMulstft/hann_window/Cast:y:0stft/hann_window/sub:z:0*
T0*
_output_shapes
: t
stft/hann_window/addAddV2stft/frame_length:output:0stft/hann_window/mul:z:0*
T0*
_output_shapes
: Z
stft/hann_window/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
stft/hann_window/sub_1Substft/hann_window/add:z:0!stft/hann_window/sub_1/y:output:0*
T0*
_output_shapes
: k
stft/hann_window/Cast_1Caststft/hann_window/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: ^
stft/hann_window/range/startConst*
_output_shapes
: *
dtype0*
value	B : ^
stft/hann_window/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :¦
stft/hann_window/rangeRange%stft/hann_window/range/start:output:0stft/frame_length:output:0%stft/hann_window/range/delta:output:0*
_output_shapes	
:?u
stft/hann_window/Cast_2Caststft/hann_window/range:output:0*

DstT0*

SrcT0*
_output_shapes	
:?[
stft/hann_window/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ΫΙ@
stft/hann_window/mul_1Mulstft/hann_window/Const:output:0stft/hann_window/Cast_2:y:0*
T0*
_output_shapes	
:?
stft/hann_window/truedivRealDivstft/hann_window/mul_1:z:0stft/hann_window/Cast_1:y:0*
T0*
_output_shapes	
:?_
stft/hann_window/CosCosstft/hann_window/truediv:z:0*
T0*
_output_shapes	
:?]
stft/hann_window/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
stft/hann_window/mul_2Mul!stft/hann_window/mul_2/x:output:0stft/hann_window/Cos:y:0*
T0*
_output_shapes	
:?]
stft/hann_window/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
stft/hann_window/sub_2Sub!stft/hann_window/sub_2/x:output:0stft/hann_window/mul_2:z:0*
T0*
_output_shapes	
:?x
stft/mulMulstft/frame/Reshape_3:output:0stft/hann_window/sub_2:z:0*
T0*#
_output_shapes
:|?[
stft/rfft/packedPackstft/Const:output:0*
N*
T0*
_output_shapes
:
stft/rfft/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       q
stft/rfft/PadPadstft/mul:z:0stft/rfft/Pad/paddings:output:0*
T0*#
_output_shapes
:|_
stft/rfft/fft_lengthConst*
_output_shapes
:*
dtype0*
valueB:m
	stft/rfftRFFTstft/rfft/Pad:output:0stft/rfft/fft_length:output:0*#
_output_shapes
:|J
Abs
ComplexAbsstft/rfft:output:0*#
_output_shapes
:|f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      υ
strided_slice_1StridedSliceAbs:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:|*
ellipsis_mask*
new_axis_maskt
#sequential_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"        ?
-sequential_1/resizing_1/resize/ResizeBilinearResizeBilinearstrided_slice_1:output:0,sequential_1/resizing_1/resize/size:output:0*
T0*&
_output_shapes
:  *
half_pixel_centers(Ό
 sequential_1/normalization_1/subSub>sequential_1/resizing_1/resize/ResizeBilinear:resized_images:0"sequential_1_normalization_1_sub_y*
T0*&
_output_shapes
:  
!sequential_1/normalization_1/SqrtSqrt#sequential_1_normalization_1_sqrt_x*
T0*&
_output_shapes
:k
&sequential_1/normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3Έ
$sequential_1/normalization_1/MaximumMaximum%sequential_1/normalization_1/Sqrt:y:0/sequential_1/normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:°
$sequential_1/normalization_1/truedivRealDiv$sequential_1/normalization_1/sub:z:0(sequential_1/normalization_1/Maximum:z:0*
T0*&
_output_shapes
:  ¨
+sequential_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ί
sequential_1/conv2d_2/Conv2DConv2D(sequential_1/normalization_1/truediv:z:03sequential_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
: *
paddingVALID*
strides

,sequential_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ά
sequential_1/conv2d_2/BiasAddBiasAdd%sequential_1/conv2d_2/Conv2D:output:04sequential_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
: {
sequential_1/conv2d_2/ReluRelu&sequential_1/conv2d_2/BiasAdd:output:0*
T0*&
_output_shapes
: ¨
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ί
sequential_1/conv2d_3/Conv2DConv2D(sequential_1/conv2d_2/Relu:activations:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@*
paddingVALID*
strides

,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ά
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@{
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*&
_output_shapes
:@½
$sequential_1/max_pooling2d_1/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*&
_output_shapes
:@*
ksize
*
paddingVALID*
strides

sequential_1/dropout_2/IdentityIdentity-sequential_1/max_pooling2d_1/MaxPool:output:0*
T0*&
_output_shapes
:@m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  €
sequential_1/flatten_1/ReshapeReshape(sequential_1/dropout_2/Identity:output:0%sequential_1/flatten_1/Const:output:0*
T0*
_output_shapes
:	b 
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
b*
dtype0¬
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0­
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	r
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*
_output_shapes
:	~
sequential_1/dropout_3/IdentityIdentity'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:	
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¬
sequential_1/dense_3/MatMulMatMul(sequential_1/dropout_3/Identity:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????w
ArgMaxArgMax%sequential_1/dense_3/BiasAdd:output:0ArgMax/dimension:output:0*
T0*
_output_shapes
:
GatherV2/paramsConst*
_output_shapes
:*
dtype0*=
value4B2BdownBgoBleftBnoBrightBstopBupByesO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
GatherV2GatherV2GatherV2/params:output:0ArgMax:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*
_output_shapes
:k
IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:Ά
NoOpNoOp-^sequential_1/conv2d_2/BiasAdd/ReadVariableOp,^sequential_1/conv2d_2/Conv2D/ReadVariableOp-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6: ::: : : : : : : : 2\
,sequential_1/conv2d_2/BiasAdd/ReadVariableOp,sequential_1/conv2d_2/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_2/Conv2D/ReadVariableOp+sequential_1/conv2d_2/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:9 5

_output_shapes
: 

_user_specified_namex:,(
&
_output_shapes
::,(
&
_output_shapes
:
.
?
G__inference_sequential_1_layer_call_and_return_conditional_losses_18763

inputs
normalization_1_sub_y
normalization_1_sqrt_x(
conv2d_2_18738: 
conv2d_2_18740: (
conv2d_3_18743: @
conv2d_3_18745:@!
dense_2_18751:
b
dense_2_18753:	 
dense_3_18757:	
dense_3_18759:
identity’ conv2d_2/StatefulPartitionedCall’ conv2d_3/StatefulPartitionedCall’dense_2/StatefulPartitionedCall’dense_3/StatefulPartitionedCall’!dropout_2/StatefulPartitionedCall’!dropout_3/StatefulPartitionedCallΓ
resizing_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_18479
normalization_1/subSub#resizing_1/PartitionedCall:output:0normalization_1_sub_y*
T0*/
_output_shapes
:?????????  e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*/
_output_shapes
:?????????  
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0conv2d_2_18738conv2d_2_18740*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18499
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_18743conv2d_3_18745*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18516π
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18463σ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_18671ή
flatten_1/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_18536
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_18751dense_2_18753*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18549
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_18632
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_18757dense_3_18759*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_18572w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Α

'__inference_dense_3_layer_call_fn_19239

inputs
unknown:	
	unknown_0:
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_18572o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ζ
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_18536

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? 1  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:?????????bY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:?????????b"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs

ό
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18516

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity’BiasAdd/ReadVariableOp’Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
+
Έ
G__inference_sequential_1_layer_call_and_return_conditional_losses_18847
input_2
normalization_1_sub_y
normalization_1_sqrt_x(
conv2d_2_18822: 
conv2d_2_18824: (
conv2d_3_18827: @
conv2d_3_18829:@!
dense_2_18835:
b
dense_2_18837:	 
dense_3_18841:	
dense_3_18843:
identity’ conv2d_2/StatefulPartitionedCall’ conv2d_3/StatefulPartitionedCall’dense_2/StatefulPartitionedCall’dense_3/StatefulPartitionedCallΔ
resizing_1/PartitionedCallPartitionedCallinput_2*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_18479
normalization_1/subSub#resizing_1/PartitionedCall:output:0normalization_1_sub_y*
T0*/
_output_shapes
:?????????  e
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*&
_output_shapes
:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*/
_output_shapes
:?????????  
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0conv2d_2_18822conv2d_2_18824*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18499
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_18827conv2d_3_18829*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_18516π
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_18463γ
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_18528Φ
flatten_1/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????b* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_18536
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_18835dense_2_18837*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18549ά
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_18560
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_18841dense_3_18843*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_18572w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????Π
NoOpNoOp!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P:?????????|::: : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
0
_output_shapes
:?????????|
!
_user_specified_name	input_2:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ϋ
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_19218

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
σ
b
)__inference_dropout_3_layer_call_fn_19213

inputs
identity’StatefulPartitionedCallΐ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_18632p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ι	
τ
B__inference_dense_3_layer_call_and_return_conditional_losses_18572

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ώ'
Α
__inference_adapt_step_18930
iterator%
add_readvariableop_resource:	 %
readvariableop_resource:'
readvariableop_2_resource:’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_2’IteratorGetNext’ReadVariableOp’ReadVariableOp_1’ReadVariableOp_2’add/ReadVariableOpΓ
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*0
_output_shapes
:?????????|*/
output_shapes
:?????????|*
output_types
2s
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeanIteratorGetNext:components:0'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:¦
moments/SquaredDifferenceSquaredDifferenceIteratorGetNext:components:0moments/StopGradient:output:0*
T0*0
_output_shapes
:?????????|w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ¦
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 a
ShapeShapeIteratorGetNext:components:0*
T0*
_output_shapes
:*
out_type0	e
GatherV2/indicesConst*
_output_shapes
:*
dtype0*!
valueB"          O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: K
CastCastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_1Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: I
truedivRealDivCast:y:0
Cast_1:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0P
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
:X
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
:G
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
:d
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0V
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
:J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
:f
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
:*
dtype0V
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
:E
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
:V
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
:L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @N
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
:Z
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
:I
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
:I
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:₯
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0*
validate_shape(
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*
validate_shape(*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator
Ε

'__inference_dense_2_layer_call_fn_19192

inputs
unknown:
b
	unknown_0:	
identity’StatefulPartitionedCallΨ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_18549p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????b: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????b
 
_user_specified_nameinputs


c
D__inference_dropout_3_layer_call_and_return_conditional_losses_19230

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
χ
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_19160

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
θ

(__inference_conv2d_2_layer_call_fn_19104

inputs!
unknown: 
	unknown_0: 
identity’StatefulPartitionedCallΰ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_18499w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
Α
F
*__inference_resizing_1_layer_call_fn_19089

inputs
identityΈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_18479h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????|:X T
0
_output_shapes
:?????????|
 
_user_specified_nameinputs"
J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:ΰ
G
	model
__call__

signatures"
_generic_user_object
Ϊ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	layer-5

layer-6
layer_with_weights-3
layer-7
layer-8
layer_with_weights-4
layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer"
_tf_keras_sequential

trace_0
trace_12Ψ
__inference___call___18250
__inference___call___18408
²
FullArgSpec
args
jself
jx
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
 ztrace_0ztrace_1
"
signature_map
₯
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Σ
	keras_api

_keep_axis
 _reduce_axis
!_reduce_axis_mask
"_broadcast_shape
#mean
#
adapt_mean
$variance
$adapt_variance
	%count
&_adapt_function"
_tf_keras_layer
έ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op"
_tf_keras_layer
έ
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
₯
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
Ό
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses
E_random_generator"
_tf_keras_layer
₯
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layer
»
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias"
_tf_keras_layer
Ό
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator"
_tf_keras_layer
»
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias"
_tf_keras_layer
n
#0
$1
%2
-3
.4
65
76
R7
S8
a9
b10"
trackable_list_wrapper
X
-0
.1
62
73
R4
S5
a6
b7"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ε
htrace_0
itrace_1
jtrace_2
ktrace_32ϊ
,__inference_sequential_1_layer_call_fn_18602
,__inference_sequential_1_layer_call_fn_18955
,__inference_sequential_1_layer_call_fn_18980
,__inference_sequential_1_layer_call_fn_18811Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zhtrace_0zitrace_1zjtrace_2zktrace_3
Ρ
ltrace_0
mtrace_1
ntrace_2
otrace_32ζ
G__inference_sequential_1_layer_call_and_return_conditional_losses_19025
G__inference_sequential_1_layer_call_and_return_conditional_losses_19084
G__inference_sequential_1_layer_call_and_return_conditional_losses_18847
G__inference_sequential_1_layer_call_and_return_conditional_losses_18883Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zltrace_0zmtrace_1zntrace_2zotrace_3

p	capture_0
q	capture_1BΘ
 __inference__wrapped_model_18454input_2"
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
 zp	capture_0zq	capture_1

r
_variables
s_iterations
t_learning_rate
u_index_dict
v
_momentums
w_velocities
x_update_step_xla"
experimentalOptimizer

p	capture_0
q	capture_1BΑ
__inference___call___18250x"
²
FullArgSpec
args
jself
jx
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
 zp	capture_0zq	capture_1

p	capture_0
q	capture_1BΑ
__inference___call___18408x"
²
FullArgSpec
args
jself
jx
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
 zp	capture_0zq	capture_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ξ
~trace_02Ρ
*__inference_resizing_1_layer_call_fn_19089’
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
 z~trace_0

trace_02μ
E__inference_resizing_1_layer_call_and_return_conditional_losses_19095’
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
 ztrace_0
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
Ϊ
trace_02»
__inference_adapt_step_18930
²
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ξ
trace_02Ο
(__inference_conv2d_2_layer_call_fn_19104’
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
 ztrace_0

trace_02κ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_19115’
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
 ztrace_0
):' 2conv2d_2/kernel
: 2conv2d_2/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ξ
trace_02Ο
(__inference_conv2d_3_layer_call_fn_19124’
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
 ztrace_0

trace_02κ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_19135’
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
 ztrace_0
):' @2conv2d_3/kernel
:@2conv2d_3/bias
΄2±?
£²
FullArgSpec'
args
jself
jinputs
jkernel
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
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
υ
trace_02Φ
/__inference_max_pooling2d_1_layer_call_fn_19140’
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
 ztrace_0

trace_02ρ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19145’
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
 ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
Η
trace_0
trace_12
)__inference_dropout_2_layer_call_fn_19150
)__inference_dropout_2_layer_call_fn_19155³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0ztrace_1
ύ
trace_0
trace_12Β
D__inference_dropout_2_layer_call_and_return_conditional_losses_19160
D__inference_dropout_2_layer_call_and_return_conditional_losses_19172³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 ztrace_0ztrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
 layers
‘metrics
 ’layer_regularization_losses
£layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
ο
€trace_02Π
)__inference_flatten_1_layer_call_fn_19177’
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
 z€trace_0

₯trace_02λ
D__inference_flatten_1_layer_call_and_return_conditional_losses_19183’
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
 z₯trace_0
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ͺlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
ν
«trace_02Ξ
'__inference_dense_2_layer_call_fn_19192’
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
 z«trace_0

¬trace_02ι
B__inference_dense_2_layer_call_and_return_conditional_losses_19203’
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
 z¬trace_0
": 
b2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
­non_trainable_variables
?layers
―metrics
 °layer_regularization_losses
±layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
Η
²trace_0
³trace_12
)__inference_dropout_3_layer_call_fn_19208
)__inference_dropout_3_layer_call_fn_19213³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z²trace_0z³trace_1
ύ
΄trace_0
΅trace_12Β
D__inference_dropout_3_layer_call_and_return_conditional_losses_19218
D__inference_dropout_3_layer_call_and_return_conditional_losses_19230³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 z΄trace_0z΅trace_1
"
_generic_user_object
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Άnon_trainable_variables
·layers
Έmetrics
 Ήlayer_regularization_losses
Ίlayer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
ν
»trace_02Ξ
'__inference_dense_3_layer_call_fn_19239’
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
 z»trace_0

Όtrace_02ι
B__inference_dense_3_layer_call_and_return_conditional_losses_19249’
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
 zΌtrace_0
!:	2dense_3/kernel
:2dense_3/bias
5
#0
$1
%2"
trackable_list_wrapper
f
0
1
2
3
4
	5

6
7
8
9"
trackable_list_wrapper
0
½0
Ύ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ί
p	capture_0
q	capture_1Bϋ
,__inference_sequential_1_layer_call_fn_18602input_2"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zp	capture_0zq	capture_1
Ή
p	capture_0
q	capture_1Bϊ
,__inference_sequential_1_layer_call_fn_18955inputs"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zp	capture_0zq	capture_1
Ή
p	capture_0
q	capture_1Bϊ
,__inference_sequential_1_layer_call_fn_18980inputs"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zp	capture_0zq	capture_1
Ί
p	capture_0
q	capture_1Bϋ
,__inference_sequential_1_layer_call_fn_18811input_2"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zp	capture_0zq	capture_1
Τ
p	capture_0
q	capture_1B
G__inference_sequential_1_layer_call_and_return_conditional_losses_19025inputs"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zp	capture_0zq	capture_1
Τ
p	capture_0
q	capture_1B
G__inference_sequential_1_layer_call_and_return_conditional_losses_19084inputs"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zp	capture_0zq	capture_1
Υ
p	capture_0
q	capture_1B
G__inference_sequential_1_layer_call_and_return_conditional_losses_18847input_2"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zp	capture_0zq	capture_1
Υ
p	capture_0
q	capture_1B
G__inference_sequential_1_layer_call_and_return_conditional_losses_18883input_2"Ώ
Ά²²
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

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 zp	capture_0zq	capture_1
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
?
s0
Ώ1
ΐ2
Α3
Β4
Γ5
Δ6
Ε7
Ζ8
Η9
Θ10
Ι11
Κ12
Λ13
Μ14
Ν15
Ξ16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
`
Ώ0
Α1
Γ2
Ε3
Η4
Ι5
Λ6
Ν7"
trackable_list_wrapper
`
ΐ0
Β1
Δ2
Ζ3
Θ4
Κ5
Μ6
Ξ7"
trackable_list_wrapper
Ώ2ΌΉ
?²ͺ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
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
 0
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
ήBΫ
*__inference_resizing_1_layer_call_fn_19089inputs"’
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
ωBφ
E__inference_resizing_1_layer_call_and_return_conditional_losses_19095inputs"’
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
ΚBΗ
__inference_adapt_step_18930iterator"
²
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
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
άBΩ
(__inference_conv2d_2_layer_call_fn_19104inputs"’
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
χBτ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_19115inputs"’
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
άBΩ
(__inference_conv2d_3_layer_call_fn_19124inputs"’
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
χBτ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_19135inputs"’
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
γBΰ
/__inference_max_pooling2d_1_layer_call_fn_19140inputs"’
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
ώBϋ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19145inputs"’
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
ξBλ
)__inference_dropout_2_layer_call_fn_19150inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξBλ
)__inference_dropout_2_layer_call_fn_19155inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
D__inference_dropout_2_layer_call_and_return_conditional_losses_19160inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
D__inference_dropout_2_layer_call_and_return_conditional_losses_19172inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
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
έBΪ
)__inference_flatten_1_layer_call_fn_19177inputs"’
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
ψBυ
D__inference_flatten_1_layer_call_and_return_conditional_losses_19183inputs"’
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
ΫBΨ
'__inference_dense_2_layer_call_fn_19192inputs"’
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
φBσ
B__inference_dense_2_layer_call_and_return_conditional_losses_19203inputs"’
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
ξBλ
)__inference_dropout_3_layer_call_fn_19208inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξBλ
)__inference_dropout_3_layer_call_fn_19213inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
D__inference_dropout_3_layer_call_and_return_conditional_losses_19218inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
B
D__inference_dropout_3_layer_call_and_return_conditional_losses_19230inputs"³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
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
ΫBΨ
'__inference_dense_3_layer_call_fn_19239inputs"’
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
φBσ
B__inference_dense_3_layer_call_and_return_conditional_losses_19249inputs"’
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
R
Ο	variables
Π	keras_api

Ρtotal

?count"
_tf_keras_metric
c
Σ	variables
Τ	keras_api

Υtotal

Φcount
Χ
_fn_kwargs"
_tf_keras_metric
.:, 2Adam/m/conv2d_2/kernel
.:, 2Adam/v/conv2d_2/kernel
 : 2Adam/m/conv2d_2/bias
 : 2Adam/v/conv2d_2/bias
.:, @2Adam/m/conv2d_3/kernel
.:, @2Adam/v/conv2d_3/kernel
 :@2Adam/m/conv2d_3/bias
 :@2Adam/v/conv2d_3/bias
':%
b2Adam/m/dense_2/kernel
':%
b2Adam/v/dense_2/kernel
 :2Adam/m/dense_2/bias
 :2Adam/v/dense_2/bias
&:$	2Adam/m/dense_3/kernel
&:$	2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
0
Ρ0
?1"
trackable_list_wrapper
.
Ο	variables"
_generic_user_object
:  (2total
:  (2count
0
Υ0
Φ1"
trackable_list_wrapper
.
Σ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper_
__inference___call___18250A
pq-.67RSab’
’


x 
ͺ "
unknownz
__inference___call___18408\
pq-.67RSab+’(
!’

x?????????}
ͺ "!
unknown?????????
 __inference__wrapped_model_18454z
pq-.67RSab9’6
/’,
*'
input_2?????????|
ͺ "1ͺ.
,
dense_3!
dense_3?????????w
__inference_adapt_step_18930W%#$L’I
B’?
=:&’#
!?????????|IteratorSpec 
ͺ "
 Ί
C__inference_conv2d_2_layer_call_and_return_conditional_losses_19115s-.7’4
-’*
(%
inputs?????????  
ͺ "4’1
*'
tensor_0????????? 
 
(__inference_conv2d_2_layer_call_fn_19104h-.7’4
-’*
(%
inputs?????????  
ͺ ")&
unknown????????? Ί
C__inference_conv2d_3_layer_call_and_return_conditional_losses_19135s677’4
-’*
(%
inputs????????? 
ͺ "4’1
*'
tensor_0?????????@
 
(__inference_conv2d_3_layer_call_fn_19124h677’4
-’*
(%
inputs????????? 
ͺ ")&
unknown?????????@«
B__inference_dense_2_layer_call_and_return_conditional_losses_19203eRS0’-
&’#
!
inputs?????????b
ͺ "-’*
# 
tensor_0?????????
 
'__inference_dense_2_layer_call_fn_19192ZRS0’-
&’#
!
inputs?????????b
ͺ ""
unknown?????????ͺ
B__inference_dense_3_layer_call_and_return_conditional_losses_19249dab0’-
&’#
!
inputs?????????
ͺ ",’)
"
tensor_0?????????
 
'__inference_dense_3_layer_call_fn_19239Yab0’-
&’#
!
inputs?????????
ͺ "!
unknown?????????»
D__inference_dropout_2_layer_call_and_return_conditional_losses_19160s;’8
1’.
(%
inputs?????????@
p 
ͺ "4’1
*'
tensor_0?????????@
 »
D__inference_dropout_2_layer_call_and_return_conditional_losses_19172s;’8
1’.
(%
inputs?????????@
p
ͺ "4’1
*'
tensor_0?????????@
 
)__inference_dropout_2_layer_call_fn_19150h;’8
1’.
(%
inputs?????????@
p 
ͺ ")&
unknown?????????@
)__inference_dropout_2_layer_call_fn_19155h;’8
1’.
(%
inputs?????????@
p
ͺ ")&
unknown?????????@­
D__inference_dropout_3_layer_call_and_return_conditional_losses_19218e4’1
*’'
!
inputs?????????
p 
ͺ "-’*
# 
tensor_0?????????
 ­
D__inference_dropout_3_layer_call_and_return_conditional_losses_19230e4’1
*’'
!
inputs?????????
p
ͺ "-’*
# 
tensor_0?????????
 
)__inference_dropout_3_layer_call_fn_19208Z4’1
*’'
!
inputs?????????
p 
ͺ ""
unknown?????????
)__inference_dropout_3_layer_call_fn_19213Z4’1
*’'
!
inputs?????????
p
ͺ ""
unknown?????????°
D__inference_flatten_1_layer_call_and_return_conditional_losses_19183h7’4
-’*
(%
inputs?????????@
ͺ "-’*
# 
tensor_0?????????b
 
)__inference_flatten_1_layer_call_fn_19177]7’4
-’*
(%
inputs?????????@
ͺ ""
unknown?????????bτ
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19145₯R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "O’L
EB
tensor_04????????????????????????????????????
 Ξ
/__inference_max_pooling2d_1_layer_call_fn_19140R’O
H’E
C@
inputs4????????????????????????????????????
ͺ "DA
unknown4????????????????????????????????????Ή
E__inference_resizing_1_layer_call_and_return_conditional_losses_19095p8’5
.’+
)&
inputs?????????|
ͺ "4’1
*'
tensor_0?????????  
 
*__inference_resizing_1_layer_call_fn_19089e8’5
.’+
)&
inputs?????????|
ͺ ")&
unknown?????????  Θ
G__inference_sequential_1_layer_call_and_return_conditional_losses_18847}
pq-.67RSabA’>
7’4
*'
input_2?????????|
p 

 
ͺ ",’)
"
tensor_0?????????
 Θ
G__inference_sequential_1_layer_call_and_return_conditional_losses_18883}
pq-.67RSabA’>
7’4
*'
input_2?????????|
p

 
ͺ ",’)
"
tensor_0?????????
 Η
G__inference_sequential_1_layer_call_and_return_conditional_losses_19025|
pq-.67RSab@’=
6’3
)&
inputs?????????|
p 

 
ͺ ",’)
"
tensor_0?????????
 Η
G__inference_sequential_1_layer_call_and_return_conditional_losses_19084|
pq-.67RSab@’=
6’3
)&
inputs?????????|
p

 
ͺ ",’)
"
tensor_0?????????
 ’
,__inference_sequential_1_layer_call_fn_18602r
pq-.67RSabA’>
7’4
*'
input_2?????????|
p 

 
ͺ "!
unknown?????????’
,__inference_sequential_1_layer_call_fn_18811r
pq-.67RSabA’>
7’4
*'
input_2?????????|
p

 
ͺ "!
unknown?????????‘
,__inference_sequential_1_layer_call_fn_18955q
pq-.67RSab@’=
6’3
)&
inputs?????????|
p 

 
ͺ "!
unknown?????????‘
,__inference_sequential_1_layer_call_fn_18980q
pq-.67RSab@’=
6’3
)&
inputs?????????|
p

 
ͺ "!
unknown?????????