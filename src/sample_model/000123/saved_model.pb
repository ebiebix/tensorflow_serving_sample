H
ů
É

D
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
ł
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
Á
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring "serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628/

serving_default_input_1Placeholder*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
z
serving_default_input_2Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
É
PartitionedCallPartitionedCallserving_default_input_1serving_default_input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *3
f.R,
*__inference_signature_wrapper_batch_add_92

NoOpNoOp
˝
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*y
valuepBn Bh
0
	keras_api
	batch_add

signatures* 
* 

trace_0* 

serving_default* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCallStatefulPartitionedCallsaver_filenameConst*
Tin
2*
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
GPU 2J 8 *%
f R
__inference__traced_save_115

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*
Tin
2*
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
__inference__traced_restore_124î#
ł
B
__inference_batch_add_85
input_1
input_2
identityY
addAddV2input_1input_2*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙X
IdentityIdentityadd:z:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Y U
0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:PL
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2

T
*__inference_signature_wrapper_batch_add_92
input_1
input_2
identity
PartitionedCallPartitionedCallinput_1input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *!
fR
__inference_batch_add_85i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:Y U
0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:PL
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_2

i
__inference__traced_save_115
file_prefix
savev2_const

identity_1˘MergeV2Checkpointsw
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHo
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ř
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
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
: 7
NoOpNoOp^MergeV2Checkpoints*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:=9

_output_shapes
: 

_user_specified_nameConst

E
__inference__traced_restore_124
file_prefix

identity_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHr
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ł
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
2Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 X
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ĘJ
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ň
serving_defaultŢ
D
input_19
serving_default_input_1:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
;
input_20
serving_default_input_2:0˙˙˙˙˙˙˙˙˙=
output_01
PartitionedCall:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:Ü

G
	keras_api
	batch_add

signatures"
_tf_keras_model
"
_generic_user_object
Ž
trace_02
__inference_batch_add_85ô
˛
FullArgSpec!
args
	jinput_1
	jinput_2
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *R˘O
*'
input_1˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
!
input_2˙˙˙˙˙˙˙˙˙ztrace_0
,
serving_default"
signature_map
¨BĽ
__inference_batch_add_85input_1input_2"ô
˛
FullArgSpec!
args
	jinput_1
	jinput_2
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *R˘O
*'
input_1˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
!
input_2˙˙˙˙˙˙˙˙˙
ŘBŐ
*__inference_signature_wrapper_batch_add_92input_1input_2"
˛
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
annotationsŞ *
 §
__inference_batch_add_85\˘Y
R˘O
*'
input_1˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
!
input_2˙˙˙˙˙˙˙˙˙
Ş "*'
unknown˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙á
*__inference_signature_wrapper_batch_add_92˛r˘o
˘ 
hŞe
5
input_1*'
input_1˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
,
input_2!
input_2˙˙˙˙˙˙˙˙˙"<Ş9
7
output_0+(
output_0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙