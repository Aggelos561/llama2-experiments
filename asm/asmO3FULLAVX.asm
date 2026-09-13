	.file	"run.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mavx -mtune=generic -march=x86-64 -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	compare
	.type	compare, @function
compare:
.LFB6505:
	.cfi_startproc
	endbr64	
# run.c:660:     if (a_->prob > b_->prob) return -1;
	vmovss	(%rdi), %xmm0	# MEM[(struct ProbIndex *)a_4(D)].prob, _1
# run.c:660:     if (a_->prob > b_->prob) return -1;
	vmovss	(%rsi), %xmm1	# MEM[(struct ProbIndex *)b_5(D)].prob, _2
# run.c:660:     if (a_->prob > b_->prob) return -1;
	movl	$-1, %eax	#, <retval>
# run.c:660:     if (a_->prob > b_->prob) return -1;
	vcomiss	%xmm1, %xmm0	# _2, _1
	ja	.L1	#,
# run.c:661:     if (a_->prob < b_->prob) return 1;
	xorl	%eax, %eax	# <retval>
	vcomiss	%xmm0, %xmm1	# _1, _2
	seta	%al	#, <retval>
.L1:
# run.c:663: }
	ret	
	.cfi_endproc
.LFE6505:
	.size	compare, .-compare
	.p2align 4
	.globl	compare_tokens
	.type	compare_tokens, @function
compare_tokens:
.LFB6496:
	.cfi_startproc
	endbr64	
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	(%rsi), %rsi	# MEM[(struct TokenIndex *)b_4(D)].str, MEM[(struct TokenIndex *)b_4(D)].str
	movq	(%rdi), %rdi	# MEM[(struct TokenIndex *)a_5(D)].str, MEM[(struct TokenIndex *)a_5(D)].str
	jmp	strcmp@PLT	#
	.cfi_endproc
.LFE6496:
	.size	compare_tokens, .-compare_tokens
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"malloc failed!\n"
	.text
	.p2align 4
	.globl	malloc_run_state
	.type	malloc_run_state, @function
malloc_run_state:
.LFB6486:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp	# tmp182, p
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp181, s
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
# run.c:86:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movslq	(%rsi), %r13	# p_29(D)->dim,
# run.c:86:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movl	16(%rsi), %eax	# p_29(D)->n_kv_heads, tmp131
# run.c:86:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movl	12(%rsi), %r12d	# p_29(D)->n_heads, _4
# run.c:87:     s->x = calloc(p->dim, sizeof(float));
	movl	$4, %esi	#,
# run.c:86:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	imull	%r13d, %eax	# _1, tmp131
# run.c:87:     s->x = calloc(p->dim, sizeof(float));
	movq	%r13, %rdi	# _5,
# run.c:86:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	cltd
	idivl	%r12d	# _4
	movl	%eax, %r15d	# tmp131, tmp132
# run.c:87:     s->x = calloc(p->dim, sizeof(float));
	call	calloc@PLT	#
# run.c:88:     s->xb = calloc(p->dim, sizeof(float));
	movq	%r13, %rdi	# _5,
	movl	$4, %esi	#,
# run.c:87:     s->x = calloc(p->dim, sizeof(float));
	movq	%rax, (%rbx)	# tmp134, s_32(D)->x
	movq	%rax, 40(%rsp)	# tmp134, %sfp
# run.c:88:     s->xb = calloc(p->dim, sizeof(float));
	call	calloc@PLT	#
# run.c:89:     s->xb2 = calloc(p->dim, sizeof(float));
	movq	%r13, %rdi	# _5,
	movl	$4, %esi	#,
# run.c:88:     s->xb = calloc(p->dim, sizeof(float));
	movq	%rax, 8(%rbx)	# tmp135, s_32(D)->xb
	movq	%rax, 32(%rsp)	# tmp135, %sfp
# run.c:89:     s->xb2 = calloc(p->dim, sizeof(float));
	call	calloc@PLT	#
# run.c:90:     s->hb = calloc(p->hidden_dim, sizeof(float));
	movslq	4(%rbp), %r14	# p_29(D)->hidden_dim, _10
	movl	$4, %esi	#,
# run.c:89:     s->xb2 = calloc(p->dim, sizeof(float));
	movq	%rax, 16(%rbx)	# tmp136, s_32(D)->xb2
# run.c:90:     s->hb = calloc(p->hidden_dim, sizeof(float));
	movq	%r14, %rdi	# _10,
# run.c:89:     s->xb2 = calloc(p->dim, sizeof(float));
	movq	%rax, 24(%rsp)	# tmp136, %sfp
# run.c:90:     s->hb = calloc(p->hidden_dim, sizeof(float));
	call	calloc@PLT	#
# run.c:91:     s->hb2 = calloc(p->hidden_dim, sizeof(float));
	movq	%r14, %rdi	# _10,
	movl	$4, %esi	#,
# run.c:90:     s->hb = calloc(p->hidden_dim, sizeof(float));
	movq	%rax, 24(%rbx)	# tmp138, s_32(D)->hb
	movq	%rax, 16(%rsp)	# tmp138, %sfp
# run.c:91:     s->hb2 = calloc(p->hidden_dim, sizeof(float));
	call	calloc@PLT	#
# run.c:92:     s->q = calloc(p->dim, sizeof(float));
	movq	%r13, %rdi	# _5,
	movl	$4, %esi	#,
# run.c:91:     s->hb2 = calloc(p->hidden_dim, sizeof(float));
	movq	%rax, 32(%rbx)	# tmp139, s_32(D)->hb2
	movq	%rax, 8(%rsp)	# tmp139, %sfp
# run.c:92:     s->q = calloc(p->dim, sizeof(float));
	call	calloc@PLT	#
# run.c:93:     s->key_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movl	24(%rbp), %r11d	# p_29(D)->seq_len, _15
# run.c:93:     s->key_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movl	$4, %esi	#,
# run.c:92:     s->q = calloc(p->dim, sizeof(float));
	movq	%rax, 40(%rbx)	# tmp140, s_32(D)->q
# run.c:92:     s->q = calloc(p->dim, sizeof(float));
	movq	%rax, %r14	# tmp188, tmp140
# run.c:93:     s->key_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movl	%r11d, %r13d	# _15, tmp141
	imull	8(%rbp), %r13d	# p_29(D)->n_layers, tmp141
	movl	%r11d, 4(%rsp)	# _15, %sfp
# run.c:93:     s->key_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	imull	%r15d, %r13d	# tmp132, tmp142
# run.c:93:     s->key_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movslq	%r13d, %r13	# tmp142, _18
	movq	%r13, %rdi	# _18,
	call	calloc@PLT	#
# run.c:94:     s->value_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movq	%r13, %rdi	# _18,
	movl	$4, %esi	#,
# run.c:93:     s->key_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movq	%rax, 80(%rbx)	# tmp143, s_32(D)->key_cache
# run.c:93:     s->key_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movq	%rax, %r15	# tmp189, tmp143
# run.c:94:     s->value_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	call	calloc@PLT	#
# run.c:95:     s->att = calloc(p->n_heads * p->seq_len, sizeof(float));
	movl	4(%rsp), %r11d	# %sfp, _15
# run.c:95:     s->att = calloc(p->n_heads * p->seq_len, sizeof(float));
	movl	$4, %esi	#,
# run.c:94:     s->value_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movq	%rax, 88(%rbx)	# tmp144, s_32(D)->value_cache
# run.c:94:     s->value_cache = calloc(p->n_layers * p->seq_len * kv_dim, sizeof(float));
	movq	%rax, %r13	# tmp190, tmp144
# run.c:95:     s->att = calloc(p->n_heads * p->seq_len, sizeof(float));
	imull	%r11d, %r12d	# _15, tmp145
# run.c:95:     s->att = calloc(p->n_heads * p->seq_len, sizeof(float));
	movslq	%r12d, %rdi	# tmp145, tmp146
	call	calloc@PLT	#
# run.c:96:     s->logits = calloc(p->vocab_size, sizeof(float));
	movslq	20(%rbp), %rdi	# p_29(D)->vocab_size, p_29(D)->vocab_size
	movl	$4, %esi	#,
# run.c:95:     s->att = calloc(p->n_heads * p->seq_len, sizeof(float));
	movq	%rax, 64(%rbx)	# tmp147, s_32(D)->att
# run.c:95:     s->att = calloc(p->n_heads * p->seq_len, sizeof(float));
	movq	%rax, %r12	# tmp191, tmp147
# run.c:96:     s->logits = calloc(p->vocab_size, sizeof(float));
	call	calloc@PLT	#
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	movq	32(%rsp), %r10	# %sfp, tmp135
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	movq	40(%rsp), %r9	# %sfp, tmp134
# run.c:96:     s->logits = calloc(p->vocab_size, sizeof(float));
	movq	%rax, 72(%rbx)	# tmp150, s_32(D)->logits
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	movq	24(%rsp), %r8	# %sfp, tmp136
# run.c:96:     s->logits = calloc(p->vocab_size, sizeof(float));
	movq	%rax, %rsi	# tmp192, tmp150
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	testq	%r10, %r10	# tmp135
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	movq	16(%rsp), %rcx	# %sfp, tmp138
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	movq	8(%rsp), %rdx	# %sfp, tmp139
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	sete	%al	#, tmp152
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	testq	%r9, %r9	# tmp134
	sete	%dil	#, tmp154
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	orl	%edi, %eax	# tmp154, tmp155
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	testq	%r8, %r8	# tmp136
	sete	%dil	#, tmp157
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	orl	%edi, %eax	# tmp157, tmp158
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	testq	%rcx, %rcx	# tmp138
	sete	%cl	#, tmp160
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	orl	%ecx, %eax	# tmp160, tmp161
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	testq	%rdx, %rdx	# tmp139
	sete	%dl	#, tmp163
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	orl	%edx, %eax	# tmp163, tmp164
# run.c:98:     if (!s->x || !s->xb || !s->xb2 || !s->hb || !s->hb2 || !s->q
	testq	%r14, %r14	# tmp140
	sete	%dl	#, tmp166
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	orl	%edx, %eax	# tmp166, tmp167
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	testq	%r15, %r15	# tmp143
	sete	%dl	#, tmp169
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	orl	%edx, %eax	# tmp169, tmp170
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	testq	%r13, %r13	# tmp144
	sete	%dl	#, tmp172
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	orl	%edx, %eax	# tmp172, tmp173
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	testq	%r12, %r12	# tmp147
	sete	%dl	#, tmp175
# run.c:99:      || !s->key_cache || !s->value_cache || !s->att || !s->logits) {
	orb	%dl, %al	# tmp175, tmp193
	jne	.L9	#,
	testq	%rsi, %rsi	# tmp150
	je	.L9	#,
# run.c:103: }
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L9:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$15, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC0(%rip), %rdi	#, tmp180
	call	fwrite@PLT	#
# run.c:101:         exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE6486:
	.size	malloc_run_state, .-malloc_run_state
	.p2align 4
	.globl	free_run_state
	.type	free_run_state, @function
free_run_state:
.LFB6487:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# run.c:105: void free_run_state(RunState* s) {
	movq	%rdi, %rbx	# tmp103, s
# run.c:106:     free(s->x);
	movq	(%rdi), %rdi	# s_12(D)->x, s_12(D)->x
	call	free@PLT	#
# run.c:107:     free(s->xb);
	movq	8(%rbx), %rdi	# s_12(D)->xb, s_12(D)->xb
	call	free@PLT	#
# run.c:108:     free(s->xb2);
	movq	16(%rbx), %rdi	# s_12(D)->xb2, s_12(D)->xb2
	call	free@PLT	#
# run.c:109:     free(s->hb);
	movq	24(%rbx), %rdi	# s_12(D)->hb, s_12(D)->hb
	call	free@PLT	#
# run.c:110:     free(s->hb2);
	movq	32(%rbx), %rdi	# s_12(D)->hb2, s_12(D)->hb2
	call	free@PLT	#
# run.c:111:     free(s->q);
	movq	40(%rbx), %rdi	# s_12(D)->q, s_12(D)->q
	call	free@PLT	#
# run.c:112:     free(s->att);
	movq	64(%rbx), %rdi	# s_12(D)->att, s_12(D)->att
	call	free@PLT	#
# run.c:113:     free(s->logits);
	movq	72(%rbx), %rdi	# s_12(D)->logits, s_12(D)->logits
	call	free@PLT	#
# run.c:114:     free(s->key_cache);
	movq	80(%rbx), %rdi	# s_12(D)->key_cache, s_12(D)->key_cache
	call	free@PLT	#
# run.c:115:     free(s->value_cache);
	movq	88(%rbx), %rdi	# s_12(D)->value_cache, s_12(D)->value_cache
# run.c:116: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# run.c:115:     free(s->value_cache);
	jmp	free@PLT	#
	.cfi_endproc
.LFE6487:
	.size	free_run_state, .-free_run_state
	.p2align 4
	.globl	memory_map_weights
	.type	memory_map_weights, @function
memory_map_weights:
.LFB6488:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdx, %r8	# tmp152, ptr
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
# run.c:119:     int head_size = p->dim / p->n_heads;
	movslq	(%rsi), %r9	# p_36(D)->dim,
# run.c:119:     int head_size = p->dim / p->n_heads;
	movl	12(%rsi), %r10d	# p_36(D)->n_heads, _2
# run.c:121:     unsigned long long n_layers = p->n_layers;
	movslq	8(%rsi), %r11	# p_36(D)->n_layers, n_layers
# run.c:122:     w->token_embedding_table = ptr;
	movq	%r8, (%rdi)	# ptr, w_39(D)->token_embedding_table
# run.c:119:     int head_size = p->dim / p->n_heads;
	movl	%r9d, %eax	# _1, tmp126
# run.c:129:     ptr += n_layers * p->dim * (p->n_kv_heads * head_size);
	movl	16(%rsi), %ebp	# p_36(D)->n_kv_heads, tmp134
# run.c:119:     int head_size = p->dim / p->n_heads;
	cltd
# run.c:125:     ptr += n_layers * p->dim;
	imulq	%r9, %r11	# _8, _9
# run.c:119:     int head_size = p->dim / p->n_heads;
	idivl	%r10d	# _2
# run.c:123:     ptr += p->vocab_size * p->dim;
	movl	20(%rsi), %edx	# p_36(D)->vocab_size, tmp129
	imull	%r9d, %edx	# _1, tmp129
# run.c:125:     ptr += n_layers * p->dim;
	leaq	0(,%r11,4), %rbx	#, _10
# run.c:123:     ptr += p->vocab_size * p->dim;
	movslq	%edx, %rdx	# tmp129, tmp130
# run.c:123:     ptr += p->vocab_size * p->dim;
	leaq	(%r8,%rdx,4), %rdx	#, ptr
# run.c:124:     w->rms_att_weight = ptr;
	movq	%rdx, 8(%rdi)	# ptr, w_39(D)->rms_att_weight
# run.c:125:     ptr += n_layers * p->dim;
	addq	%rbx, %rdx	# _10, ptr
# run.c:126:     w->wq = ptr;
	movq	%rdx, 24(%rdi)	# ptr, w_39(D)->wq
# run.c:127:     ptr += n_layers * p->dim * (p->n_heads * head_size);
	imull	%eax, %r10d	# tmp126, tmp132
# run.c:129:     ptr += n_layers * p->dim * (p->n_kv_heads * head_size);
	imull	%eax, %ebp	# tmp126, tmp134
# run.c:127:     ptr += n_layers * p->dim * (p->n_heads * head_size);
	movslq	%r10d, %r10	# tmp132, tmp133
# run.c:127:     ptr += n_layers * p->dim * (p->n_heads * head_size);
	imulq	%rbx, %r10	# _10, _14
# run.c:129:     ptr += n_layers * p->dim * (p->n_kv_heads * head_size);
	movslq	%ebp, %rbp	# tmp134, tmp135
# run.c:129:     ptr += n_layers * p->dim * (p->n_kv_heads * head_size);
	imulq	%rbx, %rbp	# _10, _19
# run.c:127:     ptr += n_layers * p->dim * (p->n_heads * head_size);
	addq	%r10, %rdx	# _14, ptr
# run.c:128:     w->wk = ptr;
	movq	%rdx, 32(%rdi)	# ptr, w_39(D)->wk
# run.c:129:     ptr += n_layers * p->dim * (p->n_kv_heads * head_size);
	addq	%rbp, %rdx	# _19, ptr
# run.c:130:     w->wv = ptr;
	movq	%rdx, 40(%rdi)	# ptr, w_39(D)->wv
# run.c:131:     ptr += n_layers * p->dim * (p->n_kv_heads * head_size);
	addq	%rbp, %rdx	# _19, ptr
# run.c:132:     w->wo = ptr;
	movq	%rdx, 48(%rdi)	# ptr, w_39(D)->wo
# run.c:133:     ptr += n_layers * (p->n_heads * head_size) * p->dim;
	addq	%r10, %rdx	# _14, ptr
# run.c:137:     ptr += n_layers * p->dim * p->hidden_dim;
	movslq	4(%rsi), %r10	# p_36(D)->hidden_dim, p_36(D)->hidden_dim
# run.c:134:     w->rms_ffn_weight = ptr;
	movq	%rdx, 16(%rdi)	# ptr, w_39(D)->rms_ffn_weight
# run.c:135:     ptr += n_layers * p->dim;
	addq	%rbx, %rdx	# _10, ptr
# run.c:144:     ptr += p->seq_len * head_size / 2; // skip what used to be freq_cis_real (for RoPE)
	movl	24(%rsi), %esi	# p_36(D)->seq_len, _30
# run.c:137:     ptr += n_layers * p->dim * p->hidden_dim;
	imulq	%r11, %r10	# _9, tmp138
# run.c:136:     w->w1 = ptr;
	movq	%rdx, 56(%rdi)	# ptr, w_39(D)->w1
# run.c:137:     ptr += n_layers * p->dim * p->hidden_dim;
	salq	$2, %r10	#, _26
	addq	%r10, %rdx	# _26, ptr
# run.c:138:     w->w2 = ptr;
	movq	%rdx, 64(%rdi)	# ptr, w_39(D)->w2
# run.c:139:     ptr += n_layers * p->hidden_dim * p->dim;
	addq	%r10, %rdx	# _26, ptr
# run.c:140:     w->w3 = ptr;
	movq	%rdx, 72(%rdi)	# ptr, w_39(D)->w3
# run.c:141:     ptr += n_layers * p->dim * p->hidden_dim;
	addq	%r10, %rdx	# _26, ptr
# run.c:142:     w->rms_final_weight = ptr;
	movq	%rdx, 80(%rdi)	# ptr, w_39(D)->rms_final_weight
# run.c:146:     w->wcls = shared_weights ? w->token_embedding_table : ptr;
	testl	%ecx, %ecx	# tmp153
	jne	.L15	#,
# run.c:144:     ptr += p->seq_len * head_size / 2; // skip what used to be freq_cis_real (for RoPE)
	imull	%eax, %esi	# tmp126, tmp139
# run.c:144:     ptr += p->seq_len * head_size / 2; // skip what used to be freq_cis_real (for RoPE)
	movl	%esi, %eax	# tmp139, tmp141
	shrl	$31, %eax	#, tmp141
	addl	%esi, %eax	# tmp139, tmp142
	sarl	%eax	# tmp143
	cltq
# run.c:145:     ptr += p->seq_len * head_size / 2; // skip what used to be freq_cis_imag (for RoPE)
	leaq	(%r9,%rax,2), %rax	#, tmp146
	leaq	(%rdx,%rax,4), %r8	#, ptr
.L15:
# run.c:147: }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# run.c:146:     w->wcls = shared_weights ? w->token_embedding_table : ptr;
	movq	%r8, 88(%rdi)	# ptr, w_39(D)->wcls
# run.c:147: }
	ret	
	.cfi_endproc
.LFE6488:
	.size	memory_map_weights, .-memory_map_weights
	.section	.rodata.str1.1
.LC1:
	.string	"rb"
.LC2:
	.string	"Couldn't open file %s\n"
.LC3:
	.string	"open failed!\n"
.LC4:
	.string	"mmap failed!\n"
	.text
	.p2align 4
	.globl	read_checkpoint
	.type	read_checkpoint, @function
read_checkpoint:
.LFB6489:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%r8, %r15	# tmp120, data
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14	# tmp119, fd
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r9, %r13	# tmp121, file_size
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12	# tmp116, checkpoint
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp	# tmp117, config
# run.c:151:     FILE *file = fopen(checkpoint, "rb");
	leaq	.LC1(%rip), %rsi	#, tmp103
# run.c:150:                      int* fd, float** data, ssize_t* file_size) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# run.c:150:                      int* fd, float** data, ssize_t* file_size) {
	movq	%rdx, (%rsp)	# tmp118, %sfp
# run.c:151:     FILE *file = fopen(checkpoint, "rb");
	call	fopen@PLT	#
# run.c:152:     if (!file) { fprintf(stderr, "Couldn't open file %s\n", checkpoint); exit(EXIT_FAILURE); }
	testq	%rax, %rax	# tmp104
	je	.L24	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%rax, %rcx	# tmp104,
	movl	$1, %edx	#,
	movl	$28, %esi	#,
	movq	%rbp, %rdi	# config,
	movq	%rax, %rbx	# tmp122, tmp104
	call	fread@PLT	#
# run.c:154:     if (fread(config, sizeof(Config), 1, file) != 1) { exit(EXIT_FAILURE); }
	cmpq	$1, %rax	#, tmp123
	jne	.L23	#,
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	vmovd	20(%rbp), %xmm0	# config_15(D)->vocab_size, tmp128
# run.c:159:     fseek(file, 0, SEEK_END); // move file pointer to end of file
	movl	$2, %edx	#,
	movq	%rbx, %rdi	# tmp104,
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	vmovd	%xmm0, %eax	# _2, _2
# run.c:157:     config->vocab_size = abs(config->vocab_size);
	vpabsd	%xmm0, %xmm0	# _2, tmp109
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	testl	%eax, %eax	# _2
# run.c:157:     config->vocab_size = abs(config->vocab_size);
	vmovd	%xmm0, 20(%rbp)	# tmp109, config_15(D)->vocab_size
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	setg	%al	#, tmp107
# run.c:159:     fseek(file, 0, SEEK_END); // move file pointer to end of file
	xorl	%esi, %esi	#
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	movzbl	%al, %eax	# tmp107, tmp107
	movl	%eax, 12(%rsp)	# tmp107, %sfp
# run.c:159:     fseek(file, 0, SEEK_END); // move file pointer to end of file
	call	fseek@PLT	#
# run.c:160:     *file_size = ftell(file); // get the file size, in bytes
	movq	%rbx, %rdi	# tmp104,
	call	ftell@PLT	#
# run.c:161:     fclose(file);
	movq	%rbx, %rdi	# tmp104,
# run.c:160:     *file_size = ftell(file); // get the file size, in bytes
	movq	%rax, 0(%r13)	# tmp124, *file_size_20(D)
# run.c:161:     fclose(file);
	call	fclose@PLT	#
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	xorl	%esi, %esi	#
	movq	%r12, %rdi	# checkpoint,
	xorl	%eax, %eax	#
	call	open@PLT	#
# run.c:163:     *fd = open(checkpoint, O_RDONLY); // open in read only mode
	movl	%eax, (%r14)	# _44, *fd_23(D)
# /usr/include/x86_64-linux-gnu/bits/fcntl2.h:53:       return __open_alias (__path, __oflag, __va_arg_pack ());
	movl	%eax, %r8d	# tmp125, _44
# run.c:164:     if (*fd == -1) { fprintf(stderr, "open failed!\n"); exit(EXIT_FAILURE); }
	cmpl	$-1, %eax	#, _44
	je	.L25	#,
# run.c:165:     *data = mmap(NULL, *file_size, PROT_READ, MAP_PRIVATE, *fd, 0);
	movq	0(%r13), %rsi	# *file_size_20(D), *file_size_20(D)
	xorl	%r9d, %r9d	#
	movl	$2, %ecx	#,
	xorl	%edi, %edi	#
	movl	$1, %edx	#,
	call	mmap@PLT	#
# run.c:165:     *data = mmap(NULL, *file_size, PROT_READ, MAP_PRIVATE, *fd, 0);
	movq	%rax, (%r15)	# _9, *data_26(D)
# run.c:166:     if (*data == MAP_FAILED) { fprintf(stderr, "mmap failed!\n"); exit(EXIT_FAILURE); }
	cmpq	$-1, %rax	#, _9
	je	.L26	#,
# run.c:168:     memory_map_weights(weights, config, weights_ptr, shared_weights);
	movl	12(%rsp), %ecx	# %sfp,
	movq	(%rsp), %rdi	# %sfp,
# run.c:169: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# run.c:168:     memory_map_weights(weights, config, weights_ptr, shared_weights);
	movq	%rbp, %rsi	# config,
# run.c:169: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
# run.c:167:     float* weights_ptr = *data + sizeof(Config)/sizeof(float);
	leaq	28(%rax), %rdx	#, weights_ptr
# run.c:169: }
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# run.c:168:     memory_map_weights(weights, config, weights_ptr, shared_weights);
	jmp	memory_map_weights	#
.L25:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC3(%rip), %rdi	#, tmp111
	call	fwrite@PLT	#
.L23:
# run.c:164:     if (*fd == -1) { fprintf(stderr, "open failed!\n"); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
.L24:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%r12, %rcx	# checkpoint,
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	leaq	.LC2(%rip), %rdx	#, tmp106
	call	__fprintf_chk@PLT	#
# run.c:152:     if (!file) { fprintf(stderr, "Couldn't open file %s\n", checkpoint); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
.L26:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC4(%rip), %rdi	#, tmp114
	call	fwrite@PLT	#
# run.c:166:     if (*data == MAP_FAILED) { fprintf(stderr, "mmap failed!\n"); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE6489:
	.size	read_checkpoint, .-read_checkpoint
	.p2align 4
	.globl	build_transformer
	.type	build_transformer, @function
build_transformer:
.LFB6490:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# run.c:171: void build_transformer(Transformer *t, char* checkpoint_path) {
	movq	%rdi, %rbx	# tmp95, t
	movq	%rsi, %rdi	# tmp96, checkpoint_path
# run.c:173:     read_checkpoint(checkpoint_path, &t->config, &t->weights, &t->fd, &t->data, &t->file_size);
	leaq	224(%rbx), %rcx	#, tmp92
	movq	%rbx, %rsi	# t,
	leaq	32(%rbx), %rdx	#, tmp93
	leaq	240(%rbx), %r9	#,
	leaq	232(%rbx), %r8	#,
	call	read_checkpoint	#
# run.c:175:     malloc_run_state(&t->state, &t->config);
	leaq	128(%rbx), %rdi	#, tmp94
	movq	%rbx, %rsi	# t,
# run.c:176: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# run.c:175:     malloc_run_state(&t->state, &t->config);
	jmp	malloc_run_state	#
	.cfi_endproc
.LFE6490:
	.size	build_transformer, .-build_transformer
	.p2align 4
	.globl	free_transformer
	.type	free_transformer, @function
free_transformer:
.LFB6491:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# run.c:178: void free_transformer(Transformer* t) {
	movq	%rdi, %rbx	# tmp108, t
# run.c:180:     if (t->data != MAP_FAILED) { munmap(t->data, t->file_size); }
	movq	232(%rdi), %rdi	# t_9(D)->data, _1
# run.c:180:     if (t->data != MAP_FAILED) { munmap(t->data, t->file_size); }
	cmpq	$-1, %rdi	#, _1
	je	.L30	#,
# run.c:180:     if (t->data != MAP_FAILED) { munmap(t->data, t->file_size); }
	movq	240(%rbx), %rsi	# t_9(D)->file_size, t_9(D)->file_size
	call	munmap@PLT	#
.L30:
# run.c:181:     if (t->fd != -1) { close(t->fd); }
	movl	224(%rbx), %edi	# t_9(D)->fd, _4
# run.c:181:     if (t->fd != -1) { close(t->fd); }
	cmpl	$-1, %edi	#, _4
	je	.L31	#,
# run.c:181:     if (t->fd != -1) { close(t->fd); }
	call	close@PLT	#
.L31:
# run.c:106:     free(s->x);
	movq	128(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].x, MEM[(struct RunState *)t_9(D) + 128B].x
	call	free@PLT	#
# run.c:107:     free(s->xb);
	movq	136(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].xb, MEM[(struct RunState *)t_9(D) + 128B].xb
	call	free@PLT	#
# run.c:108:     free(s->xb2);
	movq	144(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].xb2, MEM[(struct RunState *)t_9(D) + 128B].xb2
	call	free@PLT	#
# run.c:109:     free(s->hb);
	movq	152(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].hb, MEM[(struct RunState *)t_9(D) + 128B].hb
	call	free@PLT	#
# run.c:110:     free(s->hb2);
	movq	160(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].hb2, MEM[(struct RunState *)t_9(D) + 128B].hb2
	call	free@PLT	#
# run.c:111:     free(s->q);
	movq	168(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].q, MEM[(struct RunState *)t_9(D) + 128B].q
	call	free@PLT	#
# run.c:112:     free(s->att);
	movq	192(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].att, MEM[(struct RunState *)t_9(D) + 128B].att
	call	free@PLT	#
# run.c:113:     free(s->logits);
	movq	200(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].logits, MEM[(struct RunState *)t_9(D) + 128B].logits
	call	free@PLT	#
# run.c:114:     free(s->key_cache);
	movq	208(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].key_cache, MEM[(struct RunState *)t_9(D) + 128B].key_cache
	call	free@PLT	#
# run.c:115:     free(s->value_cache);
	movq	216(%rbx), %rdi	# MEM[(struct RunState *)t_9(D) + 128B].value_cache, MEM[(struct RunState *)t_9(D) + 128B].value_cache
# run.c:184: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# run.c:115:     free(s->value_cache);
	jmp	free@PLT	#
	.cfi_endproc
.LFE6491:
	.size	free_transformer, .-free_transformer
	.p2align 4
	.globl	rmsnorm
	.type	rmsnorm, @function
rmsnorm:
.LFB6492:
	.cfi_startproc
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
# run.c:195:     ss /= size;
	vxorps	%xmm3, %xmm3, %xmm3	# tmp293
# run.c:189: void rmsnorm(float* o, float* x, float* weight, int size) {
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movslq	%ecx, %rbx	# tmp291,
# run.c:195:     ss /= size;
	vcvtsi2ssl	%ebx, %xmm3, %xmm3	# size, tmp293, tmp294
# run.c:189: void rmsnorm(float* o, float* x, float* weight, int size) {
	subq	$32, %rsp	#,
# run.c:192:     for (int j = 0; j < size; j++) {
	testl	%ebx, %ebx	# size
	jle	.L82	#,
	leal	-1(%rbx), %r15d	#, _175
	movq	%rdi, %r13	# tmp288, o
	movq	%rsi, %r12	# tmp289, x
	movq	%rdx, %r14	# tmp290, weight
	movl	%ebx, %ecx	# size, niters.149
	cmpl	$6, %r15d	#, _175
	jbe	.L59	#,
	movl	%ebx, %edx	# size, bnd.150
	movq	%rsi, %rax	# x, ivtmp.193
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, tmp223
	addq	%rsi, %rdx	# x, _233
	.p2align 4,,10
	.p2align 3
.L42:
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%rax), %ymm5	# MEM <vector(8) float> [(float *)_157], tmp297
	addq	$32, %rax	#, ivtmp.193
	vmulps	%ymm5, %ymm5, %ymm1	#, tmp297, vect__5.156
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_33.157, ss, stmp_ss_33.157
	vshufps	$85, %xmm1, %xmm1, %xmm4	#, tmp225, tmp225, stmp_ss_33.157
	vshufps	$255, %xmm1, %xmm1, %xmm2	#, tmp225, tmp225, stmp_ss_33.157
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_ss_33.157, stmp_ss_33.157, stmp_ss_33.157
	vunpckhps	%xmm1, %xmm1, %xmm4	# tmp225, tmp225, stmp_ss_33.157
	vextractf128	$0x1, %ymm1, %xmm1	# vect__5.156, tmp229
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_ss_33.157, stmp_ss_33.157, stmp_ss_33.157
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_33.157, stmp_ss_33.157, stmp_ss_33.157
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp229, tmp229, stmp_ss_33.157
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_33.157, stmp_ss_33.157, stmp_ss_33.157
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_33.157, stmp_ss_33.157, stmp_ss_33.157
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp229, tmp229, stmp_ss_33.157
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp229, tmp229, stmp_ss_33.157
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_33.157, stmp_ss_33.157, stmp_ss_33.157
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_33.157, stmp_ss_33.157, ss
	cmpq	%rdx, %rax	# _233, ivtmp.193
	jne	.L42	#,
	movl	%ebx, %eax	# size, tmp.161
	andl	$-8, %eax	#, tmp.161
	movl	%eax, %edx	# tmp.161,
	cmpl	%eax, %ebx	# tmp.161, size
	je	.L43	#,
.L41:
	movl	%ebx, %esi	# size, niters.158
	subl	%edx, %esi	# niters_vector_mult_vf.151, niters.158
	leal	-1(%rsi), %edi	#, tmp235
	cmpl	$2, %edi	#, tmp235
	jbe	.L44	#,
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%r12,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.163_229], MEM <vector(4) float> [(float *)vectp_x.163_229]
	movl	%esi, %edx	# niters.158, niters_vector_mult_vf.160
	andl	$-4, %edx	#, niters_vector_mult_vf.160
# run.c:193:         ss += x[j] * x[j];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.163_229], MEM <vector(4) float> [(float *)vectp_x.163_229], vect__170.165
	addl	%edx, %eax	# niters_vector_mult_vf.160, tmp.161
	andl	$3, %esi	#, niters.158
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_171.166, ss, stmp_ss_171.166
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__170.165, vect__170.165, stmp_ss_171.166
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_171.166, stmp_ss_171.166, stmp_ss_171.166
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__170.165, vect__170.165, stmp_ss_171.166
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__170.165, vect__170.165, stmp_ss_171.166
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_171.166, stmp_ss_171.166, stmp_ss_171.166
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_171.166, stmp_ss_171.166, ss
	je	.L43	#,
.L44:
# run.c:193:         ss += x[j] * x[j];
	movslq	%eax, %rdx	# tmp.161, tmp.161
	vmovss	(%r12,%rdx,4), %xmm1	# *_18, _12
	leaq	0(,%rdx,4), %rsi	#, _21
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %edx	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _12, _12, tmp243
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp243, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%edx, %ebx	# j, size
	jle	.L43	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	4(%r12,%rsi), %xmm1	# *_52, _162
# run.c:192:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _162, _162, tmp245
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp245, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %ebx	# j, size
	jle	.L43	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	8(%r12,%rsi), %xmm1	# *_213, _214
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _214, _214, tmp247
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp247, ss, ss
.L43:
# run.c:195:     ss /= size;
	vdivss	%xmm3, %xmm0, %xmm0	# _81, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp249
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vucomiss	%xmm0, %xmm1	# ss, tmp249
	ja	.L77	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _7
.L48:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	.LC7(%rip), %xmm1	#, tmp250
	vdivss	%xmm0, %xmm1, %xmm1	# _7, tmp250, ss
	cmpl	$2, %r15d	#, _175
	jbe	.L50	#,
	leaq	4(%r12), %rdx	#, tmp251
	movq	%r13, %rax	# o, tmp252
	subq	%rdx, %rax	# tmp251, tmp252
	cmpq	$24, %rax	#, tmp252
	jbe	.L50	#,
	leaq	4(%r14), %rdx	#, tmp255
	movq	%r13, %rax	# o, tmp256
	subq	%rdx, %rax	# tmp255, tmp256
	cmpq	$24, %rax	#, tmp256
	jbe	.L50	#,
	cmpl	$6, %r15d	#, _175
	jbe	.L60	#,
	movl	%ebx, %edx	# size, bnd.122
	vshufps	$0, %xmm1, %xmm1, %xmm2	# ss, vect_cst__103
	xorl	%eax, %eax	# ivtmp.184
	vinsertf128	$1, %xmm2, %ymm2, %ymm2	# vect_cst__103, vect_cst__103
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, _43
	.p2align 4,,10
	.p2align 3
.L52:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r12,%rax), %ymm2, %ymm0	# MEM <vector(8) float> [(float *)x_29(D) + ivtmp.184_208 * 1], vect_cst__103, vect__15.131
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r14,%rax), %ymm0, %ymm0	# MEM <vector(8) float> [(float *)weight_28(D) + ivtmp.184_208 * 1], vect__15.131, vect__17.132
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%ymm0, 0(%r13,%rax)	# vect__17.132, MEM <vector(8) float> [(float *)o_30(D) + ivtmp.184_208 * 1]
	addq	$32, %rax	#, ivtmp.184
	cmpq	%rax, %rdx	# ivtmp.184, _43
	jne	.L52	#,
	movl	%ebx, %eax	# size, tmp.138
	andl	$-8, %eax	#, tmp.138
	movl	%eax, %edx	# tmp.138,
	cmpl	%ebx, %eax	# size, tmp.138
	je	.L81	#,
	movl	%ebx, %ecx	# size, niters.149
	subl	%eax, %ecx	# tmp.138, niters.149
	leal	-1(%rcx), %esi	#, tmp266
	cmpl	$2, %esi	#, tmp266
	jbe	.L55	#,
.L51:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vshufps	$0, %xmm1, %xmm1, %xmm0	# ss, tmp269
	vmulps	(%r12,%rdx,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp_x.143_144], tmp269, vect__20.145
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r14,%rdx,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp_weight.140_138], vect__20.145, vect__83.146
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%xmm0, 0(%r13,%rdx,4)	# vect__83.146, MEM <vector(4) float> [(float *)vectp_o.148_153]
	movl	%ecx, %edx	# niters.149, niters_vector_mult_vf.137
	andl	$-4, %edx	#, niters_vector_mult_vf.137
	addl	%edx, %eax	# niters_vector_mult_vf.137, tmp.138
	andl	$3, %ecx	#, niters.149
	je	.L81	#,
.L55:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movslq	%eax, %rcx	# tmp.138, tmp.138
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r12,%rcx,4), %xmm1, %xmm0	# *_34, ss, tmp276
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	0(,%rcx,4), %rdx	#, _3
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r14,%rcx,4), %xmm0, %xmm0	# *_4, tmp276, tmp277
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, 0(%r13,%rcx,4)	# tmp277, *_167
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %ebx	# j, size
	jle	.L81	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	4(%r12,%rdx), %xmm1, %xmm0	# *_13, ss, tmp279
# run.c:199:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	4(%r14,%rdx), %xmm0, %xmm0	# *_10, tmp279, tmp280
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, 4(%r13,%rdx)	# tmp280, *_16
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %ebx	# j, size
	jle	.L81	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%r12,%rdx), %xmm1, %xmm1	# *_120, ss, tmp282
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%r14,%rdx), %xmm1, %xmm1	# *_118, tmp282, tmp283
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 8(%r13,%rdx)	# tmp283, *_123
	vzeroupper
.L82:
# run.c:202: }
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L50:
	.cfi_restore_state
	salq	$2, %rbx	#, _219
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# ivtmp.179
	.p2align 4,,10
	.p2align 3
.L57:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r12,%rax), %xmm1, %xmm0	# MEM[(float *)x_29(D) + ivtmp.179_85 * 1], ss, tmp285
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r14,%rax), %xmm0, %xmm0	# MEM[(float *)weight_28(D) + ivtmp.179_85 * 1], tmp285, tmp286
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, 0(%r13,%rax)	# tmp286, MEM[(float *)o_30(D) + ivtmp.179_85 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.179
	cmpq	%rax, %rbx	# ivtmp.179, _219
	jne	.L57	#,
.L81:
	vzeroupper
	jmp	.L82	#
.L59:
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%edx, %edx	#
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.161
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
	jmp	.L41	#
.L60:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	xorl	%edx, %edx	#
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.138
	jmp	.L51	#
.L77:
	movl	%ecx, -52(%rbp)	# niters.149, %sfp
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vzeroupper
	call	sqrtf@PLT	#
	movl	-52(%rbp), %ecx	# %sfp, niters.149
	jmp	.L48	#
	.cfi_endproc
.LFE6492:
	.size	rmsnorm, .-rmsnorm
	.p2align 4
	.globl	softmax
	.type	softmax, @function
softmax:
.LFB6493:
	.cfi_startproc
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movl	%esi, %r13d	# tmp180, size
	pushq	%r12	#
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rdi, %r12	# tmp179, x
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
# run.c:206:     float max_val = x[0];
	vmovss	(%rdi), %xmm1	# *x_27(D), max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpl	$1, %esi	#, size
	jle	.L85	#,
	leal	-2(%rsi), %edx	#, tmp145
	leaq	4(%rdi), %rax	#, ivtmp.242
	leaq	8(%rdi,%rdx,4), %rdx	#, _23
	.p2align 4,,10
	.p2align 3
.L87:
# run.c:208:         if (x[i] > max_val) {
	vmovss	(%rax), %xmm0	# MEM[(float *)_4], _39
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.242
# run.c:209:             max_val = x[i];
	vmaxss	%xmm1, %xmm0, %xmm1	# max_val, _39, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rdx, %rax	# _23, ivtmp.242
	jne	.L87	#,
.L88:
	movslq	%r13d, %rax	# size, size
	movq	%r12, %r15	# x, ivtmp.229
# run.c:213:     float sum = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# sum
# run.c:209:             max_val = x[i];
	movq	%r12, %rbx	# x, ivtmp.236
	leaq	(%r12,%rax,4), %r14	#, _20
	.p2align 4,,10
	.p2align 3
.L90:
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	(%rbx), %xmm0	# MEM[(float *)_87], MEM[(float *)_87]
	vmovss	%xmm2, -56(%rbp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %rbx	#, ivtmp.236
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	%xmm1, -52(%rbp)	# max_val, %sfp
	vsubss	%xmm1, %xmm0, %xmm0	# max_val, MEM[(float *)_87], tmp150
	call	expf@PLT	#
# run.c:216:         sum += x[i];
	vmovss	-56(%rbp), %xmm2	# %sfp, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	vmovss	-52(%rbp), %xmm1	# %sfp, max_val
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	%xmm0, -4(%rbx)	# _10, MEM[(float *)_87]
# run.c:214:     for (int i = 0; i < size; i++) {
	cmpq	%rbx, %r14	# ivtmp.236, _20
# run.c:216:         sum += x[i];
	vaddss	%xmm0, %xmm2, %xmm2	# _10, sum, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	jne	.L90	#,
	leal	-1(%r13), %eax	#, tmp152
	cmpl	$6, %eax	#, tmp152
	jbe	.L98	#,
	movl	%r13d, %eax	# size, bnd.205
	vshufps	$0, %xmm2, %xmm2, %xmm1	# sum, vect_cst__77
	vinsertf128	$1, %xmm1, %ymm1, %ymm1	# vect_cst__77, vect_cst__77
	shrl	$3, %eax	#,
	salq	$5, %rax	#, tmp156
	addq	%r12, %rax	# x, _97
	.p2align 4,,10
	.p2align 3
.L93:
# run.c:220:         x[i] /= sum;
	vmovups	(%r15), %ymm3	# MEM <vector(8) float> [(float *)_96], tmp184
	addq	$32, %r15	#, ivtmp.229
	vdivps	%ymm1, %ymm3, %ymm0	# vect_cst__77, tmp184, vect__17.211
	vmovups	%ymm0, -32(%r15)	# vect__17.211, MEM <vector(8) float> [(float *)_96]
	cmpq	%r15, %rax	# ivtmp.229, _97
	jne	.L93	#,
	movl	%r13d, %eax	# size, tmp.217
	andl	$-8, %eax	#, tmp.217
	movl	%eax, %edx	# tmp.217,
	cmpl	%eax, %r13d	# tmp.217, size
	je	.L108	#,
	vzeroupper
.L92:
	movl	%r13d, %ecx	# size, niters.214
	subl	%edx, %ecx	# niters_vector_mult_vf.206, niters.214
	leal	-1(%rcx), %esi	#, tmp159
	cmpl	$2, %esi	#, tmp159
	jbe	.L95	#,
	leaq	(%r12,%rdx,4), %rdx	#, vectp_x.219
	vshufps	$0, %xmm2, %xmm2, %xmm0	# sum, tmp163
	vmovups	(%rdx), %xmm4	# MEM <vector(4) float> [(float *)vectp_x.219_107], tmp187
	vdivps	%xmm0, %xmm4, %xmm0	# tmp163, tmp187, vect__53.221
	vmovups	%xmm0, (%rdx)	# vect__53.221, MEM <vector(4) float> [(float *)vectp_x.219_107]
	movl	%ecx, %edx	# niters.214, niters_vector_mult_vf.216
	andl	$-4, %edx	#, niters_vector_mult_vf.216
	addl	%edx, %eax	# niters_vector_mult_vf.216, tmp.217
	andl	$3, %ecx	#, niters.214
	je	.L106	#,
.L95:
# run.c:220:         x[i] /= sum;
	movslq	%eax, %rdx	# tmp.217, tmp.217
	salq	$2, %rdx	#, _12
	leaq	(%r12,%rdx), %rcx	#, _13
# run.c:220:         x[i] /= sum;
	vmovss	(%rcx), %xmm0	# *_13, *_13
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_13, tmp168
	vmovss	%xmm0, (%rcx)	# tmp168, *_13
# run.c:219:     for (int i = 0; i < size; i++) {
	leal	1(%rax), %ecx	#, i
# run.c:219:     for (int i = 0; i < size; i++) {
	cmpl	%r13d, %ecx	# size, i
	jge	.L106	#,
# run.c:220:         x[i] /= sum;
	leaq	4(%r12,%rdx), %rcx	#, _53
# run.c:219:     for (int i = 0; i < size; i++) {
	addl	$2, %eax	#, i
# run.c:220:         x[i] /= sum;
	vmovss	(%rcx), %xmm0	# *_53, *_53
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_53, tmp172
	vmovss	%xmm0, (%rcx)	# tmp172, *_53
# run.c:219:     for (int i = 0; i < size; i++) {
	cmpl	%eax, %r13d	# i, size
	jle	.L106	#,
# run.c:220:         x[i] /= sum;
	leaq	8(%r12,%rdx), %rax	#, _91
# run.c:220:         x[i] /= sum;
	vmovss	(%rax), %xmm0	# *_91, *_91
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_91, tmp176
	vmovss	%xmm0, (%rax)	# tmp176, *_91
.L106:
# run.c:222: }
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L85:
	.cfi_restore_state
# run.c:214:     for (int i = 0; i < size; i++) {
	jne	.L106	#,
	jmp	.L88	#
	.p2align 4,,10
	.p2align 3
.L108:
	vzeroupper
	jmp	.L106	#
.L98:
	xorl	%edx, %edx	#
# run.c:219:     for (int i = 0; i < size; i++) {
	xorl	%eax, %eax	# tmp.217
	jmp	.L92	#
	.cfi_endproc
.LFE6493:
	.size	softmax, .-softmax
	.p2align 4
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB6494:
	.cfi_startproc
	endbr64	
# run.c:229:     for (i = 0; i < d; i++) {
	testl	%r8d, %r8d	# d
	jle	.L131	#,
# run.c:225: void matmul(float* xout, float* x, float* w, int n, int d) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%ecx, %r9d	# tmp297, n
	movslq	%r8d, %r8	# d, d
	movq	%rdi, %r11	# xout, ivtmp.292
	leal	-8(%r9), %eax	#, tmp219
	leaq	(%rdi,%r8,4), %r8	#, _26
	movq	%rdx, %r10	# tmp296, w
# run.c:233:         for (j = 0; j <= n - 8; j += 8) {
	xorl	%edi, %edi	# ivtmp.294
	shrl	$3, %eax	#, tmp220
	leal	-7(%rcx), %ecx	#, _150
# run.c:245:             val += temp[z]; 
	vxorps	%xmm2, %xmm2, %xmm2	# tmp292
# run.c:225: void matmul(float* xout, float* x, float* w, int n, int d) {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	leal	8(,%rax,8), %ebx	#, j
	.p2align 4,,10
	.p2align 3
.L111:
# run.c:233:         for (j = 0; j <= n - 8; j += 8) {
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:233:         for (j = 0; j <= n - 8; j += 8) {
	xorl	%r12d, %r12d	# j
# run.c:233:         for (j = 0; j <= n - 8; j += 8) {
	cmpl	$7, %r9d	#, n
	jle	.L119	#,
	movslq	%edi, %rax	# ivtmp.294, ivtmp.294
# run.c:230:         __m256 vector = _mm256_setzero_ps();
	vxorps	%xmm1, %xmm1, %xmm1	# vector
	leaq	(%r10,%rax,4), %rdx	#, _10
# run.c:234:             __m256 wvec = _mm256_loadu_ps(&w[i * n + j]);
	xorl	%eax, %eax	# ivtmp.284
	.p2align 4,,10
	.p2align 3
.L112:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:320:   return (__m256) ((__v8sf)__A * (__v8sf)__B);
	vmovups	(%rdx,%rax,4), %ymm5	# MEM[(__m256_u * {ref-all})_10 + ivtmp.284_210 * 4], tmp302
	vmulps	(%rsi,%rax,4), %ymm5, %ymm0	# MEM[(__m256_u * {ref-all})x_45(D) + ivtmp.284_210 * 4], tmp302, tmp226
# run.c:233:         for (j = 0; j <= n - 8; j += 8) {
	addq	$8, %rax	#, ivtmp.284
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:149:   return (__m256) ((__v8sf)__A + (__v8sf)__B);
	vaddps	%ymm0, %ymm1, %ymm1	# tmp226, vector, vector
# run.c:233:         for (j = 0; j <= n - 8; j += 8) {
	cmpl	%eax, %ecx	# ivtmp.284, _150
	jg	.L112	#,
# run.c:245:             val += temp[z]; 
	vaddss	%xmm2, %xmm1, %xmm0	# tmp292, tmp227, tmp229
	vshufps	$85, %xmm1, %xmm1, %xmm4	#, tmp228, tmp228, tmp231
	vshufps	$255, %xmm1, %xmm1, %xmm3	#, tmp228, tmp228, tmp237
	movl	%ebx, %r12d	# j, j
	vaddss	%xmm4, %xmm0, %xmm0	# tmp231, tmp229, tmp233
	vunpckhps	%xmm1, %xmm1, %xmm4	# tmp228, tmp228, tmp234
	vextractf128	$0x1, %ymm1, %xmm1	# vector, tmp241
	vaddss	%xmm4, %xmm0, %xmm0	# tmp234, tmp233, tmp236
	vaddss	%xmm3, %xmm0, %xmm0	# tmp237, tmp236, tmp239
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, tmp241, tmp241, tmp243
	vaddss	%xmm1, %xmm0, %xmm0	# tmp240, tmp239, tmp242
	vaddss	%xmm3, %xmm0, %xmm0	# tmp243, tmp242, tmp245
	vunpckhps	%xmm1, %xmm1, %xmm3	# tmp241, tmp241, tmp246
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp241, tmp241, tmp249
	vaddss	%xmm3, %xmm0, %xmm0	# tmp246, tmp245, tmp248
	vaddss	%xmm1, %xmm0, %xmm0	# tmp249, tmp248, val
.L119:
# run.c:247:         for (; j < n; j++)
	cmpl	%r12d, %r9d	# j, n
	jle	.L113	#,
	movl	%r9d, %r13d	# n, niters.253
	subl	%r12d, %r13d	# j, niters.253
	leal	-1(%r13), %eax	#, tmp251
	cmpl	$6, %eax	#, tmp251
	jbe	.L120	#,
	movslq	%r12d, %rax	# j, _159
# run.c:248:             val += w[i * n + j] * x[j];
	movslq	%edi, %rdx	# ivtmp.294, _11
	addq	%rax, %rdx	# _159, tmp253
# run.c:248:             val += w[i * n + j] * x[j];
	vmovups	(%rsi,%rax,4), %ymm1	# MEM <vector(8) float> [(float *)vectp.261_153], vect__20.262
	movl	%r13d, %eax	# niters.253, niters_vector_mult_vf.255
# run.c:248:             val += w[i * n + j] * x[j];
	vmulps	(%r10,%rdx,4), %ymm1, %ymm1	# MEM <vector(8) float> [(float *)vectp.258_161], vect__20.262, vect__21.263
	andl	$-8, %eax	#,
	leal	(%rax,%r12), %edx	#, tmp.256
	vaddss	%xmm0, %xmm1, %xmm0	# val, stmp_val_46.264, stmp_val_46.264
	vshufps	$85, %xmm1, %xmm1, %xmm4	#, tmp256, tmp256, stmp_val_46.264
	vshufps	$255, %xmm1, %xmm1, %xmm3	#, tmp256, tmp256, stmp_val_46.264
	vaddss	%xmm0, %xmm4, %xmm4	# stmp_val_46.264, stmp_val_46.264, stmp_val_46.264
	vunpckhps	%xmm1, %xmm1, %xmm0	# tmp256, tmp256, stmp_val_46.264
	vextractf128	$0x1, %ymm1, %xmm1	# vect__21.263, tmp260
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_val_46.264, stmp_val_46.264, stmp_val_46.264
	vaddss	%xmm0, %xmm3, %xmm3	# stmp_val_46.264, stmp_val_46.264, stmp_val_46.264
	vaddss	%xmm3, %xmm1, %xmm0	# stmp_val_46.264, stmp_val_46.264, stmp_val_46.264
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, tmp260, tmp260, stmp_val_46.264
	vaddss	%xmm0, %xmm3, %xmm3	# stmp_val_46.264, stmp_val_46.264, stmp_val_46.264
	vunpckhps	%xmm1, %xmm1, %xmm0	# tmp260, tmp260, stmp_val_46.264
# run.c:248:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp260, tmp260, stmp_val_46.264
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_46.264, stmp_val_46.264, stmp_val_46.264
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_46.264, stmp_val_46.264, val
	testb	$7, %r13b	#, niters.253
	je	.L113	#,
.L114:
	subl	%eax, %r13d	# niters_vector_mult_vf.255, niters.265
	leal	-1(%r13), %r14d	#, tmp267
	cmpl	$2, %r14d	#, tmp267
	jbe	.L116	#,
	movslq	%r12d, %r14	# j, _72
# run.c:248:             val += w[i * n + j] * x[j];
	movslq	%edi, %r12	# ivtmp.294, _11
	addq	%r14, %rax	# _72, tmp269
	addq	%rax, %r12	# tmp269, tmp270
# run.c:248:             val += w[i * n + j] * x[j];
	vmovups	(%rsi,%rax,4), %xmm1	# MEM <vector(4) float> [(float *)vectp.273_62], vect__179.274
	movl	%r13d, %eax	# niters.265, niters_vector_mult_vf.267
# run.c:248:             val += w[i * n + j] * x[j];
	vmulps	(%r10,%r12,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.270_75], vect__179.274, vect__178.275
	andl	$-4, %eax	#, niters_vector_mult_vf.267
	addl	%eax, %edx	# niters_vector_mult_vf.267, tmp.256
	andl	$3, %r13d	#, niters.265
	vaddss	%xmm0, %xmm1, %xmm0	# val, stmp_val_177.276, stmp_val_177.276
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, vect__178.275, vect__178.275, stmp_val_177.276
	vaddss	%xmm0, %xmm3, %xmm3	# stmp_val_177.276, stmp_val_177.276, stmp_val_177.276
	vunpckhps	%xmm1, %xmm1, %xmm0	# vect__178.275, vect__178.275, stmp_val_177.276
# run.c:248:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__178.275, vect__178.275, stmp_val_177.276
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_177.276, stmp_val_177.276, stmp_val_177.276
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_177.276, stmp_val_177.276, val
	je	.L113	#,
.L116:
# run.c:248:             val += w[i * n + j] * x[j];
	leal	(%rdi,%rdx), %eax	#, tmp279
# run.c:248:             val += w[i * n + j] * x[j];
	movslq	%edx, %r13	# tmp.256, tmp.256
# run.c:248:             val += w[i * n + j] * x[j];
	cltq
# run.c:248:             val += w[i * n + j] * x[j];
	leaq	0(,%r13,4), %r12	#, _19
# run.c:248:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rax,4), %xmm1	# *_16, *_16
	vmulss	(%rsi,%r13,4), %xmm1, %xmm1	# *_20, *_16, tmp281
# run.c:247:         for (; j < n; j++)
	leal	1(%rdx), %eax	#, j
# run.c:248:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp281, val, val
# run.c:247:         for (; j < n; j++)
	cmpl	%eax, %r9d	# j, n
	jle	.L113	#,
# run.c:248:             val += w[i * n + j] * x[j];
	addl	%edi, %eax	# ivtmp.294, tmp283
# run.c:247:         for (; j < n; j++)
	addl	$2, %edx	#, j
# run.c:248:             val += w[i * n + j] * x[j];
	cltq
# run.c:248:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rax,4), %xmm1	# *_181, *_181
	vmulss	4(%rsi,%r12), %xmm1, %xmm1	# *_176, *_181, tmp285
# run.c:248:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp285, val, val
# run.c:247:         for (; j < n; j++)
	cmpl	%edx, %r9d	# j, n
	jle	.L113	#,
# run.c:248:             val += w[i * n + j] * x[j];
	addl	%edi, %edx	# ivtmp.294, tmp287
	movslq	%edx, %rdx	# tmp287, tmp288
# run.c:248:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rdx,4), %xmm1	# *_117, *_117
	vmulss	8(%rsi,%r12), %xmm1, %xmm1	# *_113, *_117, tmp289
# run.c:248:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp289, val, val
.L113:
# run.c:250:         xout[i] = val;
	vmovss	%xmm0, (%r11)	# val, MEM[(float *)_12]
# run.c:229:     for (i = 0; i < d; i++) {
	addq	$4, %r11	#, ivtmp.292
	addl	%r9d, %edi	# n, ivtmp.294
	cmpq	%r11, %r8	# ivtmp.292, _26
	jne	.L111	#,
	vzeroupper
# run.c:252: }
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L120:
	.cfi_restore_state
# run.c:248:             val += w[i * n + j] * x[j];
	movl	%r12d, %edx	# j, tmp.256
	xorl	%eax, %eax	#
	jmp	.L114	#
.L131:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	ret	
	.cfi_endproc
.LFE6494:
	.size	matmul, .-matmul
	.p2align 4
	.globl	forward
	.type	forward, @function
forward:
.LFB6495:
	.cfi_startproc
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	pushq	%r14	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	movq	%rdi, %r14	# tmp1498, transformer
	pushq	%r13	#
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movl	%edx, %r13d	# tmp1500, pos
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$384, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
# run.c:272: float* forward(Transformer* transformer, int token, int pos) {
	movq	%rdi, -128(%rbp)	# transformer, %sfp
# run.c:279:     int dim = p->dim;
	movl	(%rdi), %eax	# MEM[(struct Config *)transformer_182(D)].dim, dim
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movl	12(%r14), %ecx	# MEM[(struct Config *)transformer_182(D)].n_heads, _3
# run.c:282:     int hidden_dim =  p->hidden_dim;
	movl	4(%r14), %r12d	# MEM[(struct Config *)transformer_182(D)].hidden_dim, hidden_dim
# run.c:272: float* forward(Transformer* transformer, int token, int pos) {
	movl	%edx, -148(%rbp)	# pos, %sfp
# run.c:278:     float *x = s->x;
	movq	128(%rdi), %r10	# MEM[(struct RunState *)transformer_182(D) + 128B].x, x
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movl	16(%rdi), %edi	# MEM[(struct Config *)transformer_182(D)].n_kv_heads, _1
# run.c:279:     int dim = p->dim;
	movl	%eax, %r11d	# dim, dim
# run.c:283:     int head_size = dim / p->n_heads;
	movslq	%r11d, %r9	# dim,
# run.c:282:     int hidden_dim =  p->hidden_dim;
	movl	%r12d, -280(%rbp)	# hidden_dim, %sfp
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	imull	%edi, %eax	# _1, tmp999
# run.c:283:     int head_size = dim / p->n_heads;
	movl	%r9d, -152(%rbp)	# dim, %sfp
	movq	%r9, %r15	#,
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	cltd
	idivl	%ecx	# _3
	movl	%eax, -292(%rbp)	# tmp999, %sfp
# run.c:281:     int kv_mul = p->n_heads / p->n_kv_heads; // integer multiplier of the kv sharing in multiquery
	movl	%ecx, %eax	# _3, tmp1002
	cltd
	idivl	%edi	# _1
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r10, %rdi	# x,
# run.c:281:     int kv_mul = p->n_heads / p->n_kv_heads; // integer multiplier of the kv sharing in multiquery
	movl	%eax, -208(%rbp)	# tmp1002, %sfp
# run.c:283:     int head_size = dim / p->n_heads;
	movl	%r11d, %eax	# dim, tmp1004
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	leaq	0(,%r9,4), %r11	#, _9
# run.c:283:     int head_size = dim / p->n_heads;
	cltd
	idivl	%ecx	# _3
	movl	%eax, -64(%rbp)	# tmp1004, %sfp
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	movl	%r9d, %eax	# dim, tmp1006
	imull	%esi, %eax	# tmp1499, tmp1006
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	movq	%r9, -80(%rbp)	# _8, %sfp
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	movq	32(%r14), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].token_embedding_table, MEM[(struct TransformerWeights *)transformer_182(D) + 32B].token_embedding_table
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r11, -264(%rbp)	# _9, %sfp
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	cltq
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	leaq	(%rdx,%rax,4), %rsi	#, content_row
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r11, %rdx	# _9,
	call	memcpy@PLT	#
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movl	8(%r14), %esi	# MEM[(struct Config *)transformer_182(D)].n_layers,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%rax, %r10	#, x
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	testl	%esi, %esi	#
	je	.L135	#,
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movl	%r13d, %edi	# pos, pos
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movslq	%r12d, %rdx	# hidden_dim, _126
# run.c:349:             memset(xb, 0, head_size * sizeof(float));
	movslq	-64(%rbp), %rax	# %sfp,
# run.c:195:     ss /= size;
	vxorps	%xmm6, %xmm6, %xmm6	# tmp1765
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movslq	-292(%rbp), %rsi	# %sfp,
# run.c:195:     ss /= size;
	vcvtsi2ssl	%r15d, %xmm6, %xmm2	# dim, tmp1765, tmp1510
# run.c:293:         rmsnorm(s->xb, x, w->rms_att_weight + l*dim, dim);
	movq	136(%r14), %r12	# MEM[(struct RunState *)transformer_182(D) + 128B].xb, prephitmp_640
# run.c:195:     ss /= size;
	movq	$0, -336(%rbp)	#, %sfp
# run.c:349:             memset(xb, 0, head_size * sizeof(float));
	movq	%rax, %rbx	#,
	movq	%rax, -216(%rbp)	# _310, %sfp
	leaq	0(,%rax,4), %r11	#, _316
# run.c:195:     ss /= size;
	movl	%r15d, %eax	# dim, dim
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	imull	%esi, %r13d	# tmp1000, tmp1016
	andl	$-8, %eax	#, _498
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movq	%rsi, -88(%rbp)	# _20, %sfp
	movl	%eax, -236(%rbp)	# _498, %sfp
# run.c:195:     ss /= size;
	movq	$0, -328(%rbp)	#, %sfp
	movq	$0, -304(%rbp)	#, %sfp
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movslq	%r13d, %r9	# tmp1016,
# run.c:345:             softmax(att, pos + 1);
	movl	%edi, %r13d	# pos, pos
	leal	1(%rdi), %edi	#, _34
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movq	%r9, -352(%rbp)	# _26, %sfp
	movq	-80(%rbp), %r9	# %sfp, _8
	movl	%r13d, %eax	# pos, _1063
	movq	%rax, -368(%rbp)	# _1063, %sfp
	movl	%ebx, %eax	# tmp1004, tmp1004
	movq	%r9, %rcx	# _8, tmp1017
	shrl	$3, %eax	#, bnd.522
	movq	%r9, -400(%rbp)	# _8, %sfp
	imulq	%rdx, %rcx	# _126, tmp1017
# run.c:345:             softmax(att, pos + 1);
	movl	%edi, -204(%rbp)	# _34, %sfp
# run.c:195:     ss /= size;
	movq	$0, -288(%rbp)	#, %sfp
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	$0, -312(%rbp)	#, %sfp
	salq	$2, %rcx	#, _1375
	movq	%rcx, -392(%rbp)	# _1375, %sfp
	movq	%r9, %rcx	# _8, tmp1018
	imulq	%r9, %rcx	# _8, tmp1018
	movq	%r12, %r9	# prephitmp_640, prephitmp_640
	salq	$2, %rcx	#, _1152
	movq	%rcx, -376(%rbp)	# _1152, %sfp
	movq	-264(%rbp), %rcx	# %sfp, _1156
	imulq	%rsi, %rcx	# _20, _1156
	movq	%rcx, -384(%rbp)	# _1156, %sfp
	leal	-1(%r15), %ecx	#, _1649
	movl	%ecx, -276(%rbp)	# _1649, %sfp
	movl	%r15d, %ecx	# dim, bnd.574
	shrl	$3, %ecx	#,
	salq	$5, %rcx	#, bnd.574
	movq	%rcx, -320(%rbp)	# _1347, %sfp
	addq	%r10, %rcx	# x, _1357
	movq	%rcx, -344(%rbp)	# _1357, %sfp
	leal	-1(%rbx), %ecx	#, _1393
	movl	%ecx, -96(%rbp)	# _1393, %sfp
	movl	%eax, %ecx	# bnd.522,
	movl	%ebx, %eax	# tmp1004, tmp1004
	andl	$-8, %ebx	#, _652
	salq	$5, %rcx	#, bnd.522
	movl	%ebx, -92(%rbp)	# _652, %sfp
	movl	%edi, %ebx	# _34, niters_vector_mult_vf.503
	movq	%rcx, %r14	# bnd.522, _1630
	movslq	%r13d, %rcx	# pos, pos
	andl	$-8, %ebx	#, niters_vector_mult_vf.503
	salq	$2, %rcx	#, _1566
	movl	%ebx, -240(%rbp)	# niters_vector_mult_vf.503, %sfp
	movq	%r14, %r15	# _1630, _1630
	movq	%rcx, -248(%rbp)	# _1566, %sfp
	movl	%edi, %ecx	# _34, bnd.502
	shrl	$3, %ecx	#,
	salq	$5, %rcx	#, bnd.502
	movq	%rcx, -256(%rbp)	# bnd.502, %sfp
	leaq	0(,%rsi,4), %rcx	#, _552
	movq	%rcx, -120(%rbp)	# _552, %sfp
	leaq	0(,%rdx,4), %rcx	#, _905
	movq	%rcx, -360(%rbp)	# _905, %sfp
	movl	%eax, %ecx	# tmp1004, tmp1004
	andl	$7, %eax	#, niters.487
	movl	%eax, -156(%rbp)	# niters.487, %sfp
	subl	$1, %eax	#, tmp1495
	movl	%ecx, %r12d	# tmp1004, tmp1004
	movl	%eax, -160(%rbp)	# tmp1495, %sfp
	movq	%r11, -408(%rbp)	# _316, %sfp
	vmovss	%xmm2, -296(%rbp)	# _642, %sfp
.L232:
# run.c:293:         rmsnorm(s->xb, x, w->rms_att_weight + l*dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	-152(%rbp), %ecx	# %sfp,
# run.c:293:         rmsnorm(s->xb, x, w->rms_att_weight + l*dim, dim);
	movq	40(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].rms_att_weight, _10
	movq	-304(%rbp), %rax	# %sfp, ivtmp.829
	salq	$2, %rax	#, _1157
	movq	%rax, -272(%rbp)	# _1157, %sfp
# run.c:192:     for (int j = 0; j < size; j++) {
	testl	%ecx, %ecx	#
	jle	.L136	#,
	cmpl	$6, -276(%rbp)	#, %sfp
	jbe	.L263	#,
# run.c:191:     float ss = 0.0f;
	movq	-344(%rbp), %rdx	# %sfp, _1357
# run.c:192:     for (int j = 0; j < size; j++) {
	movq	%r10, %rax	# x, ivtmp.819
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
.L138:
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%rax), %ymm6	# MEM <vector(8) float> [(float *)_1316], tmp1803
	addq	$32, %rax	#, ivtmp.819
	vmulps	%ymm6, %ymm6, %ymm3	#, tmp1803, vect__261.580
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_263.581, ss, stmp_ss_263.581
	vshufps	$85, %xmm3, %xmm3, %xmm1	#, tmp1027, tmp1027, stmp_ss_263.581
	vshufps	$255, %xmm3, %xmm3, %xmm4	#, tmp1027, tmp1027, stmp_ss_263.581
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_263.581, stmp_ss_263.581, stmp_ss_263.581
	vunpckhps	%xmm3, %xmm3, %xmm1	# tmp1027, tmp1027, stmp_ss_263.581
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_263.581, stmp_ss_263.581, stmp_ss_263.581
	vextractf128	$0x1, %ymm3, %xmm1	# vect__261.580, tmp1031
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, tmp1031, tmp1031, stmp_ss_263.581
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_ss_263.581, stmp_ss_263.581, stmp_ss_263.581
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_263.581, stmp_ss_263.581, stmp_ss_263.581
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_263.581, stmp_ss_263.581, stmp_ss_263.581
	vunpckhps	%xmm1, %xmm1, %xmm3	# tmp1031, tmp1031, stmp_ss_263.581
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp1031, tmp1031, stmp_ss_263.581
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_263.581, stmp_ss_263.581, stmp_ss_263.581
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_263.581, stmp_ss_263.581, ss
	cmpq	%rdx, %rax	# _1357, ivtmp.819
	jne	.L138	#,
	movl	-236(%rbp), %ecx	# %sfp, _498
	movl	%ecx, %edx	# _498,
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	%ecx, %eax	# _498, tmp.585
	cmpl	%ecx, -152(%rbp)	# _498, %sfp
	je	.L388	#,
.L137:
	movl	-152(%rbp), %esi	# %sfp, niters.582
	subl	%edx, %esi	# _1656, niters.582
	leal	-1(%rsi), %ecx	#, tmp1040
	cmpl	$2, %ecx	#, tmp1040
	jbe	.L142	#,
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%r10,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.587_1703], MEM <vector(4) float> [(float *)vectp_x.587_1703]
	movl	%esi, %edx	# niters.582, niters_vector_mult_vf.584
	andl	$-4, %edx	#, niters_vector_mult_vf.584
# run.c:193:         ss += x[j] * x[j];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.587_1703], MEM <vector(4) float> [(float *)vectp_x.587_1703], vect__1644.589
	addl	%edx, %eax	# niters_vector_mult_vf.584, tmp.585
	andl	$3, %esi	#, niters.582
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_1645.590, ss, stmp_ss_1645.590
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, vect__1644.589, vect__1644.589, stmp_ss_1645.590
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_1645.590, stmp_ss_1645.590, stmp_ss_1645.590
	vunpckhps	%xmm1, %xmm1, %xmm3	# vect__1644.589, vect__1644.589, stmp_ss_1645.590
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__1644.589, vect__1644.589, stmp_ss_1645.590
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_1645.590, stmp_ss_1645.590, stmp_ss_1645.590
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_1645.590, stmp_ss_1645.590, ss
	je	.L143	#,
.L142:
# run.c:193:         ss += x[j] * x[j];
	movslq	%eax, %rcx	# tmp.585, tmp.585
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	-152(%rbp), %edi	# %sfp, dim
# run.c:193:         ss += x[j] * x[j];
	vmovss	(%r10,%rcx,4), %xmm1	# *_286, _287
	leaq	0(,%rcx,4), %rdx	#, _285
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _287, _287, tmp1048
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1048, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %edi	# j, dim
	jle	.L143	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	4(%r10,%rdx), %xmm1	# *_424, _732
# run.c:192:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _732, _732, tmp1050
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1050, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %edi	# j, dim
	jle	.L143	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	8(%r10,%rdx), %xmm1	# *_1687, _1688
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _1688, _1688, tmp1052
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1052, ss, ss
.L143:
# run.c:195:     ss /= size;
	vdivss	-296(%rbp), %xmm0, %xmm0	# %sfp, ss, ss
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp1054
	vucomiss	%xmm0, %xmm1	# ss, tmp1054
	ja	.L139	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _269
.L145:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	.LC7(%rip), %xmm5	#, tmp1483
	cmpl	$2, -276(%rbp)	#, %sfp
	vdivss	%xmm0, %xmm5, %xmm0	# _269, tmp1483, ss
	jbe	.L146	#,
.L141:
	movq	-272(%rbp), %rcx	# %sfp, _1157
	movq	%r9, %rax	# prephitmp_640, tmp1071
	leaq	4(%rbx,%rcx), %rdx	#, tmp1070
	subq	%rdx, %rax	# tmp1070, tmp1071
	cmpq	$24, %rax	#, tmp1071
	jbe	.L146	#,
	leaq	4(%r10), %rdx	#, tmp1074
	movq	%r9, %rax	# prephitmp_640, tmp1075
	subq	%rdx, %rax	# tmp1074, tmp1075
	cmpq	$24, %rax	#, tmp1075
	jbe	.L146	#,
	cmpl	$6, -276(%rbp)	#, %sfp
	jbe	.L265	#,
	leaq	(%rbx,%rcx), %rdx	#, vectp.550
# run.c:192:     for (int j = 0; j < size; j++) {
	movq	-320(%rbp), %rcx	# %sfp, _1347
	vshufps	$0, %xmm0, %xmm0, %xmm3	# ss, vect_cst__1575
	xorl	%eax, %eax	# ivtmp.810
	vinsertf128	$1, %xmm3, %ymm3, %ymm3	# vect_cst__1575, vect_cst__1575
.L150:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r10,%rax), %ymm3, %ymm1	# MEM <vector(8) float> [(float *)x_184 + ivtmp.810_203 * 1], vect_cst__1575, vect__278.555
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rdx,%rax), %ymm1, %ymm1	# MEM <vector(8) float> [(float *)vectp.550_1567 + ivtmp.810_203 * 1], vect__278.555, vect__280.556
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%ymm1, (%r9,%rax)	# vect__280.556, MEM <vector(8) float> [(float *)prephitmp_640 + ivtmp.810_203 * 1]
	addq	$32, %rax	#, ivtmp.810
	cmpq	%rax, %rcx	# ivtmp.810, _1347
	jne	.L150	#,
	movl	-152(%rbp), %edx	# %sfp, dim
	movl	-236(%rbp), %esi	# %sfp, _498
	cmpl	%esi, %edx	# _498, dim
	je	.L136	#,
	subl	%esi, %edx	# _498, niters.559
	leal	-1(%rdx), %eax	#, tmp1083
	cmpl	$2, %eax	#, tmp1083
	jbe	.L153	#,
	movl	%esi, %eax	# _498,
.L149:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-304(%rbp), %rcx	# %sfp, ivtmp.829
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vshufps	$0, %xmm0, %xmm0, %xmm1	# ss, tmp1087
	vmulps	(%r10,%rax,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.567_1618], tmp1087, vect__1551.569
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	addq	%rax, %rcx	# _1612, tmp1084
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rbx,%rcx,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.564_1611], vect__1551.569, vect__1553.570
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%xmm1, (%r9,%rax,4)	# vect__1553.570, MEM <vector(4) float> [(float *)vectp_prephitmp.572_1627]
	movl	%edx, %eax	# niters.559, niters_vector_mult_vf.561
	andl	$-4, %eax	#, niters_vector_mult_vf.561
	addl	%eax, %esi	# niters_vector_mult_vf.561, tmp.562
	andl	$3, %edx	#, niters.559
	je	.L136	#,
.L153:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movslq	%esi, %rdx	# tmp.562, tmp.562
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-272(%rbp), %rdi	# %sfp, _1157
# run.c:199:     for (int j = 0; j < size; j++) {
	movl	-152(%rbp), %r11d	# %sfp, dim
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	0(,%rdx,4), %rax	#, _21
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r10,%rdx,4), %xmm0, %xmm1	# *_596, ss, tmp1093
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rbx,%rax), %rcx	#, tmp1094
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rcx,%rdi), %xmm1, %xmm1	# *_502, tmp1093, tmp1096
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%r9,%rdx,4)	# tmp1096, *_708
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	1(%rsi), %edx	#, j
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L136	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	4(%r10,%rax), %xmm0, %xmm1	# *_695, ss, tmp1098
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	4(%rbx,%rax), %rdx	#, tmp1099
# run.c:199:     for (int j = 0; j < size; j++) {
	addl	$2, %esi	#, j
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rdi), %xmm1, %xmm1	# *_697, tmp1098, tmp1101
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 4(%r9,%rax)	# tmp1101, *_688
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%esi, %r11d	# j, dim
	jle	.L136	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%r10,%rax), %xmm0, %xmm0	# *_1593, ss, tmp1105
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	addq	%rdi, %rbx	# _1157, tmp1103
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%rax,%rbx), %xmm0, %xmm0	# *_1591, tmp1105, tmp1106
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, 8(%r9,%rax)	# tmp1106, *_1596
.L136:
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movq	-128(%rbp), %r14	# %sfp, transformer
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movl	-292(%rbp), %edx	# %sfp, tmp1057
	movq	%r10, -112(%rbp)	# x, %sfp
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	%r9, %rsi	# prephitmp_640,
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movq	-352(%rbp), %rbx	# %sfp, _26
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	%r9, -64(%rbp)	# prephitmp_640, %sfp
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movl	24(%r14), %eax	# MEM[(struct Config *)transformer_182(D)].seq_len, pretmp_691
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movl	-152(%rbp), %r8d	# %sfp, dim
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	imull	%eax, %edx	# pretmp_691, tmp1057
	movl	%eax, -104(%rbp)	# pretmp_691, %sfp
	movl	-312(%rbp), %eax	# %sfp, tmp1819
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movl	%r8d, %ecx	# dim,
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	imull	%eax, %edx	# tmp1819, loff
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movslq	%edx, %rax	# loff, _24
	leaq	(%rax,%rbx), %rdx	#, tmp1059
	movq	%rax, -224(%rbp)	# _24, %sfp
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	168(%r14), %rbx	# MEM[(struct RunState *)transformer_182(D) + 128B].q, pretmp_689
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	leaq	0(,%rdx,4), %rax	#, _28
	vmovq	%rax, %xmm0	# _28, _28
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	-328(%rbp), %rax	# %sfp, tmp1062
	addq	56(%r14), %rax	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].wq, tmp1062
	movq	%rbx, %rdi	# pretmp_689,
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	vpunpcklqdq	%xmm0, %xmm0, %xmm0	# _28, tmp1061
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	%rax, %rdx	# tmp1062, tmp1062
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	vpaddq	208(%r14), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(float * *)transformer_182(D) + 208B], tmp1061, vect__29.618
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	vmovdqu	%xmm0, 176(%r14)	# vect__29.618, MEM <vector(2) long unsigned int> [(float * *)transformer_182(D) + 176B]
	vmovq	%xmm0, %r13	# vect__29.618, ivtmp.795
	vmovdqa	%xmm0, -80(%rbp)	# vect__29.618, %sfp
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	vzeroupper
	call	matmul	#
# run.c:302:         matmul(s->k, s->xb, w->wk + l*dim*kv_dim, dim, kv_dim);
	movq	-64(%rbp), %rsi	# %sfp,
	movq	%r13, %rdi	# ivtmp.795,
	movq	-336(%rbp), %rax	# %sfp, tmp1064
	movl	-292(%rbp), %r8d	# %sfp,
	addq	64(%r14), %rax	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].wk, tmp1064
	movl	-152(%rbp), %ecx	# %sfp,
	movq	%rax, %rdx	# tmp1064, tmp1064
	call	matmul	#
# run.c:303:         matmul(s->v, s->xb, w->wv + l*dim*kv_dim, dim, kv_dim);
	movq	-336(%rbp), %rax	# %sfp, tmp1066
	vmovdqa	-80(%rbp), %xmm0	# %sfp, vect__29.618
	addq	72(%r14), %rax	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].wv, tmp1066
	movl	-152(%rbp), %r14d	# %sfp, dim
	movl	-292(%rbp), %r8d	# %sfp,
	movq	-64(%rbp), %rsi	# %sfp,
	movq	%rax, %rdx	# tmp1066, tmp1066
	vpextrq	$1, %xmm0, %rdi	# vect__29.618, tmp1068
	movl	%r14d, %ecx	# dim,
	call	matmul	#
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	testl	%r14d, %r14d	# dim
	movq	-64(%rbp), %r9	# %sfp, prephitmp_640
	movl	-104(%rbp), %eax	# %sfp, pretmp_691
	movq	-112(%rbp), %r10	# %sfp, x
	jle	.L148	#,
# run.c:339:                 score /= sqrtf(head_size);
	vxorps	%xmm6, %xmm6, %xmm6	# tmp1854
	movl	-292(%rbp), %edi	# %sfp, tmp1000
	vcvtsi2ssl	%r12d, %xmm6, %xmm0	# tmp1004, tmp1854, tmp1511
	vmovss	%xmm0, -136(%rbp)	# tmp1511, %sfp
	testl	%edi, %edi	# tmp1000
	jle	.L268	#,
	movl	-152(%rbp), %ecx	# %sfp, dim
	vmovss	.LC7(%rip), %xmm5	#, tmp1483
	leaq	-52(%rbp), %rsi	#, tmp1481
	movq	%r10, -168(%rbp)	# x, %sfp
	vcvtsi2ssl	-148(%rbp), %xmm6, %xmm0	# %sfp, tmp1864, tmp1512
	movq	%rsi, -144(%rbp)	# tmp1481, %sfp
	leaq	-56(%rbp), %rsi	#, tmp1480
	cmpl	%edi, %ecx	# tmp1000, dim
	vmovss	%xmm5, -64(%rbp)	# tmp1483, %sfp
	vmovss	.LC8(%rip), %xmm5	#, tmp1484
	cmovle	%ecx, %edi	# dim,, _740
	movq	%rsi, -80(%rbp)	# tmp1480, %sfp
	movq	%rbx, %rcx	# pretmp_689, ivtmp.794
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	xorl	%r14d, %r14d	# i
	movq	%r9, -176(%rbp)	# prephitmp_640, %sfp
	movl	%eax, -192(%rbp)	# pretmp_691, %sfp
	movq	%rbx, -184(%rbp)	# pretmp_689, %sfp
	movl	%r14d, %ebx	# i, i
	movq	%rcx, %r14	# ivtmp.794, ivtmp.794
	movq	%r15, -200(%rbp)	# _1630, %sfp
	movq	%r13, %r15	# ivtmp.795, ivtmp.795
	movl	%edi, %r13d	# _740, _740
	vmovss	%xmm5, -112(%rbp)	# tmp1484, %sfp
	vmovss	%xmm0, -104(%rbp)	# tmp1512, %sfp
.L160:
# run.c:307:             int head_dim = i % head_size;
	movl	%ebx, %eax	# i, tmp1112
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	-112(%rbp), %xmm0	# %sfp,
	vxorps	%xmm5, %xmm5, %xmm5	# tmp1868
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addl	$2, %ebx	#, i
# run.c:307:             int head_dim = i % head_size;
	cltd
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addq	$8, %r14	#, ivtmp.794
	addq	$8, %r15	#, ivtmp.795
# run.c:307:             int head_dim = i % head_size;
	idivl	%r12d	# tmp1004
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vcvtsi2ssl	%edx, %xmm5, %xmm1	# head_dim, tmp1868, tmp1513
	vdivss	-136(%rbp), %xmm1, %xmm1	# %sfp, tmp1113,
	call	powf@PLT	#
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	-64(%rbp), %xmm5	# %sfp, tmp1483
	movq	-80(%rbp), %rsi	# %sfp,
	movq	-144(%rbp), %rdi	# %sfp,
	vdivss	%xmm0, %xmm5, %xmm0	# tmp1502, tmp1483, freq
# run.c:309:             float val = pos * freq;
	vmulss	-104(%rbp), %xmm0, %xmm0	# %sfp, freq, val
	call	sincosf@PLT	#
	vmovss	-56(%rbp), %xmm5	#, sincostmp_786
	vmovss	-52(%rbp), %xmm4	#, sincostmp_786
# run.c:315:                 float v0 = vec[i];
	vmovss	-8(%r14), %xmm0	# MEM[(float *)_1478], v0
# run.c:316:                 float v1 = vec[i+1];
	vmovss	-4(%r14), %xmm3	# MEM[(float *)_1478 + 4B], v1
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm0, %xmm5, %xmm1	# v0, sincostmp_786, tmp1123
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm3, %xmm4, %xmm6	# v1, sincostmp_786, tmp1124
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm0, %xmm4, %xmm0	# v0, sincostmp_786, tmp1126
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm3, %xmm5, %xmm3	# v1, sincostmp_786, tmp1127
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vsubss	%xmm6, %xmm1, %xmm1	# tmp1124, tmp1123, tmp1125
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vaddss	%xmm3, %xmm0, %xmm0	# tmp1127, tmp1126, tmp1128
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vunpcklps	%xmm0, %xmm1, %xmm1	# tmp1128, tmp1125, tmp1122
	vmovlps	%xmm1, -8(%r14)	# tmp1122, MEM <vector(2) float> [(float *)_1478]
# run.c:315:                 float v0 = vec[i];
	vmovss	-8(%r15), %xmm3	# *_675, v0
# run.c:316:                 float v1 = vec[i+1];
	vmovss	-4(%r15), %xmm0	# *_673, v1
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm5, %xmm3, %xmm1	# sincostmp_786, v0, tmp1130
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm4, %xmm0, %xmm6	# sincostmp_786, v1, tmp1131
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm4, %xmm3, %xmm3	# sincostmp_786, v0, tmp1134
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm5, %xmm0, %xmm0	# sincostmp_786, v1, tmp1133
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vsubss	%xmm6, %xmm1, %xmm1	# tmp1131, tmp1130, tmp1132
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vaddss	%xmm3, %xmm0, %xmm0	# tmp1134, tmp1133, tmp1135
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vunpcklps	%xmm0, %xmm1, %xmm1	# tmp1135, tmp1132, tmp1129
	vmovlps	%xmm1, -8(%r15)	# tmp1129, MEM <vector(2) float> [(float *)_675]
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	cmpl	%r13d, %ebx	# _740, i
	jl	.L160	#,
	movslq	%ebx, %r14	# i,
	movq	-168(%rbp), %r10	# %sfp, x
	movq	-176(%rbp), %r9	# %sfp, prephitmp_640
	movq	-184(%rbp), %rbx	# %sfp, pretmp_689
	movl	-192(%rbp), %eax	# %sfp, pretmp_691
	movq	-200(%rbp), %r15	# %sfp, _1630
	cmpl	%r14d, -152(%rbp)	# i, %sfp
	jle	.L148	#,
.L159:
	movq	%r10, -168(%rbp)	# x, %sfp
	movl	-152(%rbp), %r13d	# %sfp, dim
	movq	%r9, -176(%rbp)	# prephitmp_640, %sfp
	movl	%eax, -184(%rbp)	# pretmp_691, %sfp
	movq	%r15, -192(%rbp)	# _1630, %sfp
	movq	%rbx, %r15	# pretmp_689, pretmp_689
	movq	%r14, %rbx	# ivtmp.781, ivtmp.781
	movq	-144(%rbp), %r14	# %sfp, tmp1481
	.p2align 4,,10
	.p2align 3
.L162:
# run.c:307:             int head_dim = i % head_size;
	movl	%ebx, %eax	# ivtmp.781, tmp1139
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	-112(%rbp), %xmm0	# %sfp,
	vxorps	%xmm5, %xmm5, %xmm5	# tmp1879
# run.c:307:             int head_dim = i % head_size;
	cltd
	idivl	%r12d	# tmp1004
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vcvtsi2ssl	%edx, %xmm5, %xmm1	# head_dim, tmp1879, tmp1515
	vdivss	-136(%rbp), %xmm1, %xmm1	# %sfp, tmp1140,
	call	powf@PLT	#
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	-64(%rbp), %xmm5	# %sfp, tmp1483
	movq	-80(%rbp), %rsi	# %sfp,
	movq	%r14, %rdi	# tmp1481,
	vdivss	%xmm0, %xmm5, %xmm0	# tmp1503, tmp1483, freq
# run.c:309:             float val = pos * freq;
	vmulss	-104(%rbp), %xmm0, %xmm0	# %sfp, freq, val
	call	sincosf@PLT	#
# run.c:315:                 float v0 = vec[i];
	vmovss	(%r15,%rbx,4), %xmm3	# MEM[(float *)_37 + ivtmp.781_1412 * 4], v0
	vmovss	-56(%rbp), %xmm5	#, sincostmp_787
# run.c:316:                 float v1 = vec[i+1];
	vmovss	4(%r15,%rbx,4), %xmm0	# MEM[(float *)_37 + 4B + ivtmp.781_1412 * 4], v1
	vmovss	-52(%rbp), %xmm4	#, sincostmp_787
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm5, %xmm3, %xmm1	# sincostmp_787, v0, tmp1150
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm4, %xmm0, %xmm6	# sincostmp_787, v1, tmp1151
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm4, %xmm3, %xmm3	# sincostmp_787, v0, tmp1154
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm5, %xmm0, %xmm0	# sincostmp_787, v1, tmp1153
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vsubss	%xmm6, %xmm1, %xmm1	# tmp1151, tmp1150, tmp1152
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vaddss	%xmm3, %xmm0, %xmm0	# tmp1154, tmp1153, tmp1155
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vunpcklps	%xmm0, %xmm1, %xmm1	# tmp1155, tmp1152, tmp1149
	vmovlps	%xmm1, (%r15,%rbx,4)	# tmp1149, MEM <vector(2) float> [(float *)_37 + ivtmp.781_1412 * 4]
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addq	$2, %rbx	#, ivtmp.781
	cmpl	%ebx, %r13d	# ivtmp.781, dim
	jg	.L162	#,
	movq	%r15, %rbx	# pretmp_689, pretmp_689
	movq	-168(%rbp), %r10	# %sfp, x
	movq	-176(%rbp), %r9	# %sfp, prephitmp_640
	movl	-184(%rbp), %eax	# %sfp, pretmp_691
	movq	-192(%rbp), %r15	# %sfp, _1630
.L148:
	movq	-368(%rbp), %rcx	# %sfp, _1063
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	xorl	%r8d, %r8d	# ivtmp.775
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movl	$0, -144(%rbp)	#, %sfp
	addq	$1, %rcx	#, tmp1490
	movq	%rcx, -232(%rbp)	# tmp1490, %sfp
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movq	-128(%rbp), %rcx	# %sfp, transformer
	movl	12(%rcx), %edx	# MEM[(struct Config *)transformer_182(D)].n_heads,
	testl	%edx, %edx	#
	jle	.L158	#,
	movq	%r10, -416(%rbp)	# x, %sfp
	movq	-408(%rbp), %r14	# %sfp, _316
	movq	%rbx, %rdi	# pretmp_689, pretmp_689
	movq	%rcx, %rsi	# transformer, transformer
	.p2align 4,,10
	.p2align 3
.L157:
# run.c:329:             float* att = s->att + h * p->seq_len;
	movl	-144(%rbp), %edx	# %sfp, h
	leaq	0(,%r8,4), %rcx	#, _1411
	movq	%rcx, -112(%rbp)	# _1411, %sfp
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	192(%rsi), %rcx	# MEM[(struct RunState *)transformer_182(D) + 128B].att, _65
# run.c:329:             float* att = s->att + h * p->seq_len;
	imull	%edx, %eax	# h, tmp1156
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rcx, -168(%rbp)	# _65, %sfp
# run.c:329:             float* att = s->att + h * p->seq_len;
	movslq	%eax, %rbx	# tmp1156, _68
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movl	-148(%rbp), %eax	# %sfp,
# run.c:329:             float* att = s->att + h * p->seq_len;
	leaq	(%rcx,%rbx,4), %rcx	#, att
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rbx, -176(%rbp)	# _68, %sfp
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rcx, -136(%rbp)	# att, %sfp
	movq	%rcx, %r9	# att, att
# run.c:331:             for (int t = 0; t <= pos; t++) {
	testl	%eax, %eax	#
	js	.L164	#,
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movl	%edx, %eax	# h, tmp1159
# run.c:339:                 score /= sqrtf(head_size);
	vxorps	%xmm5, %xmm5, %xmm5	# tmp1895
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movq	208(%rsi), %r10	# MEM[(struct RunState *)transformer_182(D) + 128B].key_cache, pretmp_698
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	cltd
# run.c:339:                 score /= sqrtf(head_size);
	vcvtsi2ssl	%r12d, %xmm5, %xmm3	# tmp1004, tmp1895, tmp1516
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	idivl	-208(%rbp)	# %sfp
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	imull	%r12d, %eax	# tmp1004, tmp1161
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movslq	%eax, %rbx	# tmp1161, tmp1162
	movq	-224(%rbp), %rax	# %sfp, _24
	addq	%rax, %rbx	# _24, ivtmp.729
	movq	-232(%rbp), %rax	# %sfp, tmp1490
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	movq	%rbx, %r13	# ivtmp.729, ivtmp.766
	leaq	(%rcx,%rax,4), %rax	#, _663
	movq	%rax, -64(%rbp)	# _663, %sfp
	testl	%r12d, %r12d	# tmp1004
	jle	.L269	#,
.L176:
	cmpl	$6, -96(%rbp)	#, %sfp
	jbe	.L270	#,
	.p2align 4,,10
	.p2align 3
.L390:
	movq	-112(%rbp), %rax	# %sfp, _1411
	leaq	(%r10,%r13,4), %rdx	#, vectp.529
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
	leaq	(%rdi,%rax), %rsi	#, vectp.526
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	xorl	%eax, %eax	# ivtmp.755
	.p2align 4,,10
	.p2align 3
.L167:
# run.c:337:                     score += q[i] * k[i];
	vmovups	(%rsi,%rax), %ymm7	# MEM <vector(8) float> [(float *)vectp.526_1402 + ivtmp.755_1602 * 1], tmp1902
	vmulps	(%rdx,%rax), %ymm7, %ymm2	# MEM <vector(8) float> [(float *)vectp.529_1408 + ivtmp.755_1602 * 1], tmp1902, vect__83.531
	addq	$32, %rax	#, ivtmp.755
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_score_238.532, score, stmp_score_238.532
	vshufps	$85, %xmm2, %xmm2, %xmm0	#, tmp1168, tmp1168, stmp_score_238.532
	vshufps	$255, %xmm2, %xmm2, %xmm5	#, tmp1168, tmp1168, stmp_score_238.532
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_238.532, stmp_score_238.532, stmp_score_238.532
	vunpckhps	%xmm2, %xmm2, %xmm0	# tmp1168, tmp1168, stmp_score_238.532
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_238.532, stmp_score_238.532, stmp_score_238.532
	vextractf128	$0x1, %ymm2, %xmm0	# vect__83.531, tmp1172
	vshufps	$85, %xmm0, %xmm0, %xmm4	#, tmp1172, tmp1172, stmp_score_238.532
	vaddss	%xmm5, %xmm1, %xmm1	# stmp_score_238.532, stmp_score_238.532, stmp_score_238.532
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_238.532, stmp_score_238.532, stmp_score_238.532
	vaddss	%xmm4, %xmm1, %xmm1	# stmp_score_238.532, stmp_score_238.532, stmp_score_238.532
	vunpckhps	%xmm0, %xmm0, %xmm4	# tmp1172, tmp1172, stmp_score_238.532
# run.c:337:                     score += q[i] * k[i];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, tmp1172, tmp1172, stmp_score_238.532
	vaddss	%xmm4, %xmm1, %xmm1	# stmp_score_238.532, stmp_score_238.532, stmp_score_238.532
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_238.532, stmp_score_238.532, score
	cmpq	%r15, %rax	# _1630, ivtmp.755
	jne	.L167	#,
	movl	-92(%rbp), %edx	# %sfp, _652
	movl	%edx, %eax	# _652,
	cmpl	%eax, %r12d	# _652, tmp1004
	je	.L165	#,
.L166:
	movl	%r12d, %esi	# tmp1004, niters.533
	subl	%eax, %esi	# _1400, niters.533
	leal	-1(%rsi), %r11d	#, tmp1178
	cmpl	$2, %r11d	#, tmp1178
	jbe	.L170	#,
# run.c:337:                     score += q[i] * k[i];
	leaq	(%r8,%rax), %r11	#, tmp1179
# run.c:337:                     score += q[i] * k[i];
	addq	%r13, %rax	# ivtmp.766, tmp1181
	vmovups	(%r10,%rax,4), %xmm0	# MEM <vector(4) float> [(float *)vectp.541_1473], vect__1387.542
# run.c:337:                     score += q[i] * k[i];
	vmulps	(%rdi,%r11,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp.538_1465], vect__1387.542, vect__1388.543
	movl	%esi, %eax	# niters.533, niters_vector_mult_vf.535
	andl	$-4, %eax	#, niters_vector_mult_vf.535
	addl	%eax, %edx	# niters_vector_mult_vf.535, tmp.536
	andl	$3, %esi	#, niters.533
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_1389.544, score, stmp_score_1389.544
	vshufps	$85, %xmm0, %xmm0, %xmm4	#, vect__1388.543, vect__1388.543, stmp_score_1389.544
	vaddss	%xmm4, %xmm1, %xmm1	# stmp_score_1389.544, stmp_score_1389.544, stmp_score_1389.544
	vunpckhps	%xmm0, %xmm0, %xmm4	# vect__1388.543, vect__1388.543, stmp_score_1389.544
# run.c:337:                     score += q[i] * k[i];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, vect__1388.543, vect__1388.543, stmp_score_1389.544
	vaddss	%xmm4, %xmm1, %xmm1	# stmp_score_1389.544, stmp_score_1389.544, stmp_score_1389.544
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_1389.544, stmp_score_1389.544, score
	je	.L165	#,
.L170:
# run.c:337:                     score += q[i] * k[i];
	movslq	%edx, %rax	# tmp.536, _1298
# run.c:337:                     score += q[i] * k[i];
	leaq	0(%r13,%rax), %rsi	#, tmp1187
# run.c:337:                     score += q[i] * k[i];
	addq	%r8, %rax	# ivtmp.775, tmp1188
# run.c:337:                     score += q[i] * k[i];
	vmovss	(%r10,%rsi,4), %xmm0	# *_431, *_431
	vmulss	(%rdi,%rax,4), %xmm0, %xmm0	# *_1302, *_431, tmp1189
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	leal	1(%rdx), %eax	#, i
# run.c:337:                     score += q[i] * k[i];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp1189, score, score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	cmpl	%r12d, %eax	# tmp1004, i
	jge	.L165	#,
# run.c:337:                     score += q[i] * k[i];
	cltq
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	addl	$2, %edx	#, i
# run.c:337:                     score += q[i] * k[i];
	leaq	(%rax,%r8), %rsi	#, tmp1191
# run.c:337:                     score += q[i] * k[i];
	addq	%r13, %rax	# ivtmp.766, tmp1192
# run.c:337:                     score += q[i] * k[i];
	vmovss	(%rdi,%rsi,4), %xmm0	# *_110, *_110
	vmulss	(%r10,%rax,4), %xmm0, %xmm0	# *_1184, *_110, tmp1193
# run.c:337:                     score += q[i] * k[i];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp1193, score, score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	cmpl	%edx, %r12d	# i, tmp1004
	jle	.L165	#,
# run.c:337:                     score += q[i] * k[i];
	movslq	%edx, %rdx	# i, _1442
	leaq	(%r8,%rdx), %rax	#, tmp1195
# run.c:337:                     score += q[i] * k[i];
	addq	%r13, %rdx	# ivtmp.766, tmp1196
# run.c:337:                     score += q[i] * k[i];
	vmovss	(%rdi,%rax,4), %xmm0	# *_1445, *_1445
	vmulss	(%r10,%rdx,4), %xmm0, %xmm0	# *_1449, *_1445, tmp1197
# run.c:337:                     score += q[i] * k[i];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp1197, score, score
.L165:
	vxorps	%xmm0, %xmm0, %xmm0	# tmp1199
	vucomiss	%xmm3, %xmm0	# _84, tmp1199
	ja	.L377	#,
.L397:
	vsqrtss	%xmm3, %xmm3, %xmm0	# _84, _234
.L177:
# run.c:339:                 score /= sqrtf(head_size);
	vdivss	%xmm0, %xmm1, %xmm1	# _234, score, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movq	-88(%rbp), %rax	# %sfp, _20
	addq	$4, %r9	#, ivtmp.763
	addq	%rax, %r13	# _20, ivtmp.766
# run.c:341:                 att[t] = score;
	vmovss	%xmm1, -4(%r9)	# score, MEM[(float *)_1191]
# run.c:331:             for (int t = 0; t <= pos; t++) {
	cmpq	%r9, -64(%rbp)	# ivtmp.763, %sfp
	je	.L389	#,
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	testl	%r12d, %r12d	# tmp1004
	jle	.L177	#,
	cmpl	$6, -96(%rbp)	#, %sfp
	ja	.L390	#,
.L270:
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	xorl	%eax, %eax	#
	xorl	%edx, %edx	# tmp.536
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
	jmp	.L166	#
	.p2align 4,,10
	.p2align 3
.L389:
	vzeroupper
.L175:
# run.c:206:     float max_val = x[0];
	movq	-136(%rbp), %rax	# %sfp, att
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpl	$1, -204(%rbp)	#, %sfp
# run.c:206:     float max_val = x[0];
	vmovss	(%rax), %xmm1	# *att_225, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	jle	.L179	#,
	movq	-248(%rbp), %rdi	# %sfp, _1566
	leaq	(%rax,%rdi), %rdx	#, _1601
	.p2align 4,,10
	.p2align 3
.L181:
# run.c:208:         if (x[i] > max_val) {
	vmovss	4(%rax), %xmm0	# MEM[(float *)_1558 + 4B], _735
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.749
# run.c:209:             max_val = x[i];
	vmaxss	%xmm1, %xmm0, %xmm1	# max_val, _735, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rdx, %rax	# _1601, ivtmp.749
	jne	.L181	#,
.L179:
# run.c:209:             max_val = x[i];
	movq	-136(%rbp), %r13	# %sfp, ivtmp.743
# run.c:213:     float sum = 0.0f;
	vxorps	%xmm3, %xmm3, %xmm3	# sum
	vmovss	%xmm1, -104(%rbp)	# max_val, %sfp
	movq	%rcx, -184(%rbp)	# ivtmp.727, %sfp
	movq	%rbx, -192(%rbp)	# ivtmp.729, %sfp
	movq	-64(%rbp), %rbx	# %sfp, _663
	movl	%r12d, -200(%rbp)	# tmp1004, %sfp
	movq	%r13, %r12	# ivtmp.743, ivtmp.743
	movq	%r8, %r13	# ivtmp.775, ivtmp.775
	.p2align 4,,10
	.p2align 3
.L182:
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	(%r12), %xmm0	# MEM[(float *)_1719], MEM[(float *)_1719]
	vsubss	-104(%rbp), %xmm0, %xmm0	# %sfp, MEM[(float *)_1719], tmp1208
	vmovss	%xmm3, -80(%rbp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %r12	#, ivtmp.743
# run.c:215:         x[i] = expf(x[i] - max_val);
	call	expf@PLT	#
# run.c:216:         sum += x[i];
	vmovss	-80(%rbp), %xmm3	# %sfp, sum
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	%xmm0, -4(%r12)	# _297, MEM[(float *)_1719]
# run.c:216:         sum += x[i];
	vaddss	%xmm0, %xmm3, %xmm3	# _297, sum, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	cmpq	%r12, %rbx	# ivtmp.743, _663
	jne	.L182	#,
	cmpl	$6, -148(%rbp)	#, %sfp
	movq	-184(%rbp), %rcx	# %sfp, ivtmp.727
	movq	%r13, %r8	# ivtmp.775, ivtmp.775
	movq	-192(%rbp), %rbx	# %sfp, ivtmp.729
	movl	-200(%rbp), %r12d	# %sfp, tmp1004
	jbe	.L272	#,
	movq	-136(%rbp), %rax	# %sfp, att
	movq	-256(%rbp), %rdi	# %sfp, _1682
	vshufps	$0, %xmm3, %xmm3, %xmm1	# sum, vect_cst__1323
	vinsertf128	$1, %xmm1, %ymm1, %ymm1	# vect_cst__1323, vect_cst__1323
	leaq	(%rax,%rdi), %rdx	#, _1694
	.p2align 4,,10
	.p2align 3
.L184:
# run.c:220:         x[i] /= sum;
	vmovups	(%rax), %ymm5	# MEM <vector(8) float> [(float *)_54], tmp1920
	addq	$32, %rax	#, ivtmp.736
	vdivps	%ymm1, %ymm5, %ymm0	# vect_cst__1323, tmp1920, vect__307.508
	vmovups	%ymm0, -32(%rax)	# vect__307.508, MEM <vector(8) float> [(float *)_54]
	cmpq	%rdx, %rax	# _1694, ivtmp.736
	jne	.L184	#,
	testb	$7, -204(%rbp)	#, %sfp
	je	.L385	#,
	movl	-240(%rbp), %edx	# %sfp, niters_vector_mult_vf.503
	movl	%edx, %eax	# niters_vector_mult_vf.503,
	vzeroupper
.L183:
	movl	-148(%rbp), %edi	# %sfp, _1336
	subl	%eax, %edi	# _1315, _1336
	leal	1(%rdi), %esi	#, niters.511
	cmpl	$2, %edi	#, _1336
	jbe	.L186	#,
	movq	-176(%rbp), %rdi	# %sfp, _68
	vshufps	$0, %xmm3, %xmm3, %xmm0	# sum, tmp1218
	addq	%rdi, %rax	# _68, tmp1215
	movq	-168(%rbp), %rdi	# %sfp, _65
	leaq	(%rdi,%rax,4), %rax	#, vectp.516
	vmovups	(%rax), %xmm6	# MEM <vector(4) float> [(float *)vectp.516_1356], tmp1925
	vdivps	%xmm0, %xmm6, %xmm0	# tmp1218, tmp1925, vect__1304.518
	vmovups	%xmm0, (%rax)	# vect__1304.518, MEM <vector(4) float> [(float *)vectp.516_1356]
	movl	%esi, %eax	# niters.511, niters_vector_mult_vf.513
	andl	$-4, %eax	#, niters_vector_mult_vf.513
	addl	%eax, %edx	# niters_vector_mult_vf.513, tmp.514
	andl	$3, %esi	#, niters.511
	je	.L185	#,
.L186:
# run.c:220:         x[i] /= sum;
	movq	-136(%rbp), %rdi	# %sfp, att
	movslq	%edx, %rax	# tmp.514, tmp.514
# run.c:219:     for (int i = 0; i < size; i++) {
	movl	-148(%rbp), %r11d	# %sfp, pos
# run.c:220:         x[i] /= sum;
	salq	$2, %rax	#, _215
	leaq	(%rdi,%rax), %rsi	#, _195
# run.c:220:         x[i] /= sum;
	vmovss	(%rsi), %xmm0	# *_195, *_195
	vdivss	%xmm3, %xmm0, %xmm0	# sum, *_195, tmp1223
	vmovss	%xmm0, (%rsi)	# tmp1223, *_195
# run.c:219:     for (int i = 0; i < size; i++) {
	leal	1(%rdx), %esi	#, i
# run.c:219:     for (int i = 0; i < size; i++) {
	cmpl	%edx, %r11d	# tmp.514, pos
	jle	.L185	#,
# run.c:220:         x[i] /= sum;
	leaq	4(%rdi,%rax), %rdx	#, _465
# run.c:220:         x[i] /= sum;
	vmovss	(%rdx), %xmm0	# *_465, *_465
	vdivss	%xmm3, %xmm0, %xmm0	# sum, *_465, tmp1226
	vmovss	%xmm0, (%rdx)	# tmp1226, *_465
# run.c:219:     for (int i = 0; i < size; i++) {
	cmpl	%r11d, %esi	# pos, i
	jge	.L185	#,
# run.c:220:         x[i] /= sum;
	leaq	8(%rdi,%rax), %rax	#, _1341
# run.c:220:         x[i] /= sum;
	vmovss	(%rax), %xmm0	# *_1341, *_1341
	vdivss	%xmm3, %xmm0, %xmm0	# sum, *_1341, tmp1229
	vmovss	%xmm0, (%rax)	# tmp1229, *_1341
.L185:
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	-128(%rbp), %rax	# %sfp, transformer
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	-112(%rbp), %rdi	# %sfp, _1411
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	xorl	%esi, %esi	#
	movq	%r14, %rdx	# _316,
	movq	%r8, -80(%rbp)	# ivtmp.775, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	136(%rax), %r13	# MEM[(struct RunState *)transformer_182(D) + 128B].xb, _89
	movq	%rcx, -136(%rbp)	# ivtmp.727, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	addq	%r13, %rdi	# _89, _1411
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	call	memset@PLT	#
	testl	%r12d, %r12d	# tmp1004
	movq	-80(%rbp), %r8	# %sfp, ivtmp.775
	movq	%rax, %rdi	#, xb
# run.c:352:                 float* v = s->value_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	216(%rax), %r10	# MEM[(struct RunState *)transformer_182(D) + 128B].value_cache, _92
	jle	.L178	#,
	movq	%r13, -104(%rbp)	# _89, %sfp
	movq	-136(%rbp), %rcx	# %sfp, ivtmp.727
	leaq	(%r10,%rbx,4), %rax	#, ivtmp.730
	movl	-96(%rbp), %r13d	# %sfp, _1393
	.p2align 4,,10
	.p2align 3
.L193:
# run.c:354:                 float a = att[t];
	vmovss	(%rcx), %xmm1	# MEM[(float *)_1190], a
	cmpl	$2, %r13d	#, _1393
	jbe	.L273	#,
	leaq	4(%rax), %rdx	#, tmp1236
	movq	%rdi, %rsi	# xb, tmp1237
	subq	%rdx, %rsi	# tmp1236, tmp1237
	xorl	%edx, %edx	# ivtmp.715
	cmpq	$24, %rsi	#, tmp1237
	ja	.L391	#,
	.p2align 4,,10
	.p2align 3
.L197:
# run.c:357:                     xb[i] += a * v[i];
	vmulss	(%rax,%rdx), %xmm1, %xmm0	# MEM[(float *)_868 + ivtmp.715_593 * 1], a, tmp1270
# run.c:357:                     xb[i] += a * v[i];
	vaddss	(%rdi,%rdx), %xmm0, %xmm0	# MEM[(float *)xb_227 + ivtmp.715_593 * 1], tmp1270, tmp1271
	vmovss	%xmm0, (%rdi,%rdx)	# tmp1271, MEM[(float *)xb_227 + ivtmp.715_593 * 1]
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	addq	$4, %rdx	#, ivtmp.715
	cmpq	%r14, %rdx	# _316, ivtmp.715
	jne	.L197	#,
.L198:
# run.c:350:             for (int t = 0; t <= pos; t++) {
	movq	-88(%rbp), %rsi	# %sfp, _20
	addq	$4, %rcx	#, ivtmp.727
	addq	%rsi, %rbx	# _20, ivtmp.729
	movq	-120(%rbp), %rsi	# %sfp, _552
	addq	%rsi, %rax	# _552, ivtmp.730
	cmpq	%rcx, -64(%rbp)	# ivtmp.727, %sfp
	jne	.L193	#,
.L178:
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movq	-216(%rbp), %rcx	# %sfp, _310
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	addl	$1, -144(%rbp)	#, %sfp
	movl	-144(%rbp), %eax	# %sfp, h
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	addq	%rcx, %r8	# _310, ivtmp.775
	movq	-128(%rbp), %rcx	# %sfp, transformer
	cmpl	%eax, 12(%rcx)	# h, MEM[(struct Config *)transformer_182(D)].n_heads
	jle	.L392	#,
# run.c:327:             float* q = s->q + h * head_size;
	movq	168(%rcx), %rdi	# MEM[(struct RunState *)transformer_182(D) + 128B].q, pretmp_689
# run.c:329:             float* att = s->att + h * p->seq_len;
	movl	24(%rcx), %eax	# MEM[(struct Config *)transformer_182(D)].seq_len, pretmp_691
	movq	%rcx, %rsi	# transformer, transformer
	jmp	.L157	#
	.p2align 4,,10
	.p2align 3
.L391:
	cmpl	$6, %r13d	#, _1393
	jbe	.L275	#,
	vshufps	$0, %xmm1, %xmm1, %xmm3	# a, vect_cst__1222
	vinsertf128	$1, %xmm3, %ymm3, %ymm3	# vect_cst__1222, vect_cst__1222
	.p2align 4,,10
	.p2align 3
.L191:
# run.c:357:                     xb[i] += a * v[i];
	vmulps	(%rax,%rdx), %ymm3, %ymm0	# MEM <vector(8) float> [(float *)vectp.481_1212 + ivtmp.719_1066 * 1], vect_cst__1222, vect__109.483
# run.c:357:                     xb[i] += a * v[i];
	vaddps	(%rdi,%rdx), %ymm0, %ymm0	# MEM <vector(8) float> [(float *)xb_227 + ivtmp.719_1066 * 1], vect__109.483, vect__110.484
	vmovups	%ymm0, (%rdi,%rdx)	# vect__110.484, MEM <vector(8) float> [(float *)xb_227 + ivtmp.719_1066 * 1]
	addq	$32, %rdx	#, ivtmp.719
	cmpq	%r15, %rdx	# _1630, ivtmp.719
	jne	.L191	#,
	movl	-92(%rbp), %esi	# %sfp, _652
	cmpl	%esi, %r12d	# _652, tmp1004
	je	.L198	#,
	cmpl	$2, -160(%rbp)	#, %sfp
	movl	-156(%rbp), %r9d	# %sfp, niters.487
	jbe	.L276	#,
	movl	%esi, -80(%rbp)	# _652, %sfp
	movl	%esi, %edx	# _652,
.L190:
	movq	-104(%rbp), %r11	# %sfp, _89
	leaq	(%rdx,%r8), %rsi	#, tmp1244
# run.c:357:                     xb[i] += a * v[i];
	addq	%rbx, %rdx	# ivtmp.729, tmp1246
# run.c:357:                     xb[i] += a * v[i];
	vshufps	$0, %xmm1, %xmm1, %xmm0	# a, tmp1248
	vmulps	(%r10,%rdx,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp.495_1269], tmp1248, vect__1191.497
	movl	%r9d, %edx	# niters.487, niters_vector_mult_vf.489
	leaq	(%r11,%rsi,4), %rsi	#, vectp.492
	andl	$-4, %edx	#, niters_vector_mult_vf.489
# run.c:357:                     xb[i] += a * v[i];
	vaddps	(%rsi), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp.492_1261], vect__1191.497, vect__1192.498
	vmovups	%xmm0, (%rsi)	# vect__1192.498, MEM <vector(4) float> [(float *)vectp.492_1261]
	movl	-80(%rbp), %esi	# %sfp, i
	addl	%esi, %edx	# i, tmp.490
	andl	$3, %r9d	#, niters.487
	je	.L198	#,
.L195:
# run.c:357:                     xb[i] += a * v[i];
	movslq	%edx, %rsi	# tmp.490, _869
	leaq	0(,%rsi,4), %r9	#, _870
# run.c:357:                     xb[i] += a * v[i];
	addq	%rbx, %rsi	# ivtmp.729, tmp1254
# run.c:357:                     xb[i] += a * v[i];
	vmulss	(%r10,%rsi,4), %xmm1, %xmm0	# *_875, a, tmp1255
# run.c:357:                     xb[i] += a * v[i];
	leaq	(%rdi,%r9), %r11	#, _871
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	leal	1(%rdx), %esi	#, i
# run.c:357:                     xb[i] += a * v[i];
	vaddss	(%r11), %xmm0, %xmm0	# *_871, tmp1255, tmp1256
	vmovss	%xmm0, (%r11)	# tmp1256, *_871
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	cmpl	%esi, %r12d	# i, tmp1004
	jle	.L198	#,
# run.c:357:                     xb[i] += a * v[i];
	movslq	%esi, %rsi	# i, i
	leaq	4(%rdi,%r9), %r11	#, _1385
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	addl	$2, %edx	#, i
# run.c:357:                     xb[i] += a * v[i];
	addq	%rbx, %rsi	# ivtmp.729, tmp1260
# run.c:357:                     xb[i] += a * v[i];
	vmulss	(%r10,%rsi,4), %xmm1, %xmm0	# *_1390, a, tmp1261
# run.c:357:                     xb[i] += a * v[i];
	vaddss	(%r11), %xmm0, %xmm0	# *_1385, tmp1261, tmp1262
	vmovss	%xmm0, (%r11)	# tmp1262, *_1385
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	cmpl	%r12d, %edx	# tmp1004, i
	jge	.L198	#,
# run.c:357:                     xb[i] += a * v[i];
	movslq	%edx, %rdx	# i, i
	leaq	8(%rdi,%r9), %rsi	#, _1240
# run.c:357:                     xb[i] += a * v[i];
	addq	%rbx, %rdx	# ivtmp.729, tmp1266
# run.c:357:                     xb[i] += a * v[i];
	vmulss	(%r10,%rdx,4), %xmm1, %xmm1	# *_1244, a, tmp1267
# run.c:357:                     xb[i] += a * v[i];
	vaddss	(%rsi), %xmm1, %xmm1	# *_1240, tmp1267, tmp1268
	vmovss	%xmm1, (%rsi)	# tmp1268, *_1240
	jmp	.L198	#
	.p2align 4,,10
	.p2align 3
.L273:
# run.c:354:                 float a = att[t];
	xorl	%edx, %edx	# ivtmp.715
	jmp	.L197	#
.L275:
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	movl	$0, -80(%rbp)	#, %sfp
# run.c:354:                 float a = att[t];
	movl	%r12d, %r9d	# tmp1004, niters.487
	xorl	%edx, %edx	#
	jmp	.L190	#
.L276:
	movl	%esi, %edx	# _652, tmp.490
	jmp	.L195	#
.L392:
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	-416(%rbp), %r10	# %sfp, x
	movq	136(%rcx), %r9	# MEM[(struct RunState *)transformer_182(D) + 128B].xb, prephitmp_640
	vzeroupper
.L158:
	movq	-128(%rbp), %rax	# %sfp, transformer
	movl	-152(%rbp), %r14d	# %sfp, dim
	movq	%r9, %rsi	# prephitmp_640,
	movq	%r10, -80(%rbp)	# x, %sfp
	movq	-328(%rbp), %rdx	# %sfp, tmp1273
	movq	%r9, -64(%rbp)	# prephitmp_640, %sfp
	movq	144(%rax), %rbx	# MEM[(struct RunState *)transformer_182(D) + 128B].xb2, _115
	addq	80(%rax), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].wo, tmp1273
	movl	%r14d, %r8d	# dim,
	movl	%r14d, %ecx	# dim,
	movq	%rbx, %rdi	# _115,
	call	matmul	#
# run.c:366:         for (int i = 0; i < dim; i++) {
	testl	%r14d, %r14d	# dim
	movq	-64(%rbp), %r9	# %sfp, prephitmp_640
	movq	-80(%rbp), %r10	# %sfp, x
	jle	.L200	#,
	movl	-276(%rbp), %ecx	# %sfp, _1649
	cmpl	$2, %ecx	#, _1649
	jbe	.L277	#,
	leaq	4(%rbx), %rax	#, tmp1275
	movq	%r10, %rdx	# x, tmp1276
	subq	%rax, %rdx	# tmp1275, tmp1276
	xorl	%eax, %eax	# ivtmp.700
	cmpq	$24, %rdx	#, tmp1276
	ja	.L393	#,
	movq	-264(%rbp), %rdx	# %sfp, _9
.L207:
# run.c:367:             x[i] += s->xb2[i];
	vmovss	(%r10,%rax), %xmm0	# MEM[(float *)x_184 + ivtmp.700_620 * 1], MEM[(float *)x_184 + ivtmp.700_620 * 1]
	vaddss	(%rbx,%rax), %xmm0, %xmm0	# MEM[(float *)_115 + ivtmp.700_620 * 1], MEM[(float *)x_184 + ivtmp.700_620 * 1], tmp1296
	vmovss	%xmm0, (%r10,%rax)	# tmp1296, MEM[(float *)x_184 + ivtmp.700_620 * 1]
# run.c:366:         for (int i = 0; i < dim; i++) {
	addq	$4, %rax	#, ivtmp.700
	cmpq	%rax, %rdx	# ivtmp.700, _9
	jne	.L207	#,
.L208:
# run.c:371:         rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	cmpl	$6, -276(%rbp)	#, %sfp
	movq	48(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].rms_ffn_weight, _123
	jbe	.L281	#,
.L262:
# run.c:366:         for (int i = 0; i < dim; i++) {
	movq	-344(%rbp), %rdx	# %sfp, _1357
	movq	%r10, %rax	# x, ivtmp.690
	vxorps	%xmm0, %xmm0, %xmm0	# ss
.L212:
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%rax), %ymm5	# MEM <vector(8) float> [(float *)_356], tmp1976
	addq	$32, %rax	#, ivtmp.690
	vmulps	%ymm5, %ymm5, %ymm3	#, tmp1976, vect__315.436
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_317.437, ss, stmp_ss_317.437
	vshufps	$85, %xmm3, %xmm3, %xmm1	#, tmp1303, tmp1303, stmp_ss_317.437
	vshufps	$255, %xmm3, %xmm3, %xmm4	#, tmp1303, tmp1303, stmp_ss_317.437
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_317.437, stmp_ss_317.437, stmp_ss_317.437
	vunpckhps	%xmm3, %xmm3, %xmm1	# tmp1303, tmp1303, stmp_ss_317.437
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_317.437, stmp_ss_317.437, stmp_ss_317.437
	vextractf128	$0x1, %ymm3, %xmm1	# vect__315.436, tmp1307
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, tmp1307, tmp1307, stmp_ss_317.437
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_ss_317.437, stmp_ss_317.437, stmp_ss_317.437
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_317.437, stmp_ss_317.437, stmp_ss_317.437
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_317.437, stmp_ss_317.437, stmp_ss_317.437
	vunpckhps	%xmm1, %xmm1, %xmm3	# tmp1307, tmp1307, stmp_ss_317.437
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp1307, tmp1307, stmp_ss_317.437
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_317.437, stmp_ss_317.437, stmp_ss_317.437
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_317.437, stmp_ss_317.437, ss
	cmpq	%rdx, %rax	# _1357, ivtmp.690
	jne	.L212	#,
	movl	-236(%rbp), %eax	# %sfp, _498
	movl	%eax, %edx	# _498,
	cmpl	%eax, -152(%rbp)	# _498, %sfp
	je	.L213	#,
.L211:
	movl	-152(%rbp), %esi	# %sfp, niters.438
	subl	%edx, %esi	# _978, niters.438
	leal	-1(%rsi), %ecx	#, tmp1313
	cmpl	$2, %ecx	#, tmp1313
	jbe	.L214	#,
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%r10,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.443_1025], MEM <vector(4) float> [(float *)vectp_x.443_1025]
	movl	%esi, %edx	# niters.438, niters_vector_mult_vf.440
	andl	$-4, %edx	#, niters_vector_mult_vf.440
# run.c:193:         ss += x[j] * x[j];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.443_1025], MEM <vector(4) float> [(float *)vectp_x.443_1025], vect__966.445
	addl	%edx, %eax	# niters_vector_mult_vf.440, tmp.441
	andl	$3, %esi	#, niters.438
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_967.446, ss, stmp_ss_967.446
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, vect__966.445, vect__966.445, stmp_ss_967.446
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_967.446, stmp_ss_967.446, stmp_ss_967.446
	vunpckhps	%xmm1, %xmm1, %xmm3	# vect__966.445, vect__966.445, stmp_ss_967.446
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__966.445, vect__966.445, stmp_ss_967.446
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_967.446, stmp_ss_967.446, stmp_ss_967.446
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_967.446, stmp_ss_967.446, ss
	je	.L213	#,
.L214:
# run.c:193:         ss += x[j] * x[j];
	movslq	%eax, %rcx	# tmp.441, tmp.441
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	-152(%rbp), %edi	# %sfp, dim
# run.c:193:         ss += x[j] * x[j];
	vmovss	(%r10,%rcx,4), %xmm1	# *_224, _1065
	leaq	0(,%rcx,4), %rdx	#, _122
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _1065, _1065, tmp1321
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1321, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %edi	# j, dim
	jle	.L213	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	4(%r10,%rdx), %xmm1	# *_1075, _469
# run.c:192:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _469, _469, tmp1323
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1323, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %edi	# j, dim
	jle	.L213	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	8(%r10,%rdx), %xmm1	# *_1009, _1010
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _1010, _1010, tmp1325
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1325, ss, ss
.L213:
# run.c:195:     ss /= size;
	vdivss	-296(%rbp), %xmm0, %xmm0	# %sfp, ss, ss
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp1327
	vucomiss	%xmm0, %xmm1	# ss, tmp1327
	ja	.L371	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _323
.L218:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	.LC7(%rip), %xmm5	#, tmp1483
	movl	-276(%rbp), %ecx	# %sfp, _1649
	vdivss	%xmm0, %xmm5, %xmm0	# _323, tmp1483, ss
	vmovss	%xmm5, -64(%rbp)	# tmp1483, %sfp
	cmpl	$2, %ecx	#, _1649
	jbe	.L219	#,
	movq	-272(%rbp), %rdi	# %sfp, _1157
	movq	%r9, %rax	# prephitmp_640, tmp1331
	leaq	4(%rbx,%rdi), %rdx	#, tmp1330
	subq	%rdx, %rax	# tmp1330, tmp1331
	cmpq	$24, %rax	#, tmp1331
	jbe	.L219	#,
	leaq	4(%r10), %rdx	#, tmp1334
	movq	%r9, %rax	# prephitmp_640, tmp1335
	subq	%rdx, %rax	# tmp1334, tmp1335
	cmpq	$24, %rax	#, tmp1335
	jbe	.L219	#,
	cmpl	$6, %ecx	#, _1649
	jbe	.L282	#,
	movq	-320(%rbp), %rcx	# %sfp, _1347
	vshufps	$0, %xmm0, %xmm0, %xmm3	# ss, vect_cst__897
	leaq	(%rbx,%rdi), %rdx	#, tmp1479
	xorl	%eax, %eax	# ivtmp.681
	vinsertf128	$1, %xmm3, %ymm3, %ymm3	# vect_cst__897, vect_cst__897
.L221:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r10,%rax), %ymm3, %ymm1	# MEM <vector(8) float> [(float *)x_184 + ivtmp.681_534 * 1], vect_cst__897, vect__332.411
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rdx,%rax), %ymm1, %ymm1	# MEM <vector(8) float> [(float *)vectp.406_889 + ivtmp.681_534 * 1], vect__332.411, vect__334.412
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%ymm1, (%r9,%rax)	# vect__334.412, MEM <vector(8) float> [(float *)prephitmp_749 + ivtmp.681_534 * 1]
	addq	$32, %rax	#, ivtmp.681
	cmpq	%rcx, %rax	# _1347, ivtmp.681
	jne	.L221	#,
	movl	-152(%rbp), %eax	# %sfp, dim
	movl	-236(%rbp), %esi	# %sfp, _498
	cmpl	%esi, %eax	# _498, dim
	je	.L228	#,
	subl	%esi, %eax	# _498, niters.415
	leal	-1(%rax), %ecx	#, tmp1347
	cmpl	$2, %ecx	#, tmp1347
	jbe	.L225	#,
	movl	%esi, %edx	# _498,
.L220:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-304(%rbp), %rcx	# %sfp, ivtmp.829
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vshufps	$0, %xmm0, %xmm0, %xmm1	# ss, tmp1351
	vmulps	(%r10,%rdx,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.423_940], tmp1351, vect__873.425
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	addq	%rdx, %rcx	# _934, tmp1348
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rbx,%rcx,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.420_933], vect__873.425, vect__875.426
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%xmm1, (%r9,%rdx,4)	# vect__875.426, MEM <vector(4) float> [(float *)vectp_prephitmp.428_949]
	movl	%eax, %edx	# niters.415, niters_vector_mult_vf.417
	andl	$-4, %edx	#, niters_vector_mult_vf.417
	addl	%edx, %esi	# niters_vector_mult_vf.417, tmp.418
	testb	$3, %al	#, niters.415
	je	.L228	#,
	movq	-272(%rbp), %rax	# %sfp, _1157
	leaq	(%rbx,%rax), %rdx	#, tmp1479
.L225:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movslq	%esi, %rcx	# tmp.418, tmp.418
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r10,%rcx,4), %xmm0, %xmm1	# *_1552, ss, tmp1359
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	0(,%rcx,4), %rax	#, _1548
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rax), %xmm1, %xmm1	# *_1550, tmp1359, tmp1360
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	1(%rsi), %edx	#, j
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%r9,%rcx,4)	# tmp1360, *_466
# run.c:199:     for (int j = 0; j < size; j++) {
	movl	-152(%rbp), %ecx	# %sfp, dim
	cmpl	%edx, %ecx	# j, dim
	jle	.L228	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-272(%rbp), %rdi	# %sfp, _1157
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	4(%r10,%rax), %xmm0, %xmm1	# *_965, ss, tmp1365
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	4(%rbx,%rax), %rdx	#, tmp1363
# run.c:199:     for (int j = 0; j < size; j++) {
	addl	$2, %esi	#, j
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rdi), %xmm1, %xmm1	# *_963, tmp1365, tmp1366
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 4(%r9,%rax)	# tmp1366, *_432
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %esi	# dim, j
	jge	.L228	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%r10,%rax), %xmm0, %xmm0	# *_915, ss, tmp1371
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	8(%rbx,%rax), %rdx	#, tmp1369
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rdi), %xmm0, %xmm0	# *_913, tmp1371, tmp1372
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, 8(%r9,%rax)	# tmp1372, *_918
.L228:
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	-128(%rbp), %rbx	# %sfp, transformer
	movq	%r10, -112(%rbp)	# x, %sfp
	movq	%r9, %rsi	# prephitmp_640,
	movq	%r9, -80(%rbp)	# prephitmp_640, %sfp
	movq	-288(%rbp), %r13	# %sfp, ivtmp.826
	movq	152(%rbx), %rax	# MEM[(struct RunState *)transformer_182(D) + 128B].hb, _1296
	movq	88(%rbx), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].w1, tmp1343
	movl	-280(%rbp), %r8d	# %sfp,
	movl	-152(%rbp), %ecx	# %sfp,
	movq	%rax, -104(%rbp)	# _1296, %sfp
	addq	%r13, %rdx	# ivtmp.826, tmp1343
	movq	%rax, %rdi	# _1296,
	vzeroupper
	call	matmul	#
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	movq	104(%rbx), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].w3, tmp1345
	movq	-80(%rbp), %rsi	# %sfp,
	movq	160(%rbx), %r14	# MEM[(struct RunState *)transformer_182(D) + 128B].hb2, _922
	movl	-280(%rbp), %ebx	# %sfp, hidden_dim
	movl	-152(%rbp), %ecx	# %sfp,
	addq	%r13, %rdx	# ivtmp.826, tmp1345
	movl	%ebx, %r8d	# hidden_dim,
	movq	%r14, %rdi	# _922,
	call	matmul	#
# run.c:379:         for (int i = 0; i < hidden_dim; i++) {
	testl	%ebx, %ebx	# hidden_dim
	movq	-80(%rbp), %r9	# %sfp, prephitmp_640
	movq	-104(%rbp), %rax	# %sfp, _1296
	movq	-112(%rbp), %r10	# %sfp, x
	jle	.L394	#,
.L209:
	movq	-360(%rbp), %rbx	# %sfp, _905
	movq	%r10, -104(%rbp)	# x, %sfp
	movq	%rax, %r13	# _1296, ivtmp.666
	movq	%r9, -112(%rbp)	# prephitmp_640, %sfp
	movq	%rax, -136(%rbp)	# _1296, %sfp
	addq	%rax, %rbx	# _1296, _684
	movl	%r12d, %eax	# tmp1004, tmp1004
	movq	%r13, %r12	# ivtmp.666, ivtmp.666
	movq	%r14, %r13	# ivtmp.667, ivtmp.667
	movl	%eax, %r14d	# tmp1004, tmp1004
	.p2align 4,,10
	.p2align 3
.L231:
# run.c:380:             float val = s->hb[i];
	vmovss	(%r12), %xmm1	# MEM[(float *)_1346], val
# run.c:379:         for (int i = 0; i < hidden_dim; i++) {
	addq	$4, %r12	#, ivtmp.666
	addq	$4, %r13	#, ivtmp.667
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vxorps	.LC9(%rip), %xmm1, %xmm0	#, val, tmp1378
	vmovss	%xmm1, -80(%rbp)	# val, %sfp
	call	expf@PLT	#
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vmovss	-64(%rbp), %xmm5	# %sfp, tmp1483
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vmovss	-80(%rbp), %xmm1	# %sfp, val
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vaddss	%xmm5, %xmm0, %xmm0	# tmp1483, tmp1507, tmp1380
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vdivss	%xmm0, %xmm5, %xmm0	# tmp1380, tmp1483, tmp1382
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vmulss	%xmm1, %xmm0, %xmm0	# val, tmp1382, val
# run.c:384:             val *= s->hb2[i];
	vmulss	-4(%r13), %xmm0, %xmm0	# MEM[(float *)_1113], val, val
# run.c:385:             s->hb[i] = val;
	vmovss	%xmm0, -4(%r12)	# val, MEM[(float *)_1346]
# run.c:379:         for (int i = 0; i < hidden_dim; i++) {
	cmpq	%rbx, %r12	# _684, ivtmp.666
	jne	.L231	#,
	movq	-104(%rbp), %r10	# %sfp, x
	movq	-112(%rbp), %r9	# %sfp, prephitmp_640
	movl	%r14d, %r12d	# tmp1004, tmp1004
	movq	-136(%rbp), %rax	# %sfp, _1296
.L210:
# run.c:389:         matmul(s->xb, s->hb, w->w2 + l*dim*hidden_dim, hidden_dim, dim);
	movq	-128(%rbp), %rbx	# %sfp, transformer
	movl	-280(%rbp), %ecx	# %sfp,
	movq	%r9, %rdi	# prephitmp_640,
	movq	%rax, %rsi	# _1296,
	movq	-288(%rbp), %rdx	# %sfp, tmp1376
	movq	%r10, -80(%rbp)	# x, %sfp
	addq	96(%rbx), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].w2, tmp1376
	movl	-152(%rbp), %ebx	# %sfp, dim
	movq	%r9, -64(%rbp)	# prephitmp_640, %sfp
	movl	%ebx, %r8d	# dim,
	call	matmul	#
# run.c:392:         for (int i = 0; i < dim; i++) {
	testl	%ebx, %ebx	# dim
	movq	-64(%rbp), %r9	# %sfp, prephitmp_640
	movq	-80(%rbp), %r10	# %sfp, x
	jle	.L230	#,
.L229:
	movl	-276(%rbp), %ecx	# %sfp, _1649
	cmpl	$2, %ecx	#, _1649
	jbe	.L284	#,
	leaq	4(%r9), %rax	#, tmp1388
	movq	%r10, %rdx	# x, tmp1389
	subq	%rax, %rdx	# tmp1388, tmp1389
# run.c:392:         for (int i = 0; i < dim; i++) {
	xorl	%eax, %eax	# ivtmp.654
	cmpq	$24, %rdx	#, tmp1389
	ja	.L395	#,
	movq	-264(%rbp), %rdx	# %sfp, _9
.L241:
# run.c:393:             x[i] += s->xb[i];
	vmovss	(%r10,%rax), %xmm0	# MEM[(float *)x_184 + ivtmp.654_393 * 1], MEM[(float *)x_184 + ivtmp.654_393 * 1]
	vaddss	(%r9,%rax), %xmm0, %xmm0	# MEM[(float *)prephitmp_749 + ivtmp.654_393 * 1], MEM[(float *)x_184 + ivtmp.654_393 * 1], tmp1409
	vmovss	%xmm0, (%r10,%rax)	# tmp1409, MEM[(float *)x_184 + ivtmp.654_393 * 1]
# run.c:392:         for (int i = 0; i < dim; i++) {
	addq	$4, %rax	#, ivtmp.654
	cmpq	%rax, %rdx	# ivtmp.654, _9
	jne	.L241	#,
.L230:
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	-128(%rbp), %rax	# %sfp, transformer
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	addq	$1, -312(%rbp)	#, %sfp
	movq	-312(%rbp), %rcx	# %sfp, l
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	-392(%rbp), %rbx	# %sfp, _1375
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movslq	8(%rax), %rax	# MEM[(struct Config *)transformer_182(D)].n_layers, MEM[(struct Config *)transformer_182(D)].n_layers
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	addq	%rbx, -288(%rbp)	# _1375, %sfp
	movq	-400(%rbp), %rbx	# %sfp, _8
	addq	%rbx, -304(%rbp)	# _8, %sfp
	movq	-376(%rbp), %rbx	# %sfp, _1152
	addq	%rbx, -328(%rbp)	# _1152, %sfp
	movq	-384(%rbp), %rbx	# %sfp, _1156
	addq	%rbx, -336(%rbp)	# _1156, %sfp
	cmpq	%rax, %rcx	# MEM[(struct Config *)transformer_182(D)].n_layers, l
	jb	.L232	#,
	vmovss	-296(%rbp), %xmm2	# %sfp, _642
.L233:
# run.c:398:     rmsnorm(x, x, w->rms_final_weight, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	112(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].rms_final_weight, _153
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	-152(%rbp), %eax	# %sfp, dim
	testl	%eax, %eax	# dim
	jle	.L243	#,
	leal	-1(%rax), %r13d	#, _533
	movl	%eax, %r12d	# dim, niters.357
	cmpl	$6, %r13d	#, _533
	jbe	.L288	#,
	shrl	$3, %eax	#,
	movq	%r10, %rdx	# x, ivtmp.647
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
	salq	$5, %rax	#, tmp1413
	addq	%r10, %rax	# x, _921
.L245:
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%rdx), %ymm5	# MEM <vector(8) float> [(float *)_1013], tmp2046
	addq	$32, %rdx	#, ivtmp.647
	vmulps	%ymm5, %ymm5, %ymm3	#, tmp2046, vect__341.364
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_343.365, ss, stmp_ss_343.365
	vshufps	$85, %xmm3, %xmm3, %xmm1	#, tmp1415, tmp1415, stmp_ss_343.365
	vaddss	%xmm0, %xmm1, %xmm0	# stmp_ss_343.365, stmp_ss_343.365, stmp_ss_343.365
	vunpckhps	%xmm3, %xmm3, %xmm1	# tmp1415, tmp1415, stmp_ss_343.365
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_ss_343.365, stmp_ss_343.365, stmp_ss_343.365
	vshufps	$255, %xmm3, %xmm3, %xmm0	#, tmp1415, tmp1415, stmp_ss_343.365
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_343.365, stmp_ss_343.365, stmp_ss_343.365
	vextractf128	$0x1, %ymm3, %xmm1	# vect__341.364, tmp1419
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, tmp1419, tmp1419, stmp_ss_343.365
	vaddss	%xmm0, %xmm1, %xmm0	# stmp_ss_343.365, stmp_ss_343.365, stmp_ss_343.365
	vaddss	%xmm0, %xmm3, %xmm3	# stmp_ss_343.365, stmp_ss_343.365, stmp_ss_343.365
	vunpckhps	%xmm1, %xmm1, %xmm0	# tmp1419, tmp1419, stmp_ss_343.365
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp1419, tmp1419, stmp_ss_343.365
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_343.365, stmp_ss_343.365, stmp_ss_343.365
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_343.365, stmp_ss_343.365, ss
	cmpq	%rax, %rdx	# _921, ivtmp.647
	jne	.L245	#,
	movl	-152(%rbp), %ecx	# %sfp, dim
	movl	%ecx, %eax	# dim, tmp.369
	andl	$-8, %eax	#, tmp.369
	movl	%eax, %edx	# tmp.369,
	cmpl	%ecx, %eax	# dim, tmp.369
	je	.L246	#,
.L244:
	movl	-152(%rbp), %ecx	# %sfp, niters.366
	subl	%edx, %ecx	# niters_vector_mult_vf.359, niters.366
	leal	-1(%rcx), %esi	#, tmp1425
	cmpl	$2, %esi	#, tmp1425
	jbe	.L247	#,
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%r10,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.371_464], MEM <vector(4) float> [(float *)vectp_x.371_464]
	movl	%ecx, %edx	# niters.366, niters_vector_mult_vf.368
	andl	$-4, %edx	#, niters_vector_mult_vf.368
# run.c:193:         ss += x[j] * x[j];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.371_464], MEM <vector(4) float> [(float *)vectp_x.371_464], vect__538.373
	addl	%edx, %eax	# niters_vector_mult_vf.368, tmp.369
	andl	$3, %ecx	#, niters.366
	vaddss	%xmm0, %xmm1, %xmm0	# ss, stmp_ss_537.374, stmp_ss_537.374
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, vect__538.373, vect__538.373, stmp_ss_537.374
	vaddss	%xmm0, %xmm3, %xmm3	# stmp_ss_537.374, stmp_ss_537.374, stmp_ss_537.374
	vunpckhps	%xmm1, %xmm1, %xmm0	# vect__538.373, vect__538.373, stmp_ss_537.374
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__538.373, vect__538.373, stmp_ss_537.374
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_537.374, stmp_ss_537.374, stmp_ss_537.374
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_537.374, stmp_ss_537.374, ss
	je	.L246	#,
.L247:
# run.c:193:         ss += x[j] * x[j];
	movslq	%eax, %rcx	# tmp.369, tmp.369
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	-152(%rbp), %edi	# %sfp, dim
# run.c:193:         ss += x[j] * x[j];
	vmovss	(%r10,%rcx,4), %xmm1	# *_1646, _473
	leaq	0(,%rcx,4), %rdx	#, _1644
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _473, _473, tmp1433
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1433, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %edi	# j, dim
	jle	.L246	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	4(%r10,%rdx), %xmm1	# *_360, _361
# run.c:192:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _361, _361, tmp1435
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1435, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %edi	# j, dim
	jle	.L246	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	8(%r10,%rdx), %xmm1	# *_495, _494
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _494, _494, tmp1437
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1437, ss, ss
.L246:
# run.c:195:     ss /= size;
	vdivss	%xmm2, %xmm0, %xmm0	# _642, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp1439
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vucomiss	%xmm0, %xmm1	# ss, tmp1439
	ja	.L374	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _252
.L251:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	.LC7(%rip), %xmm1	#, tmp1440
	xorl	%eax, %eax	# ivtmp.633
	vdivss	%xmm0, %xmm1, %xmm0	# _252, tmp1440, ss
	cmpl	$2, %r13d	#, _533
	jbe	.L260	#,
	leaq	4(%rbx), %rax	#, tmp1445
	movq	%r10, %rdx	# x, tmp1446
	subq	%rax, %rdx	# tmp1445, tmp1446
	xorl	%eax, %eax	# ivtmp.633
	cmpq	$24, %rdx	#, tmp1446
	ja	.L396	#,
.L260:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r10,%rax), %xmm0, %xmm1	# MEM[(float *)x_184 + ivtmp.633_1691 * 1], ss, tmp1474
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rbx,%rax), %xmm1, %xmm1	# MEM[(float *)_153 + ivtmp.633_1691 * 1], tmp1474, tmp1475
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%r10,%rax)	# tmp1475, MEM[(float *)x_184 + ivtmp.633_1691 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.633
	cmpq	%rax, -264(%rbp)	# ivtmp.633, %sfp
	jne	.L260	#,
.L243:
# run.c:401:     matmul(s->logits, x, w->wcls, p->dim, p->vocab_size);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	%r10, %rsi	# x,
	movq	200(%rax), %rbx	# MEM[(struct RunState *)transformer_182(D) + 128B].logits, <retval>
	movl	(%rax), %ecx	# MEM[(struct Config *)transformer_182(D)].dim, MEM[(struct Config *)transformer_182(D)].dim
	movq	120(%rax), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].wcls, MEM[(struct TransformerWeights *)transformer_182(D) + 32B].wcls
	movl	20(%rax), %r8d	# MEM[(struct Config *)transformer_182(D)].vocab_size,
	vzeroupper
	movq	%rbx, %rdi	# <retval>,
	call	matmul	#
# run.c:403: }
	addq	$384, %rsp	#,
	movq	%rbx, %rax	# <retval>,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
.L164:
	.cfi_restore_state
	movq	%r8, -64(%rbp)	# ivtmp.775, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	-112(%rbp), %rdi	# %sfp, _1411
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	movq	%r14, %rdx	# _316,
# run.c:348:             float* xb = s->xb + h * head_size;
	addq	136(%rsi), %rdi	# MEM[(struct RunState *)transformer_182(D) + 128B].xb, _1411
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	xorl	%esi, %esi	#
	vzeroupper
	call	memset@PLT	#
	movq	-64(%rbp), %r8	# %sfp, ivtmp.775
	jmp	.L178	#
.L385:
	vzeroupper
	jmp	.L185	#
.L269:
	vxorps	%xmm0, %xmm0, %xmm0	# tmp1199
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
	vucomiss	%xmm3, %xmm0	# _84, tmp1199
	jbe	.L397	#,
.L377:
	movq	%rbx, -80(%rbp)	# ivtmp.729, %sfp
	movq	%r9, %rbx	# ivtmp.763, ivtmp.763
	movq	%r15, -104(%rbp)	# _1630, %sfp
	movq	%r14, %r15	# _316, _316
	movq	%rcx, %r14	# ivtmp.727, ivtmp.727
	vzeroupper
.L172:
# run.c:339:                 score /= sqrtf(head_size);
	vmovaps	%xmm3, %xmm0	# _84,
	movq	%r8, -432(%rbp)	# ivtmp.775, %sfp
# run.c:331:             for (int t = 0; t <= pos; t++) {
	addq	$4, %rbx	#, ivtmp.763
	vmovss	%xmm1, -192(%rbp)	# score, %sfp
	movq	%r10, -424(%rbp)	# pretmp_698, %sfp
	movq	%rdi, -200(%rbp)	# pretmp_689, %sfp
# run.c:339:                 score /= sqrtf(head_size);
	vmovss	%xmm3, -184(%rbp)	# _84, %sfp
	call	sqrtf@PLT	#
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movq	-88(%rbp), %rax	# %sfp, _20
# run.c:339:                 score /= sqrtf(head_size);
	vmovss	-192(%rbp), %xmm1	# %sfp, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movq	-432(%rbp), %r8	# %sfp, ivtmp.775
# run.c:339:                 score /= sqrtf(head_size);
	vdivss	%xmm0, %xmm1, %xmm0	# tmp1504, score, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	addq	%rax, %r13	# _20, ivtmp.766
# run.c:341:                 att[t] = score;
	vmovss	%xmm0, -4(%rbx)	# score, MEM[(float *)_60]
# run.c:331:             for (int t = 0; t <= pos; t++) {
	cmpq	%rbx, -64(%rbp)	# ivtmp.763, %sfp
	je	.L378	#,
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	testl	%r12d, %r12d	# tmp1004
	vmovss	-184(%rbp), %xmm3	# %sfp, _84
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	movq	-200(%rbp), %rdi	# %sfp, pretmp_689
	movq	-424(%rbp), %r10	# %sfp, pretmp_698
	jle	.L172	#,
	movq	%r14, %rcx	# ivtmp.727, ivtmp.727
	movq	%rbx, %r9	# ivtmp.763, ivtmp.763
	movq	%r15, %r14	# _316, _316
	movq	-80(%rbp), %rbx	# %sfp, ivtmp.729
	movq	-104(%rbp), %r15	# %sfp, _1630
	jmp	.L176	#
	.p2align 4,,10
	.p2align 3
.L272:
# run.c:214:     for (int i = 0; i < size; i++) {
	xorl	%eax, %eax	#
# run.c:219:     for (int i = 0; i < size; i++) {
	xorl	%edx, %edx	# tmp.514
	jmp	.L183	#
.L146:
	movq	-272(%rbp), %rax	# %sfp, _1157
# run.c:199:     for (int j = 0; j < size; j++) {
	movq	-264(%rbp), %rdx	# %sfp, _9
	addq	%rax, %rbx	# _1157, _307
	xorl	%eax, %eax	# ivtmp.806
.L155:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r10,%rax), %xmm0, %xmm1	# MEM[(float *)x_184 + ivtmp.806_1494 * 1], ss, tmp1108
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rbx,%rax), %xmm1, %xmm1	# MEM[(float *)_307 + ivtmp.806_1494 * 1], tmp1108, tmp1109
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%r9,%rax)	# tmp1109, MEM[(float *)prephitmp_640 + ivtmp.806_1494 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.806
	cmpq	%rax, %rdx	# ivtmp.806, _9
	jne	.L155	#,
	jmp	.L136	#
.L219:
	movq	-272(%rbp), %rax	# %sfp, _1157
# run.c:199:     for (int j = 0; j < size; j++) {
	movq	-264(%rbp), %rdx	# %sfp, _9
	addq	%rax, %rbx	# _1157, _490
	xorl	%eax, %eax	# ivtmp.677
.L227:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r10,%rax), %xmm0, %xmm1	# MEM[(float *)x_184 + ivtmp.677_679 * 1], ss, tmp1374
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rbx,%rax), %xmm1, %xmm1	# MEM[(float *)_490 + ivtmp.677_679 * 1], tmp1374, tmp1375
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%r9,%rax)	# tmp1375, MEM[(float *)prephitmp_749 + ivtmp.677_679 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.677
	cmpq	%rax, %rdx	# ivtmp.677, _9
	jne	.L227	#,
	jmp	.L228	#
.L268:
	vmovss	.LC7(%rip), %xmm6	#, tmp1483
	leaq	-52(%rbp), %rcx	#, tmp1481
# run.c:339:                 score /= sqrtf(head_size);
	xorl	%r14d, %r14d	#
	movq	%rcx, -144(%rbp)	# tmp1481, %sfp
	leaq	-56(%rbp), %rcx	#, tmp1480
	vmovss	%xmm6, -64(%rbp)	# tmp1483, %sfp
	vmovss	.LC8(%rip), %xmm6	#, tmp1484
	movq	%rcx, -80(%rbp)	# tmp1480, %sfp
	vmovss	%xmm6, -112(%rbp)	# tmp1484, %sfp
	vxorps	%xmm6, %xmm6, %xmm6	# tmp1876
	vcvtsi2ssl	-148(%rbp), %xmm6, %xmm0	# %sfp, tmp1876, tmp1514
	vmovss	%xmm0, -104(%rbp)	# tmp1514, %sfp
	jmp	.L159	#
.L395:
	cmpl	$6, %ecx	#, _1649
	jbe	.L286	#,
# run.c:199:     for (int j = 0; j < size; j++) {
	movq	-320(%rbp), %rdx	# %sfp, _1347
.L236:
# run.c:393:             x[i] += s->xb[i];
	vmovups	(%r9,%rax), %ymm6	# MEM <vector(8) float> [(float *)prephitmp_749 + ivtmp.658_345 * 1], tmp2031
	vaddps	(%r10,%rax), %ymm6, %ymm0	# MEM <vector(8) float> [(float *)x_184 + ivtmp.658_345 * 1], tmp2031, vect__150.385
	vmovups	%ymm0, (%r10,%rax)	# vect__150.385, MEM <vector(8) float> [(float *)x_184 + ivtmp.658_345 * 1]
	addq	$32, %rax	#, ivtmp.658
	cmpq	%rdx, %rax	# _1347, ivtmp.658
	jne	.L236	#,
	movl	-152(%rbp), %edx	# %sfp, dim
	movl	-236(%rbp), %ecx	# %sfp, _498
	cmpl	%ecx, %edx	# _498, dim
	je	.L230	#,
	subl	%ecx, %edx	# _498, niters.388
	leal	-1(%rdx), %eax	#, tmp1393
	cmpl	$2, %eax	#, tmp1393
	jbe	.L287	#,
	movl	%ecx, %eax	# _498,
.L235:
	leaq	(%r10,%rax,4), %rsi	#, vectp_x.393
	vmovups	(%r9,%rax,4), %xmm5	# MEM <vector(4) float> [(float *)vectp_prephitmp.396_816], tmp2036
	movl	%edx, %eax	# niters.388, niters_vector_mult_vf.390
	vaddps	(%rsi), %xmm5, %xmm0	# MEM <vector(4) float> [(float *)vectp_x.393_810], tmp2036, vect__165.398
	andl	$-4, %eax	#, niters_vector_mult_vf.390
	addl	%ecx, %eax	# i, tmp.391
	andl	$3, %edx	#, niters.388
	vmovups	%xmm0, (%rsi)	# vect__165.398, MEM <vector(4) float> [(float *)vectp_x.393_810]
	je	.L230	#,
.L239:
# run.c:393:             x[i] += s->xb[i];
	movslq	%eax, %rsi	# tmp.391, tmp.391
# run.c:392:         for (int i = 0; i < dim; i++) {
	movl	-152(%rbp), %ebx	# %sfp, dim
# run.c:393:             x[i] += s->xb[i];
	leaq	0(,%rsi,4), %rdx	#, _627
	leaq	(%r10,%rdx), %rcx	#, _626
# run.c:393:             x[i] += s->xb[i];
	vmovss	(%rcx), %xmm0	# *_626, *_626
	vaddss	(%r9,%rsi,4), %xmm0, %xmm0	# *_624, *_626, tmp1401
	vmovss	%xmm0, (%rcx)	# tmp1401, *_626
# run.c:392:         for (int i = 0; i < dim; i++) {
	leal	1(%rax), %ecx	#, i
# run.c:392:         for (int i = 0; i < dim; i++) {
	cmpl	%ecx, %ebx	# i, dim
	jle	.L230	#,
# run.c:393:             x[i] += s->xb[i];
	leaq	4(%r10,%rdx), %rcx	#, _277
# run.c:392:         for (int i = 0; i < dim; i++) {
	addl	$2, %eax	#, i
# run.c:393:             x[i] += s->xb[i];
	vmovss	(%rcx), %xmm0	# *_277, *_277
	vaddss	4(%r9,%rdx), %xmm0, %xmm0	# *_279, *_277, tmp1404
	vmovss	%xmm0, (%rcx)	# tmp1404, *_277
# run.c:392:         for (int i = 0; i < dim; i++) {
	cmpl	%eax, %ebx	# i, dim
	jle	.L230	#,
# run.c:393:             x[i] += s->xb[i];
	leaq	8(%r10,%rdx), %rax	#, _96
# run.c:393:             x[i] += s->xb[i];
	vmovss	(%rax), %xmm0	# *_96, *_96
	vaddss	8(%r9,%rdx), %xmm0, %xmm0	# *_98, *_96, tmp1407
	vmovss	%xmm0, (%rax)	# tmp1407, *_96
	jmp	.L230	#
.L393:
	cmpl	$6, %ecx	#, _1649
	jbe	.L279	#,
# run.c:366:         for (int i = 0; i < dim; i++) {
	movq	-320(%rbp), %rdx	# %sfp, _1347
.L203:
# run.c:367:             x[i] += s->xb2[i];
	vmovups	(%r10,%rax), %ymm6	# MEM <vector(8) float> [(float *)x_184 + ivtmp.704_580 * 1], tmp1957
	vaddps	(%rbx,%rax), %ymm6, %ymm0	# MEM <vector(8) float> [(float *)_115 + ivtmp.704_580 * 1], tmp1957, vect__122.457
	vmovups	%ymm0, (%r10,%rax)	# vect__122.457, MEM <vector(8) float> [(float *)x_184 + ivtmp.704_580 * 1]
	addq	$32, %rax	#, ivtmp.704
	cmpq	%rdx, %rax	# _1347, ivtmp.704
	jne	.L203	#,
	movl	-152(%rbp), %edx	# %sfp, dim
	movl	-236(%rbp), %esi	# %sfp, _498
	cmpl	%esi, %edx	# _498, dim
	je	.L204	#,
	subl	%esi, %edx	# _498, niters.460
	leal	-1(%rdx), %eax	#, tmp1280
	cmpl	$2, %eax	#, tmp1280
	jbe	.L205	#,
	movl	%esi, %eax	# _498,
.L202:
	leaq	(%r10,%rax,4), %rcx	#, vectp_x.465
	vmovups	(%rbx,%rax,4), %xmm6	# MEM <vector(4) float> [(float *)vectp.468_1130], tmp1962
	movl	%edx, %eax	# niters.460, niters_vector_mult_vf.462
	vaddps	(%rcx), %xmm6, %xmm0	# MEM <vector(4) float> [(float *)vectp_x.465_1124], tmp1962, vect__1073.470
	andl	$-4, %eax	#, niters_vector_mult_vf.462
	addl	%eax, %esi	# niters_vector_mult_vf.462, tmp.463
	andl	$3, %edx	#, niters.460
	vmovups	%xmm0, (%rcx)	# vect__1073.470, MEM <vector(4) float> [(float *)vectp_x.465_1124]
	je	.L208	#,
.L205:
# run.c:367:             x[i] += s->xb2[i];
	movslq	%esi, %rcx	# tmp.463, tmp.463
	leaq	0(,%rcx,4), %rax	#, _331
	leaq	(%r10,%rax), %rdx	#, _332
# run.c:367:             x[i] += s->xb2[i];
	vmovss	(%rdx), %xmm0	# *_332, *_332
	vaddss	(%rbx,%rcx,4), %xmm0, %xmm0	# *_334, *_332, tmp1288
# run.c:366:         for (int i = 0; i < dim; i++) {
	movl	-152(%rbp), %ecx	# %sfp, dim
# run.c:367:             x[i] += s->xb2[i];
	vmovss	%xmm0, (%rdx)	# tmp1288, *_332
# run.c:366:         for (int i = 0; i < dim; i++) {
	leal	1(%rsi), %edx	#, i
# run.c:366:         for (int i = 0; i < dim; i++) {
	cmpl	%edx, %ecx	# i, dim
	jle	.L208	#,
# run.c:367:             x[i] += s->xb2[i];
	leaq	4(%r10,%rax), %rdx	#, _212
# run.c:366:         for (int i = 0; i < dim; i++) {
	addl	$2, %esi	#, i
# run.c:367:             x[i] += s->xb2[i];
	vmovss	(%rdx), %xmm0	# *_212, *_212
	vaddss	4(%rbx,%rax), %xmm0, %xmm0	# *_82, *_212, tmp1291
	vmovss	%xmm0, (%rdx)	# tmp1291, *_212
# run.c:366:         for (int i = 0; i < dim; i++) {
	cmpl	%esi, %ecx	# i, dim
	jle	.L208	#,
# run.c:367:             x[i] += s->xb2[i];
	leaq	8(%r10,%rax), %rdx	#, _1106
# run.c:367:             x[i] += s->xb2[i];
	vmovss	(%rdx), %xmm0	# *_1106, *_1106
	vaddss	8(%rbx,%rax), %xmm0, %xmm0	# *_1108, *_1106, tmp1294
	vmovss	%xmm0, (%rdx)	# tmp1294, *_1106
	jmp	.L208	#
.L277:
# run.c:366:         for (int i = 0; i < dim; i++) {
	movq	-264(%rbp), %rdx	# %sfp, _9
	xorl	%eax, %eax	# ivtmp.700
	jmp	.L207	#
.L284:
# run.c:392:         for (int i = 0; i < dim; i++) {
	movq	-264(%rbp), %rdx	# %sfp, _9
	xorl	%eax, %eax	# ivtmp.654
	jmp	.L241	#
.L388:
# run.c:195:     ss /= size;
	vdivss	-296(%rbp), %xmm0, %xmm0	# %sfp, ss, ss
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp1038
	vucomiss	%xmm0, %xmm1	# ss, tmp1038
	ja	.L139	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _909
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	.LC7(%rip), %xmm6	#, tmp1483
	vdivss	%xmm0, %xmm6, %xmm0	# _909, tmp1483, ss
	jmp	.L141	#
.L200:
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	-128(%rbp), %rbx	# %sfp, transformer
	movq	-288(%rbp), %r13	# %sfp, ivtmp.826
	movq	%r9, %rsi	# prephitmp_640,
	movq	%r10, -112(%rbp)	# x, %sfp
	movl	-280(%rbp), %r8d	# %sfp,
	movl	-152(%rbp), %ecx	# %sfp,
	movq	%r9, -64(%rbp)	# prephitmp_640, %sfp
	movq	152(%rbx), %rax	# MEM[(struct RunState *)transformer_182(D) + 128B].hb, _1296
	movq	88(%rbx), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].w1, tmp1298
	movq	%rax, %rdi	# _1296,
	addq	%r13, %rdx	# ivtmp.826, tmp1298
	movq	%rax, -104(%rbp)	# _1296, %sfp
	call	matmul	#
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	movq	-64(%rbp), %r9	# %sfp, prephitmp_640
	movq	104(%rbx), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].w3, tmp1300
	movq	160(%rbx), %r14	# MEM[(struct RunState *)transformer_182(D) + 128B].hb2, _922
	movl	-280(%rbp), %ebx	# %sfp, hidden_dim
	movl	-152(%rbp), %ecx	# %sfp,
	addq	%r13, %rdx	# ivtmp.826, tmp1300
	movq	%r9, %rsi	# prephitmp_640,
	movq	%r9, -80(%rbp)	# prephitmp_640, %sfp
	movl	%ebx, %r8d	# hidden_dim,
	movq	%r14, %rdi	# _922,
	call	matmul	#
# run.c:379:         for (int i = 0; i < hidden_dim; i++) {
	testl	%ebx, %ebx	# hidden_dim
	movq	-80(%rbp), %r9	# %sfp, prephitmp_640
	movq	-104(%rbp), %rax	# %sfp, _1296
	vmovss	.LC7(%rip), %xmm5	#, tmp1483
	movq	-112(%rbp), %r10	# %sfp, x
	vmovss	%xmm5, -64(%rbp)	# tmp1483, %sfp
	jg	.L209	#,
	jmp	.L210	#
.L394:
# run.c:389:         matmul(s->xb, s->hb, w->w2 + l*dim*hidden_dim, hidden_dim, dim);
	movq	-128(%rbp), %rbx	# %sfp, transformer
	movl	-280(%rbp), %ecx	# %sfp,
	movq	%r9, %rdi	# prephitmp_640,
	movq	%rax, %rsi	# _1296,
	movl	-152(%rbp), %r8d	# %sfp,
	movq	-288(%rbp), %rdx	# %sfp, tmp1476
	movq	%r10, -80(%rbp)	# x, %sfp
	addq	96(%rbx), %rdx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].w2, tmp1476
	movq	%r9, -64(%rbp)	# prephitmp_640, %sfp
	call	matmul	#
	movq	-64(%rbp), %r9	# %sfp, prephitmp_640
	movq	-80(%rbp), %r10	# %sfp, x
	jmp	.L229	#
.L263:
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%edx, %edx	#
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.585
	jmp	.L137	#
.L281:
# run.c:371:         rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);
	xorl	%edx, %edx	#
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.441
	jmp	.L211	#
.L396:
	cmpl	$6, %r13d	#, _533
	jbe	.L290	#,
	movl	-152(%rbp), %edx	# %sfp, bnd.330
	vshufps	$0, %xmm0, %xmm0, %xmm2	# ss, vect_cst__604
	vinsertf128	$1, %xmm2, %ymm2, %ymm2	# vect_cst__604, vect_cst__604
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, _668
.L255:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r10,%rax), %ymm2, %ymm1	# MEM <vector(8) float> [(float *)x_184 + ivtmp.638_1099 * 1], vect_cst__604, vect__358.339
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rbx,%rax), %ymm1, %ymm1	# MEM <vector(8) float> [(float *)_153 + ivtmp.638_1099 * 1], vect__358.339, vect__360.340
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%ymm1, (%r10,%rax)	# vect__360.340, MEM <vector(8) float> [(float *)x_184 + ivtmp.638_1099 * 1]
	addq	$32, %rax	#, ivtmp.638
	cmpq	%rax, %rdx	# ivtmp.638, _668
	jne	.L255	#,
	movl	-152(%rbp), %ecx	# %sfp, dim
	movl	%ecx, %eax	# dim, tmp.346
	andl	$-8, %eax	#, tmp.346
	movl	%eax, %edx	# tmp.346,
	cmpl	%eax, %ecx	# tmp.346, dim
	je	.L243	#,
	subl	%eax, %ecx	# tmp.346, niters.357
	movl	%ecx, %r12d	# niters.357, niters.357
	leal	-1(%rcx), %ecx	#, tmp1454
	cmpl	$2, %ecx	#, tmp1454
	jbe	.L258	#,
.L254:
	leaq	(%r10,%rdx,4), %rcx	#, vectp_x.351
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vshufps	$0, %xmm0, %xmm0, %xmm1	# ss, tmp1457
	vmulps	(%rcx), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.351_564], tmp1457, vect__625.353
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rbx,%rdx,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.348_570], vect__625.353, vect__624.354
	movl	%r12d, %edx	# niters.357, niters_vector_mult_vf.345
	andl	$-4, %edx	#, niters_vector_mult_vf.345
	addl	%edx, %eax	# niters_vector_mult_vf.345, tmp.346
	andl	$3, %r12d	#, niters.357
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%xmm1, (%rcx)	# vect__624.354, MEM <vector(4) float> [(float *)vectp_x.351_564]
	je	.L243	#,
.L258:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movslq	%eax, %rsi	# tmp.346, tmp.346
# run.c:199:     for (int j = 0; j < size; j++) {
	movl	-152(%rbp), %edi	# %sfp, dim
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	0(,%rsi,4), %rdx	#, _339
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%r10,%rdx), %rcx	#, _344
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rcx), %xmm0, %xmm1	# *_344, ss, tmp1464
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rbx,%rsi,4), %xmm1, %xmm1	# *_340, tmp1464, tmp1465
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%rcx)	# tmp1465, *_344
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %edi	# j, dim
	jle	.L243	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	4(%r10,%rdx), %rcx	#, _260
# run.c:199:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rcx), %xmm0, %xmm1	# *_260, ss, tmp1468
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	4(%rbx,%rdx), %xmm1, %xmm1	# *_258, tmp1468, tmp1469
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%rcx)	# tmp1469, *_260
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %edi	# j, dim
	jle	.L243	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	8(%r10,%rdx), %rax	#, _587
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rax), %xmm0, %xmm0	# *_587, ss, tmp1472
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%rbx,%rdx), %xmm0, %xmm0	# *_589, tmp1472, tmp1473
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, (%rax)	# tmp1473, *_587
	jmp	.L243	#
.L204:
# run.c:371:         rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	48(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_182(D) + 32B].rms_ffn_weight, _123
	jmp	.L262	#
.L279:
# run.c:366:         for (int i = 0; i < dim; i++) {
	movl	-152(%rbp), %edx	# %sfp, niters.460
	xorl	%eax, %eax	#
# run.c:366:         for (int i = 0; i < dim; i++) {
	xorl	%esi, %esi	# i
	jmp	.L202	#
.L287:
	movl	%ecx, %eax	# _498, tmp.391
	jmp	.L239	#
.L286:
# run.c:393:             x[i] += s->xb[i];
	movl	-152(%rbp), %edx	# %sfp, niters.388
	xorl	%eax, %eax	#
# run.c:392:         for (int i = 0; i < dim; i++) {
	xorl	%ecx, %ecx	# i
	jmp	.L235	#
.L282:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	movl	-152(%rbp), %eax	# %sfp, niters.415
	xorl	%edx, %edx	#
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%esi, %esi	# j
	jmp	.L220	#
.L265:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movl	-152(%rbp), %edx	# %sfp, niters.559
	xorl	%eax, %eax	#
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%esi, %esi	# j
	jmp	.L149	#
.L135:
# run.c:195:     ss /= size;
	vxorps	%xmm6, %xmm6, %xmm6	# tmp2040
	vcvtsi2ssl	-152(%rbp), %xmm6, %xmm0	# %sfp, tmp2040, tmp1517
	vmovaps	%xmm0, %xmm2	# tmp1517, _642
	jmp	.L233	#
.L288:
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%edx, %edx	#
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.369
	jmp	.L244	#
.L290:
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.346
# run.c:197:     ss = 1.0f / sqrtf(ss);
	xorl	%edx, %edx	#
	jmp	.L254	#
.L378:
	movq	%r14, %rcx	# ivtmp.727, ivtmp.727
	movq	-80(%rbp), %rbx	# %sfp, ivtmp.729
	movq	%r15, %r14	# _316, _316
	movq	-104(%rbp), %r15	# %sfp, _1630
	jmp	.L175	#
.L371:
	movq	%r9, -80(%rbp)	# prephitmp_640, %sfp
	movq	%r10, -64(%rbp)	# x, %sfp
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vzeroupper
	call	sqrtf@PLT	#
	movq	-80(%rbp), %r9	# %sfp, prephitmp_640
	movq	-64(%rbp), %r10	# %sfp, x
	jmp	.L218	#
.L374:
	movq	%r10, -64(%rbp)	# x, %sfp
	vzeroupper
	call	sqrtf@PLT	#
	movq	-64(%rbp), %r10	# %sfp, x
	jmp	.L251	#
.L139:
	movq	%r9, -80(%rbp)	# prephitmp_640, %sfp
	movq	%r10, -64(%rbp)	# x, %sfp
	vzeroupper
	call	sqrtf@PLT	#
	movq	-80(%rbp), %r9	# %sfp, prephitmp_640
	movq	-64(%rbp), %r10	# %sfp, x
	jmp	.L145	#
	.cfi_endproc
.LFE6495:
	.size	forward, .-forward
	.section	.rodata.str1.1
.LC42:
	.string	"couldn't load %s\n"
.LC43:
	.string	"failed read\n"
	.text
	.p2align 4
	.globl	build_tokenizer
	.type	build_tokenizer, @function
build_tokenizer:
.LFB6497:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movslq	%edx, %r13	# tmp182,
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp180, t
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# tmp181, tokenizer_path
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# run.c:426: void build_tokenizer(Tokenizer* t, char* tokenizer_path, int vocab_size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp191
	movq	%rax, 24(%rsp)	# tmp191, D.43878
	xorl	%eax, %eax	# tmp191
# run.c:428:     t->vocab_size = vocab_size;
	movl	%r13d, 24(%rdi)	# vocab_size, t_38(D)->vocab_size
# run.c:430:     t->vocab = (char**)malloc(vocab_size * sizeof(char*));
	leaq	0(,%r13,8), %rdi	#, tmp119
	call	malloc@PLT	#
# run.c:430:     t->vocab = (char**)malloc(vocab_size * sizeof(char*));
	movq	%rax, 0(%rbp)	# tmp183, t_38(D)->vocab
# run.c:431:     t->vocab_scores = (float*)malloc(vocab_size * sizeof(float));
	leaq	0(,%r13,4), %rax	#, _4
	movq	%rax, %rdi	# _4,
	movq	%rax, (%rsp)	# _4, %sfp
	call	malloc@PLT	#
# run.c:435:         t->byte_pieces[i * 2 + 1] = '\0';
	vmovdqa	.LC10(%rip), %xmm0	#, tmp122
# run.c:432:     t->sorted_vocab = NULL; // initialized lazily
	movq	$0, 16(%rbp)	#, t_38(D)->sorted_vocab
# run.c:438:     FILE *file = fopen(tokenizer_path, "rb");
	movq	%rbx, %rdi	# tokenizer_path,
# run.c:431:     t->vocab_scores = (float*)malloc(vocab_size * sizeof(float));
	movq	%rax, 8(%rbp)	# tmp184, t_38(D)->vocab_scores
# run.c:438:     FILE *file = fopen(tokenizer_path, "rb");
	leaq	.LC1(%rip), %rsi	#, tmp154
# run.c:435:         t->byte_pieces[i * 2 + 1] = '\0';
	vmovdqu	%xmm0, 32(%rbp)	# tmp122, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 32B]
	vmovdqa	.LC11(%rip), %xmm0	#, tmp123
	vmovdqu	%xmm0, 48(%rbp)	# tmp123, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 48B]
	vmovdqa	.LC12(%rip), %xmm0	#, tmp124
	vmovdqu	%xmm0, 64(%rbp)	# tmp124, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 64B]
	vmovdqa	.LC13(%rip), %xmm0	#, tmp125
	vmovdqu	%xmm0, 80(%rbp)	# tmp125, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 80B]
	vmovdqa	.LC14(%rip), %xmm0	#, tmp126
	vmovdqu	%xmm0, 96(%rbp)	# tmp126, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 96B]
	vmovdqa	.LC15(%rip), %xmm0	#, tmp127
	vmovdqu	%xmm0, 112(%rbp)	# tmp127, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 112B]
	vmovdqa	.LC16(%rip), %xmm0	#, tmp128
	vmovdqu	%xmm0, 128(%rbp)	# tmp128, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 128B]
	vmovdqa	.LC17(%rip), %xmm0	#, tmp129
	vmovdqu	%xmm0, 144(%rbp)	# tmp129, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 144B]
	vmovdqa	.LC18(%rip), %xmm0	#, tmp130
	vmovdqu	%xmm0, 160(%rbp)	# tmp130, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 160B]
	vmovdqa	.LC19(%rip), %xmm0	#, tmp131
	vmovdqu	%xmm0, 176(%rbp)	# tmp131, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 176B]
	vmovdqa	.LC20(%rip), %xmm0	#, tmp132
	vmovdqu	%xmm0, 192(%rbp)	# tmp132, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 192B]
	vmovdqa	.LC21(%rip), %xmm0	#, tmp133
	vmovdqu	%xmm0, 208(%rbp)	# tmp133, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 208B]
	vmovdqa	.LC22(%rip), %xmm0	#, tmp134
	vmovdqu	%xmm0, 224(%rbp)	# tmp134, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 224B]
	vmovdqa	.LC23(%rip), %xmm0	#, tmp135
	vmovdqu	%xmm0, 240(%rbp)	# tmp135, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 240B]
	vmovdqa	.LC24(%rip), %xmm0	#, tmp136
	vmovdqu	%xmm0, 256(%rbp)	# tmp136, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 256B]
	vmovdqa	.LC25(%rip), %xmm0	#, tmp137
	vmovdqu	%xmm0, 272(%rbp)	# tmp137, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 272B]
	vmovdqa	.LC26(%rip), %xmm0	#, tmp138
	vmovdqu	%xmm0, 288(%rbp)	# tmp138, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 288B]
	vmovdqa	.LC27(%rip), %xmm0	#, tmp139
	vmovdqu	%xmm0, 304(%rbp)	# tmp139, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 304B]
	vmovdqa	.LC28(%rip), %xmm0	#, tmp140
	vmovdqu	%xmm0, 320(%rbp)	# tmp140, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 320B]
	vmovdqa	.LC29(%rip), %xmm0	#, tmp141
	vmovdqu	%xmm0, 336(%rbp)	# tmp141, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 336B]
	vmovdqa	.LC30(%rip), %xmm0	#, tmp142
	vmovdqu	%xmm0, 352(%rbp)	# tmp142, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 352B]
	vmovdqa	.LC31(%rip), %xmm0	#, tmp143
	vmovdqu	%xmm0, 368(%rbp)	# tmp143, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 368B]
	vmovdqa	.LC32(%rip), %xmm0	#, tmp144
	vmovdqu	%xmm0, 384(%rbp)	# tmp144, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 384B]
	vmovdqa	.LC33(%rip), %xmm0	#, tmp145
	vmovdqu	%xmm0, 400(%rbp)	# tmp145, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 400B]
	vmovdqa	.LC34(%rip), %xmm0	#, tmp146
	vmovdqu	%xmm0, 416(%rbp)	# tmp146, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 416B]
	vmovdqa	.LC35(%rip), %xmm0	#, tmp147
	vmovdqu	%xmm0, 432(%rbp)	# tmp147, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 432B]
	vmovdqa	.LC36(%rip), %xmm0	#, tmp148
	vmovdqu	%xmm0, 448(%rbp)	# tmp148, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 448B]
	vmovdqa	.LC37(%rip), %xmm0	#, tmp149
	vmovdqu	%xmm0, 464(%rbp)	# tmp149, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 464B]
	vmovdqa	.LC38(%rip), %xmm0	#, tmp150
	vmovdqu	%xmm0, 480(%rbp)	# tmp150, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 480B]
	vmovdqa	.LC39(%rip), %xmm0	#, tmp151
	vmovdqu	%xmm0, 496(%rbp)	# tmp151, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 496B]
	vmovdqa	.LC40(%rip), %xmm0	#, tmp152
	vmovdqu	%xmm0, 512(%rbp)	# tmp152, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 512B]
	vmovdqa	.LC41(%rip), %xmm0	#, tmp153
	vmovdqu	%xmm0, 528(%rbp)	# tmp153, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 528B]
# run.c:438:     FILE *file = fopen(tokenizer_path, "rb");
	call	fopen@PLT	#
# run.c:439:     if (!file) { fprintf(stderr, "couldn't load %s\n", tokenizer_path); exit(EXIT_FAILURE); }
	testq	%rax, %rax	# file
	je	.L415	#,
# run.c:440:     if (fread(&t->max_token_length, sizeof(int), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	leaq	28(%rbp), %rdi	#, tmp158
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%rax, %rcx	# file,
	movl	$1, %edx	#,
	movq	%rax, %r12	# tmp185, file
	movl	$4, %esi	#,
	call	fread@PLT	#
# run.c:440:     if (fread(&t->max_token_length, sizeof(int), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	cmpq	$1, %rax	#, tmp186
	jne	.L414	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	leaq	20(%rsp), %rax	#, tmp179
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	xorl	%ebx, %ebx	# ivtmp.847
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%rax, 8(%rsp)	# tmp179, %sfp
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	testl	%r13d, %r13d	# vocab_size
	jle	.L402	#,
	.p2align 4,,10
	.p2align 3
.L401:
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	movq	8(%rbp), %rdi	# t_38(D)->vocab_scores, tmp161
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%r12, %rcx	# file,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	addq	%rbx, %rdi	# ivtmp.847, tmp161
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	call	fread@PLT	#
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	cmpq	$1, %rax	#, tmp187
	jne	.L414	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	8(%rsp), %rdi	# %sfp,
	movq	%r12, %rcx	# file,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread@PLT	#
# run.c:444:         if (fread(&len, sizeof(int), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	cmpq	$1, %rax	#, tmp188
	jne	.L414	#,
# run.c:445:         t->vocab[i] = (char *)malloc(len + 1);
	movl	20(%rsp), %r14d	# len, len.11_18
# run.c:445:         t->vocab[i] = (char *)malloc(len + 1);
	movq	0(%rbp), %rax	# t_38(D)->vocab, t_38(D)->vocab
# run.c:445:         t->vocab[i] = (char *)malloc(len + 1);
	leal	1(%r14), %r15d	#, tmp168
# run.c:445:         t->vocab[i] = (char *)malloc(len + 1);
	leaq	(%rax,%rbx,2), %r13	#, _23
# run.c:445:         t->vocab[i] = (char *)malloc(len + 1);
	movslq	%r15d, %r15	# tmp168, _20
	movq	%r15, %rdi	# _20,
	call	malloc@PLT	#
# run.c:446:         if (fread(t->vocab[i], len, 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	movslq	%r14d, %rdx	# len.11_18, len.11_18
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:215:   return __fread_chk (__ptr, sz, __size, __n, __stream);
	movq	%r12, %r8	# file,
	movl	$1, %ecx	#,
# run.c:445:         t->vocab[i] = (char *)malloc(len + 1);
	movq	%rax, 0(%r13)	# tmp170, *_23
# run.c:445:         t->vocab[i] = (char *)malloc(len + 1);
	movq	%rax, %rdi	# tmp189, tmp170
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:215:   return __fread_chk (__ptr, sz, __size, __n, __stream);
	movq	%r15, %rsi	# _20,
	call	__fread_chk@PLT	#
# run.c:446:         if (fread(t->vocab[i], len, 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	cmpq	$1, %rax	#, tmp190
	jne	.L414	#,
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movq	0(%rbp), %rdx	# t_38(D)->vocab, t_38(D)->vocab
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movslq	20(%rsp), %rax	# len, len
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movq	(%rdx,%rbx,2), %rdx	# *_28, *_28
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	addq	$4, %rbx	#, ivtmp.847
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movb	$0, (%rdx,%rax)	#, *_32
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	cmpq	%rbx, (%rsp)	# ivtmp.847, %sfp
	jne	.L401	#,
.L402:
# run.c:449:     fclose(file);
	movq	%r12, %rdi	# file,
	call	fclose@PLT	#
# run.c:450: }
	movq	24(%rsp), %rax	# D.43878, tmp192
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp192
	jne	.L416	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L414:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC43(%rip), %rdi	#, tmp173
	call	fwrite@PLT	#
# run.c:446:         if (fread(t->vocab[i], len, 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
.L415:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rbx, %rcx	# tokenizer_path,
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	leaq	.LC42(%rip), %rdx	#, tmp157
	call	__fprintf_chk@PLT	#
# run.c:439:     if (!file) { fprintf(stderr, "couldn't load %s\n", tokenizer_path); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
.L416:
# run.c:450: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6497:
	.size	build_tokenizer, .-build_tokenizer
	.p2align 4
	.globl	free_tokenizer
	.type	free_tokenizer, @function
free_tokenizer:
.LFB6498:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp	# tmp99, t
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	movl	24(%rdi), %eax	# t_13(D)->vocab_size,
	testl	%eax, %eax	#
	jle	.L418	#,
	xorl	%ebx, %ebx	# ivtmp.854
	.p2align 4,,10
	.p2align 3
.L419:
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	movq	0(%rbp), %rax	# t_13(D)->vocab, t_13(D)->vocab
	movq	(%rax,%rbx,8), %rdi	# *_4, *_4
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	addq	$1, %rbx	#, ivtmp.854
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	call	free@PLT	#
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	cmpl	%ebx, 24(%rbp)	# ivtmp.854, t_13(D)->vocab_size
	jg	.L419	#,
.L418:
# run.c:454:     free(t->vocab);
	movq	0(%rbp), %rdi	# t_13(D)->vocab, t_13(D)->vocab
	call	free@PLT	#
# run.c:455:     free(t->vocab_scores);
	movq	8(%rbp), %rdi	# t_13(D)->vocab_scores, t_13(D)->vocab_scores
	call	free@PLT	#
# run.c:456:     free(t->sorted_vocab);
	movq	16(%rbp), %rdi	# t_13(D)->sorted_vocab, t_13(D)->sorted_vocab
# run.c:457: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# run.c:456:     free(t->sorted_vocab);
	jmp	free@PLT	#
	.cfi_endproc
.LFE6498:
	.size	free_tokenizer, .-free_tokenizer
	.section	.rodata.str1.1
.LC44:
	.string	"<0x%02hhX>"
	.text
	.p2align 4
	.globl	decode
	.type	decode, @function
decode:
.LFB6499:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# run.c:460:     char *piece = t->vocab[token];
	movslq	%edx, %rdx	# tmp112, token
# run.c:459: char* decode(Tokenizer* t, int prev_token, int token) {
	movq	%rdi, %rbp	# tmp110, t
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
# run.c:459: char* decode(Tokenizer* t, int prev_token, int token) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp114
	movq	%rax, 8(%rsp)	# tmp114, D.43901
	xorl	%eax, %eax	# tmp114
# run.c:460:     char *piece = t->vocab[token];
	movq	(%rdi), %rax	# t_15(D)->vocab, t_15(D)->vocab
	movq	(%rax,%rdx,8), %rbx	# *_4, <retval>
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %esi	#, tmp111
	jne	.L423	#,
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	xorl	%eax, %eax	# tmp108
	cmpb	$32, (%rbx)	#, *piece_17
	sete	%al	#, tmp108
	addq	%rax, %rbx	# tmp108, <retval>
.L423:
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	xorl	%eax, %eax	#
	leaq	7(%rsp), %rdx	#, tmp100
	leaq	.LC44(%rip), %rsi	#, tmp101
	movq	%rbx, %rdi	# <retval>,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp113
	jne	.L422	#,
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	7(%rsp), %eax	# byte_val, byte_val
	addl	%eax, %eax	# tmp104
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%rbp,%rax), %rbx	#, <retval>
.L422:
# run.c:470: }
	movq	8(%rsp), %rax	# D.43901, tmp115
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	jne	.L427	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L427:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6499:
	.size	decode, .-decode
	.section	.rodata.str1.1
.LC45:
	.string	"%s"
	.text
	.p2align 4
	.globl	safe_printf
	.type	safe_printf, @function
safe_printf:
.LFB6500:
	.cfi_startproc
	endbr64	
# run.c:475:     if (piece == NULL) { return; }
	testq	%rdi, %rdi	# piece
	je	.L442	#,
# run.c:472: void safe_printf(char *piece) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp98, piece
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# run.c:476:     if (piece[0] == '\0') { return; }
	movzbl	(%rdi), %ebp	# *piece_10(D),
# run.c:476:     if (piece[0] == '\0') { return; }
	testb	%bpl, %bpl	# _1
	je	.L440	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%rdi)	#, MEM[(char *)piece_10(D) + 1B]
	jne	.L430	#,
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	call	__ctype_b_loc@PLT	#
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movq	(%rax), %rax	# *_3, *_3
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	testw	$24576, (%rax,%rbp,2)	#, *_7
	je	.L440	#,
.L430:
# run.c:484: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%rbx, %rdx	# piece,
	leaq	.LC45(%rip), %rsi	#, tmp97
	xorl	%eax, %eax	#
# run.c:484: }
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$2, %edi	#,
# run.c:484: }
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	jmp	__printf_chk@PLT	#
	.p2align 4,,10
	.p2align 3
.L440:
	.cfi_restore_state
# run.c:484: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L442:
	.cfi_restore 3
	.cfi_restore 6
	ret	
	.cfi_endproc
.LFE6500:
	.size	safe_printf, .-safe_printf
	.p2align 4
	.globl	str_lookup
	.type	str_lookup, @function
str_lookup:
.LFB6501:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:27:   __l = 0;
	xorl	%r15d, %r15d	# __l
# run.c:486: int str_lookup(char *str, TokenIndex *sorted_vocab, int vocab_size) {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movslq	%edx, %r14	# tmp101, __u
# run.c:486: int str_lookup(char *str, TokenIndex *sorted_vocab, int vocab_size) {
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13	# tmp99, str
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12	# tmp100, sorted_vocab
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L447:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r15	# __u, __l
	jnb	.L453	#,
.L449:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	leaq	(%r15,%r14), %rbx	#, tmp94
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	%r13, %rdi	# str,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	shrq	%rbx	# __idx
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	movq	%rbx, %rbp	# __idx, tmp95
	salq	$4, %rbp	#, tmp95
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	addq	%r12, %rbp	# sorted_vocab, __p
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	0(%rbp), %rsi	# MEM[(struct TokenIndex *)__p_14].str, MEM[(struct TokenIndex *)__p_14].str
	call	strcmp@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:34:       if (__comparison < 0)
	testl	%eax, %eax	# tmp102
	js	.L451	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L448	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%rbx), %r15	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r15	# __u, __l
	jb	.L449	#,
.L453:
# run.c:491: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# run.c:490:     return res != NULL ? res->id : -1;
	movl	$-1, %eax	#, <retval>
# run.c:491: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L451:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%rbx, %r14	# __idx, __u
	jmp	.L447	#
	.p2align 4,,10
	.p2align 3
.L448:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	8(%rbp), %eax	# MEM[(struct TokenIndex *)__p_14].id, <retval>
# run.c:491: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE6501:
	.size	str_lookup, .-str_lookup
	.section	.rodata.str1.1
.LC47:
	.string	"cannot encode NULL text\n"
.LC48:
	.string	"%s%s"
	.text
	.p2align 4
	.globl	encode
	.type	encode, @function
encode:
.LFB6502:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 144
# run.c:493: void encode(Tokenizer* t, char *text, int8_t bos, int8_t eos, int *tokens, int *n_tokens) {
	movq	%rdi, 16(%rsp)	# tmp307, %sfp
	movl	%ecx, 76(%rsp)	# tmp310, %sfp
	movq	%r8, 64(%rsp)	# tmp311, %sfp
# run.c:496:     if (text == NULL) { fprintf(stderr, "cannot encode NULL text\n"); exit(EXIT_FAILURE); }
	testq	%rsi, %rsi	# text
	je	.L530	#,
# run.c:498:     if (t->sorted_vocab == NULL) {
	cmpq	$0, 16(%rdi)	#, t_129(D)->sorted_vocab
	movq	%rsi, %r15	# tmp308, text
	movl	%edx, %r12d	# tmp309, bos
	je	.L531	#,
.L456:
# run.c:510:     char* str_buffer = malloc((t->max_token_length*2 +1 +2) * sizeof(char));
	movq	16(%rsp), %rax	# %sfp, t
	movq	%r9, 8(%rsp)	# n_tokens, %sfp
	movl	28(%rax), %eax	# t_129(D)->max_token_length, t_129(D)->max_token_length
# run.c:510:     char* str_buffer = malloc((t->max_token_length*2 +1 +2) * sizeof(char));
	leal	3(%rax,%rax), %eax	#, _23
	movq	%rax, %rdi	# _23,
	movq	%rax, 56(%rsp)	# _23, %sfp
	call	malloc@PLT	#
# run.c:517:     if (bos) tokens[(*n_tokens)++] = 1;
	testb	%r12b, %r12b	# bos
	movq	8(%rsp), %r9	# %sfp, n_tokens
# run.c:510:     char* str_buffer = malloc((t->max_token_length*2 +1 +2) * sizeof(char));
	movq	%rax, %rbx	# tmp314, str_buffer
# run.c:517:     if (bos) tokens[(*n_tokens)++] = 1;
	jne	.L460	#,
# run.c:514:     *n_tokens = 0;
	movl	$0, (%r9)	#, *n_tokens_138(D)
	xorl	%edx, %edx	#
# run.c:523:     if (text[0] != '\0') {
	cmpb	$0, (%r15)	#, *text_127(D)
	jne	.L532	#,
.L462:
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	cmpb	$0, 76(%rsp)	#, %sfp
	je	.L492	#,
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	leal	1(%rdx), %eax	#, tmp292
	movslq	%edx, %rdx	# _96, _96
	movl	%eax, (%r9)	# tmp292, *n_tokens_138(D)
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	movq	64(%rsp), %rax	# %sfp, tokens
	movl	$2, (%rax,%rdx,4)	#, *_100
.L492:
# run.c:612: }
	addq	$88, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# run.c:611:     free(str_buffer);
	movq	%rbx, %rdi	# str_buffer,
# run.c:612: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# run.c:611:     free(str_buffer);
	jmp	free@PLT	#
.L460:
	.cfi_restore_state
# run.c:517:     if (bos) tokens[(*n_tokens)++] = 1;
	movq	64(%rsp), %rax	# %sfp, tokens
# run.c:517:     if (bos) tokens[(*n_tokens)++] = 1;
	movl	$1, (%r9)	#, *n_tokens_138(D)
# run.c:517:     if (bos) tokens[(*n_tokens)++] = 1;
	movl	$1, %edx	#,
	movl	$1, (%rax)	#, *tokens_142(D)
# run.c:523:     if (text[0] != '\0') {
	cmpb	$0, (%r15)	#, *text_127(D)
	je	.L462	#,
.L532:
# run.c:524:         int dummy_prefix = str_lookup(" ", t->sorted_vocab, t->vocab_size);
	movq	16(%rsp), %rax	# %sfp, t
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:27:   __l = 0;
	xorl	%r10d, %r10d	# __l
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movl	$32, %r8d	#, tmp305
# run.c:524:         int dummy_prefix = str_lookup(" ", t->sorted_vocab, t->vocab_size);
	movq	16(%rax), %r14	# t_129(D)->sorted_vocab, _27
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movslq	24(%rax), %r11	# t_129(D)->vocab_size, __u
.L465:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r11, %r10	# __u, __l
	jnb	.L533	#,
.L467:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	leaq	(%r11,%r10), %rax	#, tmp240
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movl	%r8d, %esi	# tmp305, _180
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	shrq	%rax	# __idx
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	movq	%rax, %rcx	# __idx, tmp241
	salq	$4, %rcx	#, tmp241
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	addq	%r14, %rcx	# _27, __p
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	(%rcx), %rbp	# MEM[(struct TokenIndex *)__p_178].str, MEM[(struct TokenIndex *)__p_178].str
	movzbl	0(%rbp), %edi	# MEM <char[1:2]> [(void *)_179], MEM <char[1:2]> [(void *)_179]
	subl	%edi, %esi	# MEM <char[1:2]> [(void *)_179], _180
	jne	.L464	#,
	movzbl	1(%rbp), %esi	# MEM <char[1:2]> [(void *)_179], MEM <char[1:2]> [(void *)_179]
	negl	%esi	# _180
.L464:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:34:       if (__comparison < 0)
	testl	%esi, %esi	# _180
	js	.L493	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L466	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%rax), %r10	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r11, %r10	# __u, __l
	jb	.L467	#,
.L533:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	$-1, %eax	#, iftmp.16_183
.L468:
# run.c:525:         tokens[(*n_tokens)++] = dummy_prefix;
	leal	1(%rdx), %ecx	#, tmp247
	movl	%ecx, (%r9)	# tmp247, *n_tokens_138(D)
# run.c:525:         tokens[(*n_tokens)++] = dummy_prefix;
	movq	64(%rsp), %rcx	# %sfp, tokens
	movl	%eax, (%rcx,%rdx,4)	# iftmp.16_183, *_32
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movzbl	(%r15), %eax	# *text_127(D), _10
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	testb	%al, %al	# _10
	je	.L529	#,
	movq	%r15, 8(%rsp)	# text, %sfp
	movq	%r14, %rbp	# _27, _27
	movq	%r9, 32(%rsp)	# n_tokens, %sfp
.L469:
# run.c:544:         if ((*c & 0xC0) != 0x80) {
	movl	%eax, %edx	# _10, tmp250
	andl	$192, %edx	#, tmp250
# run.c:544:         if ((*c & 0xC0) != 0x80) {
	cmpl	$128, %edx	#, tmp250
	je	.L534	#,
	movq	$1, 24(%rsp)	#, %sfp
	movq	%rbx, %rdx	# str_buffer, _387
	movl	$1, %ecx	#, _391
.L471:
# run.c:551:         str_buffer[str_len++] = *c; // ++ is post-increment, incremented after this line
	movb	%al, (%rdx)	# _10, *prephitmp_388
# run.c:552:         str_buffer[str_len] = '\0';
	movq	24(%rsp), %rax	# %sfp, str_len
	movb	$0, (%rbx,%rax)	#, *_36
# run.c:556:         if ((*(c+1) & 0xC0) == 0x80 && str_len < 4) {
	movq	8(%rsp), %rax	# %sfp, text
	movzbl	1(%rax), %eax	# MEM[(char *)c_60 + 1B], _10
# run.c:556:         if ((*(c+1) & 0xC0) == 0x80 && str_len < 4) {
	movl	%eax, %edx	# _10, tmp253
	andl	$192, %edx	#, tmp253
# run.c:556:         if ((*(c+1) & 0xC0) == 0x80 && str_len < 4) {
	cmpl	$128, %edx	#, tmp253
	jne	.L472	#,
	testb	%cl, %cl	# _391
	jne	.L535	#,
.L472:
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movq	16(%rsp), %rax	# %sfp, t
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:27:   __l = 0;
	xorl	%r12d, %r12d	# __l
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movslq	24(%rax), %r13	# t_129(D)->vocab_size, __u
	.p2align 4,,10
	.p2align 3
.L475:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r13, %r12	# __u, __l
	jnb	.L536	#,
.L477:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	leaq	0(%r13,%r12), %rdx	#, tmp257
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	%rbx, %rdi	# str_buffer,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	shrq	%rdx	# tmp257
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	movq	%rdx, %rcx	# __idx, tmp258
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	movq	%rdx, %r15	# tmp257, __idx
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	salq	$4, %rcx	#, tmp258
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	leaq	0(%rbp,%rcx), %r14	#, __p
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	(%r14), %rsi	# MEM[(struct TokenIndex *)__p_193].str, MEM[(struct TokenIndex *)__p_193].str
	call	strcmp@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:34:       if (__comparison < 0)
	testl	%eax, %eax	# tmp315
	js	.L495	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L476	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%r15), %r12	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r13, %r12	# __u, __l
	jb	.L477	#,
.L536:
# run.c:565:             tokens[(*n_tokens)++] = id;
	movq	32(%rsp), %rax	# %sfp, n_tokens
# run.c:565:             tokens[(*n_tokens)++] = id;
	movq	64(%rsp), %rcx	# %sfp, tokens
# run.c:565:             tokens[(*n_tokens)++] = id;
	movslq	(%rax), %rax	# *n_tokens_138(D),
# run.c:565:             tokens[(*n_tokens)++] = id;
	leal	1(%rax), %esi	#, _421
# run.c:565:             tokens[(*n_tokens)++] = id;
	leaq	(%rcx,%rax,4), %rdx	#, _422
.L479:
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movq	32(%rsp), %rdi	# %sfp, n_tokens
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movzbl	(%rbx), %eax	# *str_buffer_137, _102
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movl	%esi, (%rdi)	# _421, *n_tokens_138(D)
# run.c:570:             for (int i=0; i < str_len; i++) {
	movq	24(%rsp), %rsi	# %sfp, str_len
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	addl	$3, %eax	#, tmp263
	movl	%eax, (%rdx)	# tmp263, *_422
# run.c:570:             for (int i=0; i < str_len; i++) {
	cmpq	$1, %rsi	#, str_len
	je	.L481	#,
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movslq	(%rdi), %rax	# *n_tokens_138(D),
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movzbl	1(%rbx), %edx	# MEM[(char *)str_buffer_137 + 1B], _369
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movq	64(%rsp), %r11	# %sfp, tokens
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	leal	1(%rax), %ecx	#, tmp264
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	addl	$3, %edx	#, tmp266
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movl	%ecx, (%rdi)	# tmp264, *n_tokens_138(D)
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movl	%edx, (%r11,%rax,4)	# tmp266, *_363
# run.c:570:             for (int i=0; i < str_len; i++) {
	cmpq	$2, %rsi	#, str_len
	je	.L481	#,
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movslq	(%rdi), %rax	# *n_tokens_138(D),
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movzbl	2(%rbx), %edx	# MEM[(char *)str_buffer_137 + 2B], _352
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	leal	1(%rax), %ecx	#, tmp267
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	addl	$3, %edx	#, tmp269
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movl	%ecx, (%rdi)	# tmp267, *n_tokens_138(D)
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movl	%edx, (%r11,%rax,4)	# tmp269, *_346
# run.c:570:             for (int i=0; i < str_len; i++) {
	cmpq	$4, %rsi	#, str_len
	jne	.L481	#,
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movslq	(%rdi), %rax	# *n_tokens_138(D),
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movzbl	3(%rbx), %edx	# MEM[(char *)str_buffer_137 + 3B], _50
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	leal	1(%rax), %ecx	#, tmp270
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	addl	$3, %edx	#, tmp272
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movl	%ecx, (%rdi)	# tmp270, *n_tokens_138(D)
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movl	%edx, (%r11,%rax,4)	# tmp272, *_55
.L481:
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movq	8(%rsp), %rax	# %sfp, text
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	addq	$1, 8(%rsp)	#, %sfp
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movzbl	1(%rax), %eax	# MEM[(char *)c_60 + 1B], _10
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	testb	%al, %al	# _10
	jne	.L469	#,
.L538:
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movq	32(%rsp), %r9	# %sfp, n_tokens
.L529:
	movl	(%r9), %edx	# *n_tokens_138(D), _96
	movq	64(%rsp), %rbp	# %sfp, tokens
	movq	%r9, %r8	# n_tokens, n_tokens
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	$1, %edx	#, _96
	jle	.L527	#,
	.p2align 4,,10
	.p2align 3
.L537:
# run.c:581:         int best_idx = -1;
	movl	$-1, %esi	#, best_idx
# run.c:580:         int best_id = -1;
	movl	$-1, %edi	#, best_id
# run.c:579:         float best_score = -1e10;
	vmovss	.LC46(%rip), %xmm3	#, best_score
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movq	$0, 8(%rsp)	#, %sfp
# run.c:579:         float best_score = -1e10;
	movl	%edi, 24(%rsp)	# best_id, %sfp
	movl	%esi, 32(%rsp)	# best_idx, %sfp
	movq	%rbp, 40(%rsp)	# tokens, %sfp
	movq	%r8, 48(%rsp)	# n_tokens, %sfp
	vmovss	%xmm3, 72(%rsp)	# best_score, %sfp
	.p2align 4,,10
	.p2align 3
.L488:
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	16(%rsp), %r14	# %sfp, t
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	40(%rsp), %rdi	# %sfp, tokens
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$2, %esi	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:27:   __l = 0;
	xorl	%r13d, %r13d	# __l
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	8(%rsp), %rdx	# %sfp, ivtmp.886
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	(%r14), %rax	# t_129(D)->vocab, _59
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movslq	4(%rdi,%rdx,4), %rcx	# MEM[(int *)tokens_142(D) + 4B + ivtmp.886_272 * 4], MEM[(int *)tokens_142(D) + 4B + ivtmp.886_272 * 4]
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movslq	(%rdi,%rdx,4), %rdx	# MEM[(int *)tokens_142(D) + ivtmp.886_272 * 4], MEM[(int *)tokens_142(D) + ivtmp.886_272 * 4]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	%rbx, %rdi	# str_buffer,
	movq	(%rax,%rcx,8), %r9	# *_67,
	movq	(%rax,%rdx,8), %r8	# *_74,
	leaq	.LC48(%rip), %rcx	#,
	xorl	%eax, %eax	#
	movq	56(%rsp), %rdx	# %sfp,
	call	__sprintf_chk@PLT	#
# run.c:586:             int id = str_lookup(str_buffer, t->sorted_vocab, t->vocab_size);
	movq	16(%r14), %r12	# t_129(D)->sorted_vocab, _77
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movslq	24(%r14), %r14	# t_129(D)->vocab_size, __u
	movq	%r12, %rbp	# _77, _77
	.p2align 4,,10
	.p2align 3
.L483:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r13	# __u, __l
	jnb	.L486	#,
.L485:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	leaq	(%r14,%r13), %r15	#, tmp281
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	%rbx, %rdi	# str_buffer,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:31:       __idx = (__l + __u) / 2;
	shrq	%r15	# __idx
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	movq	%r15, %rax	# __idx, tmp282
	salq	$4, %rax	#, tmp282
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:32:       __p = (const void *) (((const char *) __base) + (__idx * __size));
	leaq	0(%rbp,%rax), %r12	#, __p
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	(%r12), %rsi	# MEM[(struct TokenIndex *)__p_208].str, MEM[(struct TokenIndex *)__p_208].str
	call	strcmp@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:34:       if (__comparison < 0)
	testl	%eax, %eax	# tmp316
	js	.L496	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L484	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%r15), %r13	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r13	# __u, __l
	jb	.L485	#,
.L486:
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movq	48(%rsp), %rax	# %sfp, n_tokens
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	addq	$1, 8(%rsp)	#, %sfp
	movq	8(%rsp), %rcx	# %sfp, ivtmp.886
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movl	(%rax), %edx	# *n_tokens_138(D), _96
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	leal	-1(%rdx), %eax	#, tmp287
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	%ecx, %eax	# tmp421, tmp287
	jg	.L488	#,
# run.c:595:         if (best_idx == -1) {
	movl	32(%rsp), %esi	# %sfp, best_idx
	movl	24(%rsp), %edi	# %sfp, best_id
	movq	40(%rsp), %rbp	# %sfp, tokens
	movq	48(%rsp), %r8	# %sfp, n_tokens
	cmpl	$-1, %esi	#, best_idx
	je	.L527	#,
# run.c:600:         tokens[best_idx] = best_id;
	movslq	%esi, %rax	# best_idx, best_idx
# run.c:600:         tokens[best_idx] = best_id;
	movl	%edi, 0(%rbp,%rax,4)	# best_id, *_87
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	movl	(%r8), %ecx	# *n_tokens_138(D), tmp422
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	leal	1(%rsi), %eax	#, i
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	leal	-1(%rcx), %edx	#, _96
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	cmpl	%eax, %edx	# i, _96
	jle	.L489	#,
	cltq
	.p2align 4,,10
	.p2align 3
.L490:
# run.c:603:             tokens[i] = tokens[i+1];
	movl	4(%rbp,%rax,4), %edx	# MEM[(int *)tokens_142(D) + 4B + ivtmp.878_267 * 4], MEM[(int *)tokens_142(D) + 4B + ivtmp.878_267 * 4]
	movl	%edx, 0(%rbp,%rax,4)	# MEM[(int *)tokens_142(D) + 4B + ivtmp.878_267 * 4], MEM[(int *)tokens_142(D) + ivtmp.878_267 * 4]
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	movl	(%r8), %ecx	# *n_tokens_138(D), tmp423
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	addq	$1, %rax	#, ivtmp.878
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	leal	-1(%rcx), %edx	#, _96
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	cmpl	%eax, %edx	# ivtmp.878, _96
	jg	.L490	#,
.L489:
# run.c:605:         (*n_tokens)--; // token length decreased
	movl	%edx, (%r8)	# _96, *n_tokens_138(D)
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	$1, %edx	#, _96
	jg	.L537	#,
.L527:
	movq	%r8, %r9	# n_tokens, n_tokens
	jmp	.L462	#
	.p2align 4,,10
	.p2align 3
.L495:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%r15, %r13	# __idx, __u
	jmp	.L475	#
.L476:
# run.c:565:             tokens[(*n_tokens)++] = id;
	movq	32(%rsp), %rcx	# %sfp, n_tokens
# run.c:565:             tokens[(*n_tokens)++] = id;
	movq	64(%rsp), %rdi	# %sfp, tokens
# run.c:565:             tokens[(*n_tokens)++] = id;
	movslq	(%rcx), %rax	# *n_tokens_138(D),
# run.c:565:             tokens[(*n_tokens)++] = id;
	leal	1(%rax), %esi	#, _421
# run.c:565:             tokens[(*n_tokens)++] = id;
	leaq	(%rdi,%rax,4), %rdx	#, _422
# run.c:490:     return res != NULL ? res->id : -1;
	movl	8(%r14), %eax	# MEM[(struct TokenIndex *)__p_193].id, iftmp.16_198
# run.c:563:         if (id != -1) {
	cmpl	$-1, %eax	#, iftmp.16_198
	je	.L479	#,
# run.c:565:             tokens[(*n_tokens)++] = id;
	movl	%esi, (%rcx)	# _421, *n_tokens_138(D)
# run.c:565:             tokens[(*n_tokens)++] = id;
	movl	%eax, (%rdx)	# iftmp.16_198, *_434
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movq	8(%rsp), %rax	# %sfp, text
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	addq	$1, 8(%rsp)	#, %sfp
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movzbl	1(%rax), %eax	# MEM[(char *)c_60 + 1B], _10
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	testb	%al, %al	# _10
	jne	.L469	#,
	jmp	.L538	#
	.p2align 4,,10
	.p2align 3
.L496:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%r15, %r14	# __idx, __u
	jmp	.L483	#
	.p2align 4,,10
	.p2align 3
.L484:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	8(%r12), %eax	# MEM[(struct TokenIndex *)__p_208].id, iftmp.16_213
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	cmpl	$-1, %eax	#, iftmp.16_213
	je	.L486	#,
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	movq	16(%rsp), %rdi	# %sfp, t
	movslq	%eax, %rcx	# iftmp.16_213, iftmp.16_213
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	vmovss	72(%rsp), %xmm1	# %sfp, best_score
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	movq	8(%rdi), %rdx	# t_129(D)->vocab_scores, t_129(D)->vocab_scores
	vmovss	(%rdx,%rcx,4), %xmm0	# *_81, _82
# run.c:589:                 best_score = t->vocab_scores[id];
	movl	32(%rsp), %ecx	# %sfp, best_idx
	vmaxss	%xmm1, %xmm0, %xmm2	# best_score, _82, best_score
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	vcomiss	%xmm1, %xmm0	# best_score, _82
# run.c:589:                 best_score = t->vocab_scores[id];
	cmova	8(%rsp), %ecx	# %sfp,, best_idx
	cmovbe	24(%rsp), %eax	# iftmp.16_213,, %sfp, iftmp.16_213
	movl	%ecx, 32(%rsp)	# best_idx, %sfp
	movl	%eax, 24(%rsp)	# iftmp.16_213, %sfp
	vmovss	%xmm2, 72(%rsp)	# best_score, %sfp
	jmp	.L486	#
.L535:
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	addq	$1, 8(%rsp)	#, %sfp
.L473:
# run.c:551:         str_buffer[str_len++] = *c; // ++ is post-increment, incremented after this line
	movq	24(%rsp), %rcx	# %sfp, str_len
	leaq	(%rbx,%rcx), %rdx	#, _387
# run.c:551:         str_buffer[str_len++] = *c; // ++ is post-increment, incremented after this line
	addq	$1, %rcx	#, str_len
# run.c:556:         if ((*(c+1) & 0xC0) == 0x80 && str_len < 4) {
	cmpq	$4, %rcx	#, str_len
# run.c:551:         str_buffer[str_len++] = *c; // ++ is post-increment, incremented after this line
	movq	%rcx, 24(%rsp)	# str_len, %sfp
# run.c:556:         if ((*(c+1) & 0xC0) == 0x80 && str_len < 4) {
	setne	%cl	#, _391
	jmp	.L471	#
.L493:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%rax, %r11	# __idx, __u
	jmp	.L465	#
.L466:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	8(%rcx), %eax	# MEM[(struct TokenIndex *)__p_178].id, iftmp.16_183
	jmp	.L468	#
.L531:
# run.c:500:         t->sorted_vocab = malloc(t->vocab_size * sizeof(TokenIndex));
	movslq	24(%rdi), %rbx	# t_129(D)->vocab_size,
	movq	%rdi, %rbp	# t, t
	movq	%r9, 8(%rsp)	# n_tokens, %sfp
# run.c:500:         t->sorted_vocab = malloc(t->vocab_size * sizeof(TokenIndex));
	movq	%rbx, %rdi	# _4, tmp232
	salq	$4, %rdi	#, tmp232
	call	malloc@PLT	#
# run.c:501:         for (int i = 0; i < t->vocab_size; i++) {
	testl	%ebx, %ebx	# _3
	movq	8(%rsp), %r9	# %sfp, n_tokens
# run.c:500:         t->sorted_vocab = malloc(t->vocab_size * sizeof(TokenIndex));
	movq	%rax, 16(%rbp)	# _6, t_129(D)->sorted_vocab
# run.c:500:         t->sorted_vocab = malloc(t->vocab_size * sizeof(TokenIndex));
	movq	%rax, %rdi	# tmp313, _6
# run.c:501:         for (int i = 0; i < t->vocab_size; i++) {
	jle	.L459	#,
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	16(%rsp), %rax	# %sfp, t
	movq	%rdi, %rdx	# _6, ivtmp.900
	movq	(%rax), %rcx	# t_129(D)->vocab, _7
	xorl	%eax, %eax	# ivtmp.897
.L458:
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	(%rcx,%rax,8), %rsi	# MEM[(char * *)_7 + ivtmp.897_276 * 8], _15
# run.c:503:             t->sorted_vocab[i].id = i;
	movl	%eax, 8(%rdx)	# ivtmp.897, MEM[(int *)_281 + 8B]
# run.c:501:         for (int i = 0; i < t->vocab_size; i++) {
	addq	$1, %rax	#, ivtmp.897
	addq	$16, %rdx	#, ivtmp.900
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	%rsi, -16(%rdx)	# _15, MEM[(char * *)_281]
# run.c:501:         for (int i = 0; i < t->vocab_size; i++) {
	cmpq	%rax, %rbx	# ivtmp.897, _4
	jne	.L458	#,
.L459:
# run.c:505:         qsort(t->sorted_vocab, t->vocab_size, sizeof(TokenIndex), compare_tokens);
	leaq	compare_tokens(%rip), %rcx	#, tmp234
	movl	$16, %edx	#,
	movq	%rbx, %rsi	# _4,
	movq	%r9, 8(%rsp)	# n_tokens, %sfp
	call	qsort@PLT	#
	movq	8(%rsp), %r9	# %sfp, n_tokens
	jmp	.L456	#
.L534:
	movq	$0, 24(%rsp)	#, %sfp
	jmp	.L473	#
.L530:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$24, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC47(%rip), %rdi	#, tmp231
	call	fwrite@PLT	#
# run.c:496:     if (text == NULL) { fprintf(stderr, "cannot encode NULL text\n"); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE6502:
	.size	encode, .-encode
	.p2align 4
	.globl	sample_argmax
	.type	sample_argmax, @function
sample_argmax:
.LFB6503:
	.cfi_startproc
	endbr64	
# run.c:634:     float max_p = probabilities[0];
	vmovss	(%rdi), %xmm0	# *probabilities_12(D), max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %esi	#, n
	jle	.L544	#,
	movl	%esi, %esi	# n, _3
	movl	$1, %eax	#, ivtmp.911
# run.c:633:     int max_i = 0;
	xorl	%edx, %edx	# <retval>
	.p2align 4,,10
	.p2align 3
.L543:
# run.c:636:         if (probabilities[i] > max_p) {
	vmovss	(%rdi,%rax,4), %xmm1	# MEM[(float *)probabilities_12(D) + ivtmp.911_7 * 4], _26
# run.c:636:         if (probabilities[i] > max_p) {
	vcomiss	%xmm0, %xmm1	# max_p, _26
# run.c:638:             max_p = probabilities[i];
	vmaxss	%xmm0, %xmm1, %xmm0	# max_p, _26, max_p
	cmova	%eax, %edx	# ivtmp.911,, <retval>
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rax	#, ivtmp.911
	cmpq	%rax, %rsi	# ivtmp.911, _3
	jne	.L543	#,
# run.c:642: }
	movl	%edx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L544:
# run.c:633:     int max_i = 0;
	xorl	%edx, %edx	# <retval>
# run.c:642: }
	movl	%edx, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE6503:
	.size	sample_argmax, .-sample_argmax
	.p2align 4
	.globl	sample_mult
	.type	sample_mult, @function
sample_mult:
.LFB6504:
	.cfi_startproc
	endbr64	
# run.c:648:     for (int i = 0; i < n; i++) {
	testl	%esi, %esi	# n
	jle	.L548	#,
	movslq	%esi, %rdx	# n, _5
	xorl	%eax, %eax	# ivtmp.923
# run.c:647:     float cdf = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# cdf
	jmp	.L552	#
	.p2align 4,,10
	.p2align 3
.L556:
# run.c:648:     for (int i = 0; i < n; i++) {
	addq	$1, %rax	#, ivtmp.923
	cmpq	%rax, %rdx	# ivtmp.923, _5
	je	.L548	#,
.L552:
# run.c:649:         cdf += probabilities[i];
	vaddss	(%rdi,%rax,4), %xmm1, %xmm1	# MEM[(float *)probabilities_11(D) + ivtmp.923_16 * 4], cdf, cdf
# run.c:650:         if (coin < cdf) {
	vcomiss	%xmm0, %xmm1	# coin, cdf
	jbe	.L556	#,
# run.c:655: }
	ret	
	.p2align 4,,10
	.p2align 3
.L548:
# run.c:654:     return n - 1; // in case of rounding errors
	leal	-1(%rsi), %eax	#, <retval>
# run.c:655: }
	ret	
	.cfi_endproc
.LFE6504:
	.size	sample_mult, .-sample_mult
	.p2align 4
	.globl	sample_topp
	.type	sample_topp, @function
sample_topp:
.LFB6506:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# run.c:675:     const float cutoff = (1.0f - topp) / (n - 1);
	leal	-1(%rsi), %eax	#, tmp117
# run.c:675:     const float cutoff = (1.0f - topp) / (n - 1);
	vxorps	%xmm2, %xmm2, %xmm2	# tmp131
# run.c:665: int sample_topp(float* probabilities, int n, float topp, ProbIndex* probindex, float coin) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
# run.c:675:     const float cutoff = (1.0f - topp) / (n - 1);
	vcvtsi2ssl	%eax, %xmm2, %xmm2	# tmp117, tmp131, tmp132
# run.c:665: int sample_topp(float* probabilities, int n, float topp, ProbIndex* probindex, float coin) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx	# tmp129, probindex
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# run.c:675:     const float cutoff = (1.0f - topp) / (n - 1);
	vmovss	.LC7(%rip), %xmm3	#, tmp116
	vsubss	%xmm0, %xmm3, %xmm3	# topp, tmp116, tmp115
# run.c:675:     const float cutoff = (1.0f - topp) / (n - 1);
	vdivss	%xmm2, %xmm3, %xmm3	# tmp118, tmp115, cutoff
# run.c:676:     for (int i = 0; i < n; i++) {
	testl	%esi, %esi	# n
	jle	.L558	#,
	movq	%rdi, %rcx	# tmp126, probabilities
	movslq	%esi, %rsi	# n, _59
	xorl	%eax, %eax	# ivtmp.945
# run.c:671:     int n0 = 0;
	xorl	%ebp, %ebp	# n0
	.p2align 4,,10
	.p2align 3
.L561:
# run.c:677:         if (probabilities[i] >= cutoff) {
	vmovss	(%rcx,%rax,4), %xmm2	# MEM[(float *)probabilities_52(D) + ivtmp.945_61 * 4], _7
# run.c:677:         if (probabilities[i] >= cutoff) {
	vcomiss	%xmm3, %xmm2	# cutoff, _7
	jb	.L559	#,
# run.c:678:             probindex[n0].index = i;
	movslq	%ebp, %rdx	# n0, n0
# run.c:680:             n0++;
	addl	$1, %ebp	#, n0
# run.c:678:             probindex[n0].index = i;
	leaq	(%rbx,%rdx,8), %rdx	#, _10
# run.c:678:             probindex[n0].index = i;
	movl	%eax, 4(%rdx)	# ivtmp.945, _10->index
# run.c:679:             probindex[n0].prob = probabilities[i];
	vmovss	%xmm2, (%rdx)	# _7, _10->prob
.L559:
# run.c:676:     for (int i = 0; i < n; i++) {
	addq	$1, %rax	#, ivtmp.945
	cmpq	%rax, %rsi	# ivtmp.945, _59
	jne	.L561	#,
# run.c:683:     qsort(probindex, n0, sizeof(ProbIndex), compare);
	movslq	%ebp, %r12	# n0, _11
	leaq	compare(%rip), %rcx	#, tmp122
	movl	$8, %edx	#,
	movq	%rbx, %rdi	# probindex,
	movq	%r12, %rsi	# _11,
	vmovss	%xmm1, 8(%rsp)	# coin, %sfp
	vmovss	%xmm0, 12(%rsp)	# topp, %sfp
	call	qsort@PLT	#
# run.c:688:     for (int i = 0; i < n0; i++) {
	testl	%ebp, %ebp	# n0
	vmovss	8(%rsp), %xmm1	# %sfp, coin
# run.c:687:     int last_idx = n0 - 1; // in case of rounding errors consider all elements
	leal	-1(%rbp), %ecx	#, i
# run.c:688:     for (int i = 0; i < n0; i++) {
	jle	.L575	#,
# run.c:686:     float cumulative_prob = 0.0f;
	vmovss	12(%rsp), %xmm0	# %sfp, topp
# run.c:688:     for (int i = 0; i < n0; i++) {
	xorl	%eax, %eax	# ivtmp.940
# run.c:686:     float cumulative_prob = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# cumulative_prob
	jmp	.L567	#
	.p2align 4,,10
	.p2align 3
.L583:
# run.c:688:     for (int i = 0; i < n0; i++) {
	addq	$1, %rax	#, ivtmp.940
	cmpq	%rax, %r12	# ivtmp.940, _11
	je	.L587	#,
.L567:
# run.c:689:         cumulative_prob += probindex[i].prob;
	vaddss	(%rbx,%rax,8), %xmm2, %xmm2	# MEM[(float *)probindex_41(D) + ivtmp.940_72 * 8], cumulative_prob, cumulative_prob
# run.c:690:         if (cumulative_prob > topp) {
	vcomiss	%xmm0, %xmm2	# topp, cumulative_prob
	jbe	.L583	#,
	movl	%eax, %ecx	# ivtmp.940, i
.L564:
# run.c:697:     float r = coin * cumulative_prob;
	vmulss	%xmm1, %xmm2, %xmm2	# coin, cumulative_prob, r
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	testl	%ecx, %ecx	# i
	js	.L569	#,
.L574:
	movq	%rbx, %rax	# probindex, ivtmp.936
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	xorl	%edx, %edx	# i
# run.c:698:     float cdf = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# cdf
	jmp	.L573	#
	.p2align 4,,10
	.p2align 3
.L585:
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	addl	$1, %edx	#, i
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	addq	$8, %rax	#, ivtmp.936
	cmpl	%edx, %ecx	# i, i
	jl	.L569	#,
.L573:
# run.c:700:         cdf += probindex[i].prob;
	vaddss	(%rax), %xmm0, %xmm0	# MEM[(float *)_18], cdf, cdf
# run.c:701:         if (r < cdf) {
	vcomiss	%xmm2, %xmm0	# r, cdf
	jbe	.L585	#,
# run.c:702:             return probindex[i].index;
	movl	4(%rax), %eax	# _18->index, <retval>
# run.c:706: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L569:
	.cfi_restore_state
# run.c:705:     return probindex[last_idx].index; // in case of rounding errors
	movslq	%ecx, %rcx	# i, i
	salq	$3, %rcx	#, _85
.L563:
# run.c:705:     return probindex[last_idx].index; // in case of rounding errors
	movl	4(%rbx,%rcx), %eax	# _24->index, <retval>
# run.c:706: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L587:
	.cfi_restore_state
# run.c:697:     float r = coin * cumulative_prob;
	vmulss	%xmm1, %xmm2, %xmm2	# coin, cumulative_prob, r
	jmp	.L574	#
	.p2align 4,,10
	.p2align 3
.L558:
# run.c:683:     qsort(probindex, n0, sizeof(ProbIndex), compare);
	leaq	compare(%rip), %rcx	#, tmp121
	movl	$8, %edx	#,
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# probindex,
	call	qsort@PLT	#
	movq	$-8, %rcx	#, _85
	jmp	.L563	#
.L575:
# run.c:686:     float cumulative_prob = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# cumulative_prob
	jmp	.L564	#
	.cfi_endproc
.LFE6506:
	.size	sample_topp, .-sample_topp
	.p2align 4
	.type	sample.part.0, @function
sample.part.0:
.LFB6519:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13	#,
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r13)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	%rsi, %r15	# tmp310, logits
	pushq	%r14	#
	pushq	%r13	#
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12	#
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rdi, %r12	# tmp309, sampler
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movl	(%rdi), %r13d	# sampler_7(D)->vocab_size, _89
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	testl	%r13d, %r13d	# _89
	jle	.L589	#,
	leal	-1(%r13), %eax	#, _169
	movslq	%r13d, %rcx	# _89, _89
	movl	%eax, -68(%rbp)	# _169, %sfp
	cmpl	$2, %eax	#, _169
	jbe	.L590	#,
	leaq	(%rsi,%rcx,4), %rax	#, tmp225
	leaq	16(%rdi), %rdx	#, tmp226
	cmpq	%rax, %rdx	# tmp225, tmp226
	jnb	.L623	#,
	leaq	20(%rdi), %rax	#, tmp229
	cmpq	%rax, %rsi	# tmp229, logits
	jnb	.L623	#,
.L590:
	movq	%r15, %rax	# logits, ivtmp.1030
	leaq	(%r15,%rcx,4), %rdx	#, _52
	.p2align 4,,10
	.p2align 3
.L598:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vmovss	(%rax), %xmm0	# MEM[(float *)_121], MEM[(float *)_121]
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	addq	$4, %rax	#, ivtmp.1030
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vdivss	16(%r12), %xmm0, %xmm0	# sampler_7(D)->temperature, MEM[(float *)_121], tmp259
	vmovss	%xmm0, -4(%rax)	# tmp259, MEM[(float *)_121]
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	cmpq	%rax, %rdx	# ivtmp.1030, _52
	jne	.L598	#,
# run.c:206:     float max_val = x[0];
	vmovss	(%r15), %xmm1	# *logits_4(D), max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpl	$1, %r13d	#, _89
	je	.L600	#,
.L597:
	leal	-2(%r13), %edx	#, tmp262
	leaq	4(%r15), %rax	#, ivtmp.1023
	leaq	8(%r15,%rdx,4), %rdx	#, _261
	.p2align 4,,10
	.p2align 3
.L603:
# run.c:208:         if (x[i] > max_val) {
	vmovss	(%rax), %xmm0	# MEM[(float *)_140], _115
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.1023
# run.c:209:             max_val = x[i];
	vmaxss	%xmm1, %xmm0, %xmm1	# max_val, _115, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rdx, %rax	# _261, ivtmp.1023
	jne	.L603	#,
.L600:
	leaq	(%r15,%rcx,4), %rax	#, _262
	movq	%r15, %r14	# logits, ivtmp.1013
# run.c:213:     float sum = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# sum
# run.c:209:             max_val = x[i];
	movq	%r15, %rbx	# logits, ivtmp.1017
	movq	%rax, -64(%rbp)	# _262, %sfp
	.p2align 4,,10
	.p2align 3
.L604:
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	(%rbx), %xmm0	# MEM[(float *)_238], MEM[(float *)_238]
	vmovss	%xmm2, -56(%rbp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %rbx	#, ivtmp.1017
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	%xmm1, -52(%rbp)	# max_val, %sfp
	vsubss	%xmm1, %xmm0, %xmm0	# max_val, MEM[(float *)_238], tmp267
	call	expf@PLT	#
# run.c:214:     for (int i = 0; i < size; i++) {
	movq	-64(%rbp), %rax	# %sfp, _262
# run.c:216:         sum += x[i];
	vmovss	-56(%rbp), %xmm2	# %sfp, sum
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	%xmm0, -4(%rbx)	# _64, MEM[(float *)_238]
# run.c:214:     for (int i = 0; i < size; i++) {
	vmovss	-52(%rbp), %xmm1	# %sfp, max_val
	cmpq	%rax, %rbx	# _262, ivtmp.1017
# run.c:216:         sum += x[i];
	vaddss	%xmm0, %xmm2, %xmm2	# _64, sum, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	jne	.L604	#,
	cmpl	$6, -68(%rbp)	#, %sfp
	jbe	.L622	#,
	movl	%r13d, %edx	# _89, bnd.959
	vshufps	$0, %xmm2, %xmm2, %xmm1	# sum, vect_cst__46
	vinsertf128	$1, %xmm1, %ymm1, %ymm1	# vect_cst__46, vect_cst__46
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, tmp282
	addq	%r15, %rdx	# logits, _180
	.p2align 4,,10
	.p2align 3
.L609:
# run.c:220:         x[i] /= sum;
	vmovups	(%r14), %ymm3	# MEM <vector(8) float> [(float *)_227], tmp331
	addq	$32, %r14	#, ivtmp.1013
	vdivps	%ymm1, %ymm3, %ymm0	# vect_cst__46, tmp331, vect__74.965
	vmovups	%ymm0, -32(%r14)	# vect__74.965, MEM <vector(8) float> [(float *)_227]
	cmpq	%r14, %rdx	# ivtmp.1013, _180
	jne	.L609	#,
	movl	%r13d, %eax	# _89, tmp.971
	andl	$-8, %eax	#, tmp.971
	movl	%eax, %edx	# tmp.971,
	cmpl	%r13d, %eax	# _89, tmp.971
	je	.L655	#,
	vzeroupper
.L608:
	movl	%r13d, %ecx	# _89, niters.968
	subl	%edx, %ecx	# niters_vector_mult_vf.960, niters.968
	leal	-1(%rcx), %esi	#, tmp285
	cmpl	$2, %esi	#, tmp285
	jbe	.L612	#,
	leaq	(%r15,%rdx,4), %rdx	#, vectp_logits.973
	vshufps	$0, %xmm2, %xmm2, %xmm0	# sum, tmp289
	vmovups	(%rdx), %xmm5	# MEM <vector(4) float> [(float *)vectp_logits.973_150], tmp334
	vdivps	%xmm0, %xmm5, %xmm0	# tmp289, tmp334, vect__95.975
	vmovups	%xmm0, (%rdx)	# vect__95.975, MEM <vector(4) float> [(float *)vectp_logits.973_150]
	movl	%ecx, %edx	# niters.968, niters_vector_mult_vf.970
	andl	$-4, %edx	#, niters_vector_mult_vf.970
	addl	%edx, %eax	# niters_vector_mult_vf.970, tmp.971
	andl	$3, %ecx	#, niters.968
	je	.L589	#,
.L612:
# run.c:220:         x[i] /= sum;
	movslq	%eax, %rdx	# tmp.971, tmp.971
	salq	$2, %rdx	#, _3
	leaq	(%r15,%rdx), %rcx	#, _5
# run.c:220:         x[i] /= sum;
	vmovss	(%rcx), %xmm0	# *_5, *_5
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_5, tmp294
	vmovss	%xmm0, (%rcx)	# tmp294, *_5
# run.c:219:     for (int i = 0; i < size; i++) {
	leal	1(%rax), %ecx	#, i
# run.c:219:     for (int i = 0; i < size; i++) {
	cmpl	%r13d, %ecx	# _89, i
	jge	.L589	#,
# run.c:220:         x[i] /= sum;
	leaq	4(%r15,%rdx), %rcx	#, _198
# run.c:219:     for (int i = 0; i < size; i++) {
	addl	$2, %eax	#, i
# run.c:220:         x[i] /= sum;
	vmovss	(%rcx), %xmm0	# *_198, *_198
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_198, tmp298
	vmovss	%xmm0, (%rcx)	# tmp298, *_198
# run.c:219:     for (int i = 0; i < size; i++) {
	cmpl	%eax, %r13d	# i, _89
	jle	.L589	#,
# run.c:220:         x[i] /= sum;
	leaq	8(%r15,%rdx), %rax	#, _134
# run.c:220:         x[i] /= sum;
	vmovss	(%rax), %xmm0	# *_134, *_134
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_134, tmp302
	vmovss	%xmm0, (%rax)	# tmp302, *_134
.L589:
# run.c:723:     *state ^= *state >> 12;
	movq	24(%r12), %rdx	# MEM[(long long unsigned int *)sampler_7(D) + 24B], _13
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	vmovss	20(%r12), %xmm0	# sampler_7(D)->topp, _27
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	vxorps	%xmm2, %xmm2, %xmm2	# tmp278
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# tmp312
# run.c:723:     *state ^= *state >> 12;
	movq	%rdx, %rax	# _13, tmp269
	shrq	$12, %rax	#, tmp269
# run.c:723:     *state ^= *state >> 12;
	xorq	%rdx, %rax	# _13, _15
# run.c:724:     *state ^= *state << 25;
	movq	%rax, %rdx	# _15, tmp270
	salq	$25, %rdx	#, tmp270
# run.c:724:     *state ^= *state << 25;
	xorq	%rax, %rdx	# _15, _17
# run.c:725:     *state ^= *state >> 27;
	movq	%rdx, %rax	# _17, tmp271
	shrq	$27, %rax	#, tmp271
# run.c:725:     *state ^= *state >> 27;
	xorq	%rdx, %rax	# _17, _19
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	movabsq	$2685821657736338717, %rdx	#, tmp273
# run.c:725:     *state ^= *state >> 27;
	movq	%rax, 24(%r12)	# _19, MEM[(long long unsigned int *)sampler_7(D) + 24B]
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	imulq	%rdx, %rax	# tmp273, tmp272
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	shrq	$40, %rax	#, tmp275
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	vcomiss	%xmm0, %xmm2	# _27, tmp278
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	vcvtsi2ssl	%eax, %xmm1, %xmm1	# tmp275, tmp312, tmp313
	vmulss	.LC49(%rip), %xmm1, %xmm1	#, tmp276, _26
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	jnb	.L606	#,
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	vcomiss	.LC7(%rip), %xmm0	#, _27
	jb	.L649	#,
.L606:
# run.c:648:     for (int i = 0; i < n; i++) {
	testl	%r13d, %r13d	# _89
	jle	.L616	#,
	movslq	%r13d, %rdx	# _89, _101
	xorl	%eax, %eax	# ivtmp.1004
	vxorps	%xmm0, %xmm0, %xmm0	# cdf
	jmp	.L620	#
	.p2align 4,,10
	.p2align 3
.L656:
	addq	$1, %rax	#, ivtmp.1004
	cmpq	%rax, %rdx	# ivtmp.1004, _101
	je	.L616	#,
.L620:
# run.c:649:         cdf += probabilities[i];
	vaddss	(%r15,%rax,4), %xmm0, %xmm0	# MEM[(float *)logits_4(D) + ivtmp.1004_86 * 4], cdf, cdf
# run.c:650:         if (coin < cdf) {
	vcomiss	%xmm1, %xmm0	# _26, cdf
	jbe	.L656	#,
.L588:
# run.c:755: }
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-16(%r13), %rsp	#,
	.cfi_def_cfa 7, 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L623:
	.cfi_restore_state
	cmpl	$6, -68(%rbp)	#, %sfp
	jbe	.L621	#,
	movl	%r13d, %edx	# _89, bnd.979
	vbroadcastss	16(%r12), %ymm1	# sampler_7(D)->temperature, vect_cst__218
	movq	%r15, %rax	# logits, ivtmp.1034
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, tmp235
	addq	%r15, %rdx	# logits, _167
	.p2align 4,,10
	.p2align 3
.L593:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vmovups	(%rax), %ymm4	# MEM <vector(8) float> [(float *)_76], tmp319
	addq	$32, %rax	#, ivtmp.1034
	vdivps	%ymm1, %ymm4, %ymm0	# vect_cst__218, tmp319, vect__9.985
	vmovups	%ymm0, -32(%rax)	# vect__9.985, MEM <vector(8) float> [(float *)_76]
	cmpq	%rdx, %rax	# _167, ivtmp.1034
	jne	.L593	#,
	movl	%r13d, %eax	# _89, tmp.991
	andl	$-8, %eax	#, tmp.991
	movl	%eax, %edx	# tmp.991,
	cmpl	%eax, %r13d	# tmp.991, _89
	je	.L651	#,
	movl	%r13d, %esi	# _89, niters.988
	subl	%eax, %esi	# tmp.991, niters.988
	leal	-1(%rsi), %r8d	#, tmp238
	cmpl	$2, %r8d	#, tmp238
	jbe	.L657	#,
	vzeroupper
.L592:
	leaq	(%r15,%rdx,4), %rdx	#, vectp_logits.993
	vbroadcastss	16(%r12), %xmm0	# sampler_7(D)->temperature, tmp242
	vmovups	(%rdx), %xmm6	# MEM <vector(4) float> [(float *)vectp_logits.993_249], tmp322
	vdivps	%xmm0, %xmm6, %xmm0	# tmp242, tmp322, vect__200.995
	vmovups	%xmm0, (%rdx)	# vect__200.995, MEM <vector(4) float> [(float *)vectp_logits.993_249]
	movl	%esi, %edx	# niters.988, niters_vector_mult_vf.990
	andl	$-4, %edx	#, niters_vector_mult_vf.990
	addl	%edx, %eax	# niters_vector_mult_vf.990, tmp.991
	andl	$3, %esi	#, niters.988
	je	.L594	#,
.L595:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movslq	%eax, %rdx	# tmp.991, tmp.991
	salq	$2, %rdx	#, _72
	leaq	(%r15,%rdx), %rsi	#, _74
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vmovss	(%rsi), %xmm0	# *_74, *_74
	vdivss	16(%r12), %xmm0, %xmm0	# sampler_7(D)->temperature, *_74, tmp247
	vmovss	%xmm0, (%rsi)	# tmp247, *_74
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	leal	1(%rax), %esi	#, q
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	cmpl	%esi, %r13d	# q, _89
	jle	.L594	#,
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	leaq	4(%r15,%rdx), %rsi	#, _191
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	addl	$2, %eax	#, q
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vmovss	(%rsi), %xmm0	# *_191, *_191
	vdivss	16(%r12), %xmm0, %xmm0	# sampler_7(D)->temperature, *_191, tmp251
	vmovss	%xmm0, (%rsi)	# tmp251, *_191
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	cmpl	%r13d, %eax	# _89, q
	jge	.L594	#,
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	leaq	8(%r15,%rdx), %rax	#, _258
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vmovss	(%rax), %xmm0	# *_258, *_258
	vdivss	16(%r12), %xmm0, %xmm0	# sampler_7(D)->temperature, *_258, tmp255
	vmovss	%xmm0, (%rax)	# tmp255, *_258
# run.c:206:     float max_val = x[0];
	vmovss	(%r15), %xmm1	# *logits_4(D), max_val
	jmp	.L597	#
	.p2align 4,,10
	.p2align 3
.L616:
# run.c:654:     return n - 1; // in case of rounding errors
	leal	-1(%r13), %eax	#, <retval>
	jmp	.L588	#
	.p2align 4,,10
	.p2align 3
.L649:
# run.c:751:             next = sample_topp(logits, sampler->vocab_size, sampler->topp, sampler->probindex, coin);
	movq	8(%r12), %rdx	# sampler_7(D)->probindex, sampler_7(D)->probindex
# run.c:755: }
	addq	$40, %rsp	#,
# run.c:751:             next = sample_topp(logits, sampler->vocab_size, sampler->topp, sampler->probindex, coin);
	movl	%r13d, %esi	# _89,
	movq	%r15, %rdi	# logits,
# run.c:755: }
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-16(%r13), %rsp	#,
	.cfi_def_cfa 7, 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
# run.c:751:             next = sample_topp(logits, sampler->vocab_size, sampler->topp, sampler->probindex, coin);
	jmp	sample_topp	#
.L651:
	.cfi_restore_state
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L594:
# run.c:206:     float max_val = x[0];
	vmovss	(%r15), %xmm1	# *logits_4(D), max_val
	jmp	.L597	#
	.p2align 4,,10
	.p2align 3
.L655:
	vzeroupper
	jmp	.L589	#
.L622:
# run.c:214:     for (int i = 0; i < size; i++) {
	xorl	%edx, %edx	#
# run.c:219:     for (int i = 0; i < size; i++) {
	xorl	%eax, %eax	# tmp.971
	jmp	.L608	#
.L621:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movl	%r13d, %esi	# _89, niters.988
	xorl	%edx, %edx	#
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	xorl	%eax, %eax	# tmp.991
	jmp	.L592	#
.L657:
	vzeroupper
	jmp	.L595	#
	.cfi_endproc
.LFE6519:
	.size	sample.part.0, .-sample.part.0
	.p2align 4
	.globl	build_sampler
	.type	build_sampler, @function
build_sampler:
.LFB6507:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# run.c:710:     sampler->temperature = temperature;
	vunpcklps	%xmm1, %xmm0, %xmm0	# tmp98, tmp97, tmp91
# run.c:708: void build_sampler(Sampler* sampler, int vocab_size, float temperature, float topp, unsigned long long rng_seed) {
	movq	%rdi, %rbx	# tmp95, sampler
# run.c:709:     sampler->vocab_size = vocab_size;
	movl	%esi, (%rdi)	# vocab_size, sampler_5(D)->vocab_size
# run.c:714:     sampler->probindex = malloc(sampler->vocab_size * sizeof(ProbIndex));
	movslq	%esi, %rsi	# vocab_size, vocab_size
# run.c:712:     sampler->rng_state = rng_seed;
	movq	%rdx, 24(%rdi)	# tmp99, sampler_5(D)->rng_state
# run.c:710:     sampler->temperature = temperature;
	vmovlps	%xmm0, 16(%rdi)	# tmp91, MEM <vector(2) float> [(float *)sampler_5(D) + 16B]
# run.c:714:     sampler->probindex = malloc(sampler->vocab_size * sizeof(ProbIndex));
	leaq	0(,%rsi,8), %rdi	#, tmp93
	call	malloc@PLT	#
# run.c:714:     sampler->probindex = malloc(sampler->vocab_size * sizeof(ProbIndex));
	movq	%rax, 8(%rbx)	# tmp100, sampler_5(D)->probindex
# run.c:715: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE6507:
	.size	build_sampler, .-build_sampler
	.p2align 4
	.globl	free_sampler
	.type	free_sampler, @function
free_sampler:
.LFB6508:
	.cfi_startproc
	endbr64	
# run.c:718:     free(sampler->probindex);
	movq	8(%rdi), %rdi	# sampler_3(D)->probindex, sampler_3(D)->probindex
	jmp	free@PLT	#
	.cfi_endproc
.LFE6508:
	.size	free_sampler, .-free_sampler
	.p2align 4
	.globl	random_u32
	.type	random_u32, @function
random_u32:
.LFB6509:
	.cfi_startproc
	endbr64	
# run.c:723:     *state ^= *state >> 12;
	movq	(%rdi), %rdx	# *state_11(D), _1
# run.c:723:     *state ^= *state >> 12;
	movq	%rdx, %rax	# _1, tmp93
	shrq	$12, %rax	#, tmp93
# run.c:723:     *state ^= *state >> 12;
	xorq	%rdx, %rax	# _1, _3
# run.c:724:     *state ^= *state << 25;
	movq	%rax, %rdx	# _3, tmp94
	salq	$25, %rdx	#, tmp94
# run.c:724:     *state ^= *state << 25;
	xorq	%rax, %rdx	# _3, _5
# run.c:725:     *state ^= *state >> 27;
	movq	%rdx, %rax	# _5, tmp95
	shrq	$27, %rax	#, tmp95
# run.c:725:     *state ^= *state >> 27;
	xorq	%rdx, %rax	# _5, _7
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	movabsq	$2685821657736338717, %rdx	#, tmp98
# run.c:725:     *state ^= *state >> 27;
	movq	%rax, (%rdi)	# _7, *state_11(D)
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	imulq	%rdx, %rax	# tmp98, tmp97
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	shrq	$32, %rax	#,
# run.c:727: }
	ret	
	.cfi_endproc
.LFE6509:
	.size	random_u32, .-random_u32
	.p2align 4
	.globl	random_f32
	.type	random_f32, @function
random_f32:
.LFB6510:
	.cfi_startproc
	endbr64	
# run.c:723:     *state ^= *state >> 12;
	movq	(%rdi), %rdx	# *state_4(D), _6
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# tmp108
# run.c:723:     *state ^= *state >> 12;
	movq	%rdx, %rax	# _6, tmp97
	shrq	$12, %rax	#, tmp97
# run.c:723:     *state ^= *state >> 12;
	xorq	%rdx, %rax	# _6, _8
# run.c:724:     *state ^= *state << 25;
	movq	%rax, %rdx	# _8, tmp98
	salq	$25, %rdx	#, tmp98
# run.c:724:     *state ^= *state << 25;
	xorq	%rax, %rdx	# _8, _10
# run.c:725:     *state ^= *state >> 27;
	movq	%rdx, %rax	# _10, tmp99
	shrq	$27, %rax	#, tmp99
# run.c:725:     *state ^= *state >> 27;
	xorq	%rdx, %rax	# _10, _12
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	movabsq	$2685821657736338717, %rdx	#, tmp102
# run.c:725:     *state ^= *state >> 27;
	movq	%rax, (%rdi)	# _12, *state_4(D)
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	imulq	%rdx, %rax	# tmp102, tmp101
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	shrq	$40, %rax	#, tmp104
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	vcvtsi2ssl	%eax, %xmm0, %xmm0	# tmp104, tmp108, tmp109
	vmulss	.LC49(%rip), %xmm0, %xmm0	#, tmp105, tmp100
# run.c:730: }
	ret	
	.cfi_endproc
.LFE6510:
	.size	random_f32, .-random_f32
	.p2align 4
	.globl	sample
	.type	sample, @function
sample:
.LFB6511:
	.cfi_startproc
	endbr64	
# run.c:735:     if (sampler->temperature == 0.0f) {
	vxorps	%xmm0, %xmm0, %xmm0	# tmp92
	vucomiss	16(%rdi), %xmm0	# sampler_9(D)->temperature, tmp92
	jp	.L664	#,
	jne	.L664	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%rdi), %ecx	# sampler_9(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	vmovss	(%rsi), %xmm0	# *logits_10(D), max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %ecx	#, _2
	jle	.L670	#,
	movl	$1, %eax	#, ivtmp.1059
# run.c:633:     int max_i = 0;
	xorl	%edx, %edx	# <retval>
	.p2align 4,,10
	.p2align 3
.L669:
# run.c:636:         if (probabilities[i] > max_p) {
	vmovss	(%rsi,%rax,4), %xmm1	# MEM[(float *)logits_10(D) + ivtmp.1059_6 * 4], _31
# run.c:636:         if (probabilities[i] > max_p) {
	vcomiss	%xmm0, %xmm1	# max_p, _31
# run.c:638:             max_p = probabilities[i];
	vmaxss	%xmm0, %xmm1, %xmm0	# max_p, _31, max_p
	cmova	%eax, %edx	# ivtmp.1059,, <retval>
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1059
	cmpq	%rax, %rcx	# ivtmp.1059, _15
	jne	.L669	#,
.L663:
# run.c:755: }
	movl	%edx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L664:
	jmp	sample.part.0	#
	.p2align 4,,10
	.p2align 3
.L670:
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	xorl	%edx, %edx	# <retval>
# run.c:754:     return next;
	jmp	.L663	#
	.cfi_endproc
.LFE6511:
	.size	sample, .-sample
	.p2align 4
	.globl	time_in_ms
	.type	time_in_ms, @function
time_in_ms:
.LFB6512:
	.cfi_startproc
	endbr64	
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 48
# run.c:763:     clock_gettime(CLOCK_REALTIME, &time);
	xorl	%edi, %edi	#
# run.c:760: long time_in_ms() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	movq	%rax, 24(%rsp)	# tmp99, D.44181
	xorl	%eax, %eax	# tmp99
# run.c:763:     clock_gettime(CLOCK_REALTIME, &time);
	movq	%rsp, %rsi	#, tmp88
	call	clock_gettime@PLT	#
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	movq	8(%rsp), %rcx	# time.tv_nsec, time.tv_nsec
	movabsq	$4835703278458516699, %rax	#, tmp100
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	imulq	$1000, (%rsp), %rsi	#, time.tv_sec, tmp89
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	imulq	%rcx	# time.tv_nsec
	sarq	$63, %rcx	#, tmp96
	sarq	$18, %rdx	#, tmp95
	subq	%rcx, %rdx	# tmp96, tmp91
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	leaq	(%rsi,%rdx), %rax	#, <retval>
# run.c:765: }
	movq	24(%rsp), %rdx	# D.44181, tmp101
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	jne	.L677	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L677:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6512:
	.size	time_in_ms, .-time_in_ms
	.section	.rodata.str1.1
.LC50:
	.string	""
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC51:
	.string	"something is wrong, expected at least 1 prompt token\n"
	.section	.rodata.str1.1
.LC53:
	.string	"\n\nachieved tok/s: %f\n"
	.text
	.p2align 4
	.globl	generate
	.type	generate, @function
generate:
.LFB6513:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14	# tmp220, tokenizer
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%r8d, %r12d	# tmp223, steps
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx	# tmp222, prompt
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 160
# run.c:770: void generate(Transformer *transformer, Tokenizer *tokenizer, Sampler *sampler, char *prompt, int steps) {
	movq	%rdx, 40(%rsp)	# tmp221, %sfp
	movq	%rdi, 8(%rsp)	# tmp219, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp235
	movq	%rax, 88(%rsp)	# tmp235, D.44225
	xorl	%eax, %eax	# tmp235
# run.c:772:     if (prompt == NULL) { prompt = empty_prompt; }
	testq	%rcx, %rcx	# prompt
	leaq	.LC50(%rip), %rax	#, tmp213
# run.c:775:     int num_prompt_tokens = 0;
	movl	$0, 60(%rsp)	#, num_prompt_tokens
# run.c:772:     if (prompt == NULL) { prompt = empty_prompt; }
	cmove	%rax, %rbx	# prompt,, tmp213, prompt
# run.c:776:     int* prompt_tokens = (int*)malloc((strlen(prompt)+3) * sizeof(int)); // +3 for '\0', ?BOS, ?EOS
	movq	%rbx, %rdi	# prompt,
	call	strlen@PLT	#
# run.c:776:     int* prompt_tokens = (int*)malloc((strlen(prompt)+3) * sizeof(int)); // +3 for '\0', ?BOS, ?EOS
	leaq	12(,%rax,4), %rdi	#, tmp158
	call	malloc@PLT	#
# run.c:777:     encode(tokenizer, prompt, 1, 0, prompt_tokens, &num_prompt_tokens);
	leaq	60(%rsp), %r9	#,
	xorl	%ecx, %ecx	#
	movq	%rbx, %rsi	# prompt,
	movq	%rax, %r8	# prompt_tokens,
	movl	$1, %edx	#,
	movq	%r14, %rdi	# tokenizer,
# run.c:776:     int* prompt_tokens = (int*)malloc((strlen(prompt)+3) * sizeof(int)); // +3 for '\0', ?BOS, ?EOS
	movq	%rax, 32(%rsp)	# prompt_tokens, %sfp
# run.c:777:     encode(tokenizer, prompt, 1, 0, prompt_tokens, &num_prompt_tokens);
	call	encode	#
# run.c:778:     if (num_prompt_tokens < 1) {
	movl	60(%rsp), %eax	# num_prompt_tokens, num_prompt_tokens.19_4
# run.c:778:     if (num_prompt_tokens < 1) {
	testl	%eax, %eax	# num_prompt_tokens.19_4
	jle	.L735	#,
# run.c:786:     int token = prompt_tokens[0]; // kick off with the first token in the prompt
	movq	32(%rsp), %rcx	# %sfp, prompt_tokens
	movl	(%rcx), %ebp	# *prompt_tokens_36, token
# run.c:788:     while (pos < steps) {
	testl	%r12d, %r12d	# steps
	jle	.L681	#,
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	subl	$1, %eax	#, _149
# run.c:784:     long start = 0;  // used to time our code, only initialized after first iteration
	movq	$0, (%rsp)	#, %sfp
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	xorl	%ebx, %ebx	# ivtmp.1085
	movl	%eax, 20(%rsp)	# _149, %sfp
	movslq	%r12d, %rax	# steps, _117
	movq	%rax, 24(%rsp)	# _117, %sfp
	jmp	.L703	#
	.p2align 4,,10
	.p2align 3
.L738:
# run.c:796:             next = prompt_tokens[pos + 1];
	movq	32(%rsp), %rax	# %sfp, prompt_tokens
	movl	4(%rax,%rbx,4), %r15d	# MEM[(int *)prompt_tokens_36 + 4B + ivtmp.1085_82 * 4], i
.L683:
# run.c:804:         if (next == 1) { break; }
	cmpl	$1, %r15d	#, i
	je	.L702	#,
.L739:
# run.c:460:     char *piece = t->vocab[token];
	movslq	%r15d, %rax	# i, i
	salq	$3, %rax	#, _158
.L686:
# run.c:460:     char *piece = t->vocab[token];
	movq	(%r14), %rdx	# tokenizer_37(D)->vocab, tokenizer_37(D)->vocab
	movq	(%rdx,%rax), %r13	# *_104, piece
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %ebp	#, token
	je	.L736	#,
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	leaq	64(%rsp), %rbp	#, tmp212
	xorl	%eax, %eax	#
	leaq	.LC44(%rip), %rsi	#,
	movq	%r13, %rdi	# piece,
	movq	%rbp, %rdx	# tmp212,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp230
	je	.L696	#,
# run.c:475:     if (piece == NULL) { return; }
	testq	%r13, %r13	# piece
	jne	.L694	#,
.L697:
# run.c:809:         fflush(stdout);
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush@PLT	#
# run.c:813:         if (start == 0) { start = time_in_ms(); }
	cmpq	$0, (%rsp)	#, %sfp
	je	.L737	#,
# run.c:788:     while (pos < steps) {
	movq	24(%rsp), %rcx	# %sfp, _117
	leaq	1(%rbx), %rax	#, ivtmp.1085
	cmpq	%rcx, %rax	# _117, ivtmp.1085
	je	.L702	#,
.L701:
# run.c:772:     if (prompt == NULL) { prompt = empty_prompt; }
	movq	%rax, %rbx	# ivtmp.1085, ivtmp.1085
	movl	%r15d, %ebp	# i, token
.L703:
# run.c:791:         float* logits = forward(transformer, token, pos);
	movq	8(%rsp), %rdi	# %sfp,
	movl	%ebp, %esi	# token,
	movl	%ebx, %edx	# pos,
	movl	%ebx, %r12d	# ivtmp.1085, pos
	call	forward	#
	movq	%rax, %rsi	# tmp226, logits
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	cmpl	%ebx, 20(%rsp)	# ivtmp.1085, %sfp
	jg	.L738	#,
# run.c:735:     if (sampler->temperature == 0.0f) {
	movq	40(%rsp), %rax	# %sfp, sampler
	vxorps	%xmm2, %xmm2, %xmm2	# tmp258
	vucomiss	16(%rax), %xmm2	# sampler_46(D)->temperature, tmp258
	jp	.L684	#,
	jne	.L684	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%rax), %eax	# sampler_46(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	vmovss	(%rsi), %xmm0	# *logits_45, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %eax	#, _76
	jle	.L708	#,
	movl	$1, %edx	#, ivtmp.1078
# run.c:633:     int max_i = 0;
	xorl	%r15d, %r15d	# i
	.p2align 4,,10
	.p2align 3
.L689:
# run.c:636:         if (probabilities[i] > max_p) {
	vmovss	(%rsi,%rdx,4), %xmm1	# MEM[(float *)logits_45 + ivtmp.1078_148 * 4], _141
# run.c:636:         if (probabilities[i] > max_p) {
	vcomiss	%xmm0, %xmm1	# max_p, _141
# run.c:638:             max_p = probabilities[i];
	vmaxss	%xmm0, %xmm1, %xmm0	# max_p, _141, max_p
	cmova	%edx, %r15d	# ivtmp.1078,, i
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rdx	#, ivtmp.1078
	cmpq	%rdx, %rax	# ivtmp.1078, _81
	jne	.L689	#,
# run.c:804:         if (next == 1) { break; }
	cmpl	$1, %r15d	#, i
	jne	.L739	#,
	.p2align 4,,10
	.p2align 3
.L702:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
# run.c:818:     if (pos > 1) {
	testl	%ebx, %ebx	# ivtmp.1085
	je	.L704	#,
# run.c:763:     clock_gettime(CLOCK_REALTIME, &time);
	leaq	64(%rsp), %rsi	#, tmp193
	xorl	%edi, %edi	#
	call	clock_gettime@PLT	#
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	movq	72(%rsp), %rsi	# MEM[(struct timespec *)_84].tv_nsec, MEM[(struct timespec *)_84].tv_nsec
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	vxorps	%xmm1, %xmm1, %xmm1	# tmp232
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	movabsq	$4835703278458516699, %rax	#, tmp237
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	imulq	$1000, 64(%rsp), %rcx	#, MEM[(struct timespec *)_84].tv_sec, tmp194
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	imulq	%rsi	# MEM[(struct timespec *)_84].tv_nsec
	sarq	$63, %rsi	#, tmp201
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	movq	(%rsp), %rax	# %sfp, start
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	vcvtsi2sdl	%r12d, %xmm1, %xmm0	# pos, tmp232, tmp233
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	sarq	$18, %rdx	#, tmp200
	subq	%rsi, %rdx	# tmp201, tmp196
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	$2, %esi	#,
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	addq	%rdx, %rcx	# tmp196, _67
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	leaq	.LC53(%rip), %rdx	#, tmp209
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	subq	%rax, %rcx	# start, tmp203
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	$1, %eax	#,
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	vcvtsi2sdq	%rcx, %xmm1, %xmm1	# tmp203, tmp232, tmp234
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp204, tmp202, tmp205
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	vmulsd	.LC52(%rip), %xmm0, %xmm0	#, tmp205, tmp206
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	__fprintf_chk@PLT	#
.L704:
# run.c:823:     free(prompt_tokens);
	movq	88(%rsp), %rax	# D.44225, tmp238
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp238
	jne	.L740	#,
	movq	32(%rsp), %rdi	# %sfp,
# run.c:824: }
	addq	$104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# run.c:823:     free(prompt_tokens);
	jmp	free@PLT	#
	.p2align 4,,10
	.p2align 3
.L736:
	.cfi_restore_state
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpb	$32, 0(%r13)	#, *piece_105
	jne	.L734	#,
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	addq	$1, %r13	#, piece
.L734:
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	leaq	64(%rsp), %rbp	#, tmp212
	xorl	%eax, %eax	#
	leaq	.LC44(%rip), %rsi	#,
	movq	%r13, %rdi	# piece,
	movq	%rbp, %rdx	# tmp212,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp228
	jne	.L694	#,
.L696:
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	64(%rsp), %eax	# MEM[(unsigned char *)_84], MEM[(unsigned char *)_84]
	addl	%eax, %eax	# tmp171
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%r14,%rax), %r13	#, piece
.L694:
# run.c:476:     if (piece[0] == '\0') { return; }
	movzbl	0(%r13), %edx	# *piece_126, _91
# run.c:476:     if (piece[0] == '\0') { return; }
	testb	%dl, %dl	# _91
	movb	%dl, 19(%rsp)	# _91, %sfp
	je	.L697	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%r13)	#, MEM[(char *)piece_126 + 1B]
	jne	.L699	#,
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	call	__ctype_b_loc@PLT	#
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movzbl	19(%rsp), %edx	# %sfp,
	movq	(%rax), %rax	# *_94, *_94
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	testw	$24576, (%rax,%rdx,2)	#, *_98
	je	.L697	#,
.L699:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%r13, %rdx	# piece,
	leaq	.LC45(%rip), %rsi	#,
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
	jmp	.L697	#
	.p2align 4,,10
	.p2align 3
.L737:
# run.c:763:     clock_gettime(CLOCK_REALTIME, &time);
	movq	%rbp, %rsi	# tmp212,
	xorl	%edi, %edi	#
	call	clock_gettime@PLT	#
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	movq	72(%rsp), %rsi	# MEM[(struct timespec *)_84].tv_nsec, MEM[(struct timespec *)_84].tv_nsec
	movabsq	$4835703278458516699, %rax	#, tmp236
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	imulq	$1000, 64(%rsp), %r13	#, MEM[(struct timespec *)_84].tv_sec, tmp184
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	imulq	%rsi	# MEM[(struct timespec *)_84].tv_nsec
	sarq	$63, %rsi	#, tmp191
	sarq	$18, %rdx	#, tmp190
	subq	%rsi, %rdx	# tmp191, tmp186
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	leaq	0(%r13,%rdx), %rax	#, start
	movq	%rax, (%rsp)	# start, %sfp
# run.c:788:     while (pos < steps) {
	leaq	1(%rbx), %rax	#, ivtmp.1085
	cmpq	%rax, 24(%rsp)	# ivtmp.1085, %sfp
	jne	.L701	#,
	jmp	.L702	#
	.p2align 4,,10
	.p2align 3
.L684:
	movq	40(%rsp), %rdi	# %sfp,
	call	sample.part.0	#
	movl	%eax, %r15d	# tmp227, i
	jmp	.L683	#
	.p2align 4,,10
	.p2align 3
.L708:
# run.c:635:     for (int i = 1; i < n; i++) {
	xorl	%eax, %eax	# _158
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	xorl	%r15d, %r15d	# i
	jmp	.L686	#
.L681:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
	jmp	.L704	#
.L735:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC51(%rip), %rdi	#, tmp162
	call	fwrite@PLT	#
# run.c:780:         exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L740:
# run.c:823:     free(prompt_tokens);
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6513:
	.size	generate, .-generate
	.p2align 4
	.globl	read_stdin
	.type	read_stdin, @function
read_stdin:
.LFB6514:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	xorl	%eax, %eax	#
# run.c:826: void read_stdin(const char* guide, char* buffer, size_t bufsize) {
	movq	%rsi, %rbp	# tmp101, buffer
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC45(%rip), %rsi	#, tmp92
# run.c:826: void read_stdin(const char* guide, char* buffer, size_t bufsize) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdx, %rbx	# tmp102, bufsize
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%rdi, %rdx	# guide,
	movl	$2, %edi	#,
# run.c:826: void read_stdin(const char* guide, char* buffer, size_t bufsize) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:200:     return __fgets_alias (__s, __n, __stream);
	movq	stdin(%rip), %rdx	# stdin,
	movl	%ebx, %esi	# bufsize, bufsize
	movq	%rbp, %rdi	# buffer,
	call	fgets@PLT	#
# run.c:829:     if (fgets(buffer, bufsize, stdin) != NULL) {
	testq	%rax, %rax	# tmp103
	je	.L749	#,
# run.c:830:         size_t len = strlen(buffer);
	movq	%rbp, %rdi	# buffer,
	call	strlen@PLT	#
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	testq	%rax, %rax	# tmp96
	je	.L749	#,
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	leaq	-1(%rbp,%rax), %rax	#, _4
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	cmpb	$10, (%rax)	#, *_4
	je	.L751	#,
.L749:
# run.c:835: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L751:
	.cfi_restore_state
# run.c:832:             buffer[len - 1] = '\0'; // strip newline
	movb	$0, (%rax)	#, *_4
# run.c:835: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE6514:
	.size	read_stdin, .-read_stdin
	.section	.rodata.str1.8
	.align 8
.LC54:
	.string	"Enter system prompt (optional): "
	.section	.rodata.str1.1
.LC55:
	.string	"User: "
.LC57:
	.string	"Assistant: "
	.text
	.p2align 4
	.globl	chat
	.type	chat, @function
chat:
.LFB6515:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	.cfi_offset 15, -24
	movq	%rdx, %r15	# tmp187, sampler
	pushq	%r14	#
	.cfi_offset 14, -32
	movq	%r8, %r14	# tmp189, cli_system_prompt
	pushq	%r13	#
	pushq	%r12	#
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movl	%r9d, %r12d	# tmp190, steps
	pushq	%rbx	#
	.cfi_offset 3, -56
	movq	%rcx, %rbx	# tmp188, cli_user_prompt
	subq	$2360, %rsp	#,
# run.c:844:           char *cli_user_prompt, char *cli_system_prompt, int steps) {
	movq	%rdi, 72(%rsp)	# tmp185, %sfp
# run.c:852:     int* prompt_tokens = (int*)malloc(1152 * sizeof(int));
	movl	$4608, %edi	#,
# run.c:844:           char *cli_user_prompt, char *cli_system_prompt, int steps) {
	movq	%rsi, 56(%rsp)	# tmp186, %sfp
	movl	%r9d, 68(%rsp)	# steps, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp198
	movq	%rax, 2344(%rsp)	# tmp198, D.44271
	xorl	%eax, %eax	# tmp198
# run.c:851:     int num_prompt_tokens = 0;
	movl	$0, 108(%rsp)	#, num_prompt_tokens
# run.c:852:     int* prompt_tokens = (int*)malloc(1152 * sizeof(int));
	call	malloc@PLT	#
	movq	%rax, 88(%rsp)	# tmp191, %sfp
# run.c:861:     while (pos < steps) {
	testl	%r12d, %r12d	# steps
	jle	.L782	#,
# run.c:870:                     read_stdin("Enter system prompt (optional): ", system_prompt, sizeof(system_prompt));
	leaq	160(%rsp), %r12	#, tmp178
	movl	$512, %edx	#,
# run.c:868:                 if (cli_system_prompt == NULL) {
	testq	%r14, %r14	# cli_system_prompt
	je	.L812	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%r14, %rsi	# cli_system_prompt,
	movq	%r12, %rdi	# tmp178,
	call	__strcpy_chk@PLT	#
.L756:
	leaq	672(%rsp), %rax	#, tmp179
	movl	$512, %edx	#,
	movq	%rax, 48(%rsp)	# tmp179, %sfp
# run.c:877:             if (pos == 0 && cli_user_prompt != NULL) {
	testq	%rbx, %rbx	# cli_user_prompt
	je	.L757	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%rbx, %rsi	# cli_user_prompt,
	movq	%rax, %rdi	# tmp179,
	call	__strcpy_chk@PLT	#
.L758:
# run.c:885:             if (pos == 0 && system_prompt[0] != '\0') {
	cmpb	$0, 160(%rsp)	#, system_prompt[0]
	jne	.L813	#,
	leaq	112(%rsp), %rax	#, tmp181
	xorl	%ebx, %ebx	# pos
	movq	%rax, 24(%rsp)	# tmp181, %sfp
	leaq	1184(%rsp), %rax	#, tmp182
	movq	%rax, 80(%rsp)	# tmp182, %sfp
	leaq	108(%rsp), %rax	#, tmp180
	movq	%rax, 32(%rsp)	# tmp180, %sfp
	leaq	.LC57(%rip), %rax	#, tmp177
	movq	%rax, 40(%rsp)	# tmp177, %sfp
.L759:
# run.c:889:                 char user_template[] = "[INST] %s [/INST]";
	movl	$93, %eax	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	48(%rsp), %r8	# %sfp,
	movq	24(%rsp), %rcx	# %sfp,
	movl	$1152, %edx	#,
# run.c:889:                 char user_template[] = "[INST] %s [/INST]";
	vmovdqa	.LC58(%rip), %xmm0	#, tmp184
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	80(%rsp), %rdi	# %sfp,
	movl	$2, %esi	#,
# run.c:889:                 char user_template[] = "[INST] %s [/INST]";
	movw	%ax, 128(%rsp)	#, MEM[(char[18] *)_87]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	xorl	%eax, %eax	#
# run.c:889:                 char user_template[] = "[INST] %s [/INST]";
	vmovdqa	%xmm0, 112(%rsp)	# tmp184, MEM[(char[18] *)_87]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	call	__sprintf_chk@PLT	#
.L760:
# run.c:893:             encode(tokenizer, rendered_prompt, 1, 0, prompt_tokens, &num_prompt_tokens);
	movq	32(%rsp), %r9	# %sfp,
	movq	88(%rsp), %r8	# %sfp,
	xorl	%ecx, %ecx	#
# run.c:900:         if (user_idx < num_prompt_tokens) {
	xorl	%r12d, %r12d	# user_idx
# run.c:893:             encode(tokenizer, rendered_prompt, 1, 0, prompt_tokens, &num_prompt_tokens);
	movq	80(%rsp), %rsi	# %sfp,
	movq	56(%rsp), %rdi	# %sfp,
	movl	$1, %edx	#,
	call	encode	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	40(%rsp), %rsi	# %sfp,
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
# run.c:900:         if (user_idx < num_prompt_tokens) {
	movl	108(%rsp), %r14d	# num_prompt_tokens, pretmp_149
.L784:
# run.c:900:         if (user_idx < num_prompt_tokens) {
	cmpl	%r14d, %r12d	# pretmp_149, user_idx
	jge	.L761	#,
# run.c:902:             token = prompt_tokens[user_idx++];
	movq	88(%rsp), %rdi	# %sfp, prompt_tokens
# run.c:902:             token = prompt_tokens[user_idx++];
	movslq	%r12d, %rax	# user_idx, user_idx
	addl	$1, %r12d	#, user_idx
# run.c:902:             token = prompt_tokens[user_idx++];
	movl	(%rdi,%rax,4), %r13d	# *_8, next
.L761:
# run.c:911:         float* logits = forward(transformer, token, pos);
	movq	72(%rsp), %rdi	# %sfp,
	movl	%ebx, %edx	# pos,
	movl	%r13d, %esi	# next,
# run.c:913:         pos++;
	addl	$1, %ebx	#, pos
# run.c:911:         float* logits = forward(transformer, token, pos);
	call	forward	#
# run.c:735:     if (sampler->temperature == 0.0f) {
	vxorps	%xmm2, %xmm2, %xmm2	# tmp230
	vucomiss	16(%r15), %xmm2	# sampler_54(D)->temperature, tmp230
# run.c:911:         float* logits = forward(transformer, token, pos);
	movq	%rax, %rsi	# tmp192, logits
# run.c:735:     if (sampler->temperature == 0.0f) {
	jp	.L762	#,
	jne	.L762	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%r15), %eax	# sampler_54(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	vmovss	(%rsi), %xmm0	# *logits_53, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	movl	$1, %edx	#, ivtmp.1103
# run.c:633:     int max_i = 0;
	xorl	%ecx, %ecx	# i
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %eax	#, _73
	jle	.L814	#,
	.p2align 4,,10
	.p2align 3
.L769:
# run.c:636:         if (probabilities[i] > max_p) {
	vmovss	(%rsi,%rdx,4), %xmm1	# MEM[(float *)logits_53 + ivtmp.1103_168 * 4], _157
# run.c:636:         if (probabilities[i] > max_p) {
	vcomiss	%xmm0, %xmm1	# max_p, _157
# run.c:638:             max_p = probabilities[i];
	vmaxss	%xmm0, %xmm1, %xmm0	# max_p, _157, max_p
	cmova	%edx, %ecx	# ivtmp.1103,, i
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rdx	#, ivtmp.1103
	cmpq	%rdx, %rax	# ivtmp.1103, _78
	jne	.L769	#,
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r14d, %r12d	# pretmp_149, user_idx
	jl	.L771	#,
.L816:
# run.c:460:     char *piece = t->vocab[token];
	movslq	%ecx, %rax	# i, i
	salq	$3, %rax	#, _161
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	$2, %ecx	#, i
	jne	.L765	#,
.L772:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
# run.c:912:         next = sample(sampler, logits);
	movl	$2, %ecx	#, i
.L766:
# run.c:861:     while (pos < steps) {
	cmpl	%ebx, 68(%rsp)	# pos, %sfp
	je	.L782	#,
.L817:
# run.c:864:         if (user_turn) {
	cmpl	$2, %r13d	#, next
	jne	.L815	#,
# run.c:882:                 read_stdin("User: ", user_prompt, sizeof(user_prompt));
	movq	48(%rsp), %rsi	# %sfp,
	movl	$512, %edx	#,
	leaq	.LC55(%rip), %rdi	#, tmp140
	movl	%ecx, 16(%rsp)	# i, %sfp
	call	read_stdin	#
	movl	16(%rsp), %r13d	# %sfp, next
	jmp	.L759	#
	.p2align 4,,10
	.p2align 3
.L762:
	movq	%r15, %rdi	# sampler,
	call	sample.part.0	#
	movl	%eax, %ecx	# tmp193, i
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r14d, %r12d	# pretmp_149, user_idx
	jge	.L816	#,
.L771:
# run.c:921:         if (next == 2) { printf("\n"); }
	cmpl	$2, %ecx	#, i
	je	.L772	#,
# run.c:861:     while (pos < steps) {
	cmpl	%ebx, 68(%rsp)	# pos, %sfp
	jne	.L817	#,
	.p2align 4,,10
	.p2align 3
.L782:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
# run.c:924:     free(prompt_tokens);
	movq	2344(%rsp), %rax	# D.44271, tmp199
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp199
	jne	.L818	#,
	movq	88(%rsp), %rdi	# %sfp,
# run.c:925: }
	addq	$2360, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
# run.c:924:     free(prompt_tokens);
	jmp	free@PLT	#
	.p2align 4,,10
	.p2align 3
.L815:
	.cfi_restore_state
# run.c:864:         if (user_turn) {
	movl	%ecx, %r13d	# i, next
	jmp	.L784	#
	.p2align 4,,10
	.p2align 3
.L814:
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r14d, %r12d	# pretmp_149, user_idx
	jl	.L766	#,
	xorl	%eax, %eax	# _161
	.p2align 4,,10
	.p2align 3
.L765:
# run.c:460:     char *piece = t->vocab[token];
	movq	56(%rsp), %rdi	# %sfp, tokenizer
	movq	(%rdi), %rdx	# tokenizer_46(D)->vocab, tokenizer_46(D)->vocab
	movq	(%rdx,%rax), %rdi	# *_101, piece
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %r13d	#, next
	je	.L819	#,
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	xorl	%eax, %eax	#
	leaq	107(%rsp), %rdx	#, tmp168
	leaq	.LC44(%rip), %rsi	#, tmp169
	movl	%ecx, 16(%rsp)	# i, %sfp
	movq	%rdi, 8(%rsp)	# piece, %sfp
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	movl	16(%rsp), %ecx	# %sfp, i
	cmpl	$1, %eax	#, tmp196
	je	.L777	#,
# run.c:475:     if (piece == NULL) { return; }
	movq	8(%rsp), %rdi	# %sfp, piece
	testq	%rdi, %rdi	# piece
	jne	.L776	#,
.L779:
# run.c:919:             fflush(stdout);
	movq	stdout(%rip), %rdi	# stdout,
	movl	%ecx, 16(%rsp)	# i, %sfp
	call	fflush@PLT	#
	movl	16(%rsp), %ecx	# %sfp, i
	jmp	.L766	#
	.p2align 4,,10
	.p2align 3
.L819:
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpb	$32, (%rdi)	#, *piece_102
	movl	%ecx, 8(%rsp)	# i, %sfp
	je	.L820	#,
.L810:
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	xorl	%eax, %eax	#
	leaq	107(%rsp), %rdx	#, tmp160
	movq	%rdi, 16(%rsp)	# piece, %sfp
	leaq	.LC44(%rip), %rsi	#, tmp161
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	movq	16(%rsp), %rdi	# %sfp, piece
	movl	8(%rsp), %ecx	# %sfp, i
	cmpl	$1, %eax	#, tmp194
	jne	.L776	#,
.L777:
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	107(%rsp), %eax	# byte_val, byte_val
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movq	56(%rsp), %rdi	# %sfp, tokenizer
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	addl	%eax, %eax	# tmp164
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%rdi,%rax), %rdi	#, piece
.L776:
# run.c:476:     if (piece[0] == '\0') { return; }
	movzbl	(%rdi), %edx	# *piece_135, _88
# run.c:476:     if (piece[0] == '\0') { return; }
	testb	%dl, %dl	# _88
	movb	%dl, 16(%rsp)	# _88, %sfp
	je	.L779	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%rdi)	#, MEM[(char *)piece_135 + 1B]
	jne	.L781	#,
	movl	%ecx, 64(%rsp)	# i, %sfp
	movq	%rdi, 8(%rsp)	# piece, %sfp
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	call	__ctype_b_loc@PLT	#
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movzbl	16(%rsp), %edx	# %sfp,
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movq	8(%rsp), %rdi	# %sfp, piece
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movq	(%rax), %rax	# *_91, *_91
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movl	64(%rsp), %ecx	# %sfp, i
	testw	$24576, (%rax,%rdx,2)	#, *_95
	je	.L779	#,
.L781:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%rdi, %rdx	# piece,
	leaq	.LC45(%rip), %rsi	#, tmp174
	xorl	%eax, %eax	#
	movl	%ecx, 16(%rsp)	# i, %sfp
	movl	$2, %edi	#,
	call	__printf_chk@PLT	#
	movl	16(%rsp), %ecx	# %sfp, i
	jmp	.L779	#
	.p2align 4,,10
	.p2align 3
.L813:
# run.c:886:                 char system_template[] = "[INST] <<SYS>>\n%s\n<</SYS>>\n\n%s [/INST]";
	vmovdqa	.LC56(%rip), %ymm3	#, tmp219
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	112(%rsp), %rcx	#, tmp181
	movq	48(%rsp), %r9	# %sfp,
# run.c:886:                 char system_template[] = "[INST] <<SYS>>\n%s\n<</SYS>>\n\n%s [/INST]";
	movabsq	$26269889606528859, %rax	#, tmp220
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	%rcx, 24(%rsp)	# tmp181, %sfp
	movq	%r12, %r8	# tmp178,
	movl	$1152, %edx	#,
	movl	$2, %esi	#,
# run.c:886:                 char system_template[] = "[INST] <<SYS>>\n%s\n<</SYS>>\n\n%s [/INST]";
	vmovdqu	%ymm3, 112(%rsp)	# tmp219, MEM[(char[39] *)_87]
	movq	%rax, 143(%rsp)	# tmp220, MEM[(char[39] *)_87]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	1184(%rsp), %rax	#, tmp182
	movq	%rax, 80(%rsp)	# tmp182, %sfp
	movq	%rax, %rdi	# tmp182,
	xorl	%eax, %eax	#
	vzeroupper
	call	__sprintf_chk@PLT	#
	leaq	108(%rsp), %rax	#, tmp180
# run.c:885:             if (pos == 0 && system_prompt[0] != '\0') {
	xorl	%ebx, %ebx	# pos
	movq	%rax, 32(%rsp)	# tmp180, %sfp
	leaq	.LC57(%rip), %rax	#, tmp177
	movq	%rax, 40(%rsp)	# tmp177, %sfp
	jmp	.L760	#
.L820:
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	addq	$1, %rdi	#, piece
	jmp	.L810	#
	.p2align 4,,10
	.p2align 3
.L812:
# run.c:870:                     read_stdin("Enter system prompt (optional): ", system_prompt, sizeof(system_prompt));
	movq	%r12, %rsi	# tmp178,
	leaq	.LC54(%rip), %rdi	#, tmp136
	call	read_stdin	#
	jmp	.L756	#
.L818:
# run.c:924:     free(prompt_tokens);
	call	__stack_chk_fail@PLT	#
.L757:
# run.c:882:                 read_stdin("User: ", user_prompt, sizeof(user_prompt));
	movq	%rax, %rsi	# tmp179,
	leaq	.LC55(%rip), %rdi	#, tmp142
	call	read_stdin	#
	jmp	.L758	#
	.cfi_endproc
.LFE6515:
	.size	chat, .-chat
	.section	.rodata.str1.8
	.align 8
.LC59:
	.string	"Usage:   run <checkpoint> [options]\n"
	.align 8
.LC60:
	.string	"Example: run model.bin -n 256 -i \"Once upon a time\"\n"
	.section	.rodata.str1.1
.LC61:
	.string	"Options:\n"
	.section	.rodata.str1.8
	.align 8
.LC62:
	.string	"  -t <float>  temperature in [0,inf], default 1.0\n"
	.align 8
.LC63:
	.string	"  -p <float>  p value in top-p (nucleus) sampling in [0,1] default 0.9\n"
	.align 8
.LC64:
	.string	"  -s <int>    random seed, default time(NULL)\n"
	.align 8
.LC65:
	.string	"  -n <int>    number of steps to run for, default 256. 0 = max_seq_len\n"
	.section	.rodata.str1.1
.LC66:
	.string	"  -i <string> input prompt\n"
	.section	.rodata.str1.8
	.align 8
.LC67:
	.string	"  -z <string> optional path to custom tokenizer\n"
	.align 8
.LC68:
	.string	"  -m <string> mode: generate|chat, default: generate\n"
	.align 8
.LC69:
	.string	"  -y <string> (optional) system prompt in chat mode\n"
	.text
	.p2align 4
	.globl	error_usage
	.type	error_usage, @function
error_usage:
.LFB6516:
	.cfi_startproc
	endbr64	
	pushq	%rax	#
	.cfi_def_cfa_offset 16
	popq	%rax	#
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	$36, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC59(%rip), %rdi	#, tmp94
# run.c:932: void error_usage() {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	call	fwrite@PLT	#
	movl	$52, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC60(%rip), %rdi	#, tmp96
	call	fwrite@PLT	#
	movl	$9, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC61(%rip), %rdi	#, tmp98
	call	fwrite@PLT	#
	movl	$50, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC62(%rip), %rdi	#, tmp100
	call	fwrite@PLT	#
	movl	$71, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC63(%rip), %rdi	#, tmp102
	call	fwrite@PLT	#
	movl	$46, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC64(%rip), %rdi	#, tmp104
	call	fwrite@PLT	#
	movl	$71, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC65(%rip), %rdi	#, tmp106
	call	fwrite@PLT	#
	movl	$27, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC66(%rip), %rdi	#, tmp108
	call	fwrite@PLT	#
	movl	$48, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC67(%rip), %rdi	#, tmp110
	call	fwrite@PLT	#
	movl	$53, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC68(%rip), %rdi	#, tmp112
	call	fwrite@PLT	#
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC69(%rip), %rdi	#, tmp114
	call	fwrite@PLT	#
# run.c:944:     exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE6516:
	.size	error_usage, .-error_usage
	.section	.rodata.str1.1
.LC70:
	.string	"generate"
.LC72:
	.string	"tokenizer.bin"
.LC73:
	.string	"chat"
.LC74:
	.string	"unknown mode: %s\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6517:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$936, %rsp	#,
	.cfi_def_cfa_offset 992
# run.c:947: int main(int argc, char *argv[]) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp206
	movq	%rax, 920(%rsp)	# tmp206, D.44308
	xorl	%eax, %eax	# tmp206
# run.c:961:     if (argc >= 2) { checkpoint_path = argv[1]; } else { error_usage(); }
	cmpl	$1, %edi	#, argc
	jle	.L860	#,
# run.c:961:     if (argc >= 2) { checkpoint_path = argv[1]; } else { error_usage(); }
	movq	8(%rsi), %rax	# MEM[(char * *)argv_84(D) + 8B], checkpoint_path
	movq	%rax, 64(%rsp)	# checkpoint_path, %sfp
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpl	$2, %edi	#, argc
	je	.L850	#,
# run.c:964:         if (i + 1 >= argc) { error_usage(); } // must have arg after flag
	cmpl	$3, %edi	#, argc
	je	.L860	#,
	leal	-4(%rdi), %eax	#, tmp135
	leal	-3(%rdi), %ebp	#, tmp140
# run.c:954:     int steps = 256;            // number of steps to run for
	movl	$256, %r13d	#, steps
	movq	%rsi, %r14	# ivtmp.1127, ivtmp.1127
	shrl	%eax	#
# run.c:953:     float topp = 0.9f;          // top-p in nucleus sampling. 1.0 = off. 0.9 works well, but slower
	vmovss	.LC71(%rip), %xmm4	#, topp
	shrl	%ebp	#
# run.c:952:     float temperature = 1.0f;   // 0.0 = greedy deterministic. 1.0 = original. don't set higher
	vmovss	.LC7(%rip), %xmm3	#, tmp186
	salq	$4, %rax	#, tmp138
	salq	$4, %rbp	#, tmp143
# run.c:958:     char *system_prompt = NULL; // the (optional) system prompt to use in chat mode
	movq	$0, 48(%rsp)	#, %sfp
	leaq	.L831(%rip), %rbx	#, tmp194
	leaq	16(%rsi,%rax), %r12	#, _158
# run.c:957:     char *mode = "generate";    // generate|chat
	leaq	.LC70(%rip), %rax	#, tmp190
	addq	%rsi, %rbp	# ivtmp.1127, _165
# run.c:956:     unsigned long long rng_seed = 0; // seed rng with time by default
	movq	$0, 8(%rsp)	#, %sfp
# run.c:957:     char *mode = "generate";    // generate|chat
	movq	%rax, 56(%rsp)	# tmp190, %sfp
	movq	%rax, 16(%rsp)	# tmp190, %sfp
# run.c:951:     char *tokenizer_path = "tokenizer.bin";
	leaq	.LC72(%rip), %rax	#, tokenizer_path
# run.c:955:     char *prompt = NULL;        // prompt string
	movq	$0, 32(%rsp)	#, %sfp
# run.c:951:     char *tokenizer_path = "tokenizer.bin";
	movq	%rax, 24(%rsp)	# tokenizer_path, %sfp
	vmovss	%xmm3, 40(%rsp)	# temperature, %sfp
	vmovss	%xmm4, 44(%rsp)	# topp, %sfp
	vmovss	%xmm3, 72(%rsp)	# tmp186, %sfp
	vmovss	%xmm4, 76(%rsp)	# topp, %sfp
	.p2align 4,,10
	.p2align 3
.L828:
# run.c:965:         if (argv[i][0] != '-') { error_usage(); } // must start with dash
	movq	16(%r14), %r15	# MEM[(char * *)_57 + 16B], _5
# run.c:965:         if (argv[i][0] != '-') { error_usage(); } // must start with dash
	cmpb	$45, (%r15)	#, *_5
	jne	.L860	#,
# run.c:966:         if (strlen(argv[i]) != 2) { error_usage(); } // must be -x (one dash, one letter)
	movq	%r15, %rdi	# _5,
	call	strlen@PLT	#
# run.c:966:         if (strlen(argv[i]) != 2) { error_usage(); } // must be -x (one dash, one letter)
	cmpq	$2, %rax	#, tmp197
	jne	.L860	#,
	movzbl	1(%r15), %eax	# MEM[(char *)_5 + 1B], MEM[(char *)_5 + 1B]
	subl	$105, %eax	#, tmp147
	cmpb	$17, %al	#, tmp147
	ja	.L860	#,
	movzbl	%al, %eax	# tmp147, tmp149
	movslq	(%rbx,%rax,4), %rax	#, tmp152
	addq	%rbx, %rax	# tmp194, tmp153
	notrack jmp	*%rax	# tmp153
	.section	.rodata
	.align 4
	.align 4
.L831:
	.long	.L838-.L831
	.long	.L860-.L831
	.long	.L860-.L831
	.long	.L860-.L831
	.long	.L837-.L831
	.long	.L836-.L831
	.long	.L860-.L831
	.long	.L835-.L831
	.long	.L860-.L831
	.long	.L860-.L831
	.long	.L834-.L831
	.long	.L833-.L831
	.long	.L860-.L831
	.long	.L860-.L831
	.long	.L860-.L831
	.long	.L860-.L831
	.long	.L832-.L831
	.long	.L830-.L831
	.section	.text.startup
	.p2align 4,,10
	.p2align 3
.L830:
# run.c:973:         else if (argv[i][1] == 'z') { tokenizer_path = argv[i + 1]; }
	movq	24(%r14), %rax	# MEM[(char * *)_57 + 24B], tokenizer_path
	movq	%rax, 24(%rsp)	# tokenizer_path, %sfp
	.p2align 4,,10
	.p2align 3
.L839:
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpq	%rbp, %r14	# _165, ivtmp.1127
	je	.L861	#,
.L840:
# run.c:964:         if (i + 1 >= argc) { error_usage(); } // must have arg after flag
	addq	$16, %r14	#, ivtmp.1127
	cmpq	%r12, %r14	# _158, ivtmp.1127
	jne	.L828	#,
.L860:
# run.c:1005:         error_usage();
	xorl	%eax, %eax	#
	call	error_usage	#
	.p2align 4,,10
	.p2align 3
.L832:
# run.c:975:         else if (argv[i][1] == 'y') { system_prompt = argv[i + 1]; }
	movq	24(%r14), %rax	# MEM[(char * *)_57 + 24B], system_prompt
	movq	%rax, 48(%rsp)	# system_prompt, %sfp
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpq	%rbp, %r14	# _165, ivtmp.1127
	jne	.L840	#,
	.p2align 4,,10
	.p2align 3
.L861:
# run.c:980:     if (rng_seed <= 0) rng_seed = (unsigned int)time(NULL);
	cmpq	$0, 8(%rsp)	#, %sfp
	vmovss	40(%rsp), %xmm1	# %sfp, temperature
	vmovss	44(%rsp), %xmm0	# %sfp, topp
	vmovss	72(%rsp), %xmm3	# %sfp, tmp186
	vmovss	76(%rsp), %xmm4	# %sfp, topp
	je	.L825	#,
.L841:
# run.c:981:     if (temperature < 0.0) temperature = 0.0;
	vxorps	%xmm2, %xmm2, %xmm2	# tmp159
# run.c:981:     if (temperature < 0.0) temperature = 0.0;
	vcmpnltss	%xmm2, %xmm1, %xmm5	#, tmp159, temperature, tmp192
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	vcomiss	%xmm0, %xmm2	# topp, tmp159
# run.c:981:     if (temperature < 0.0) temperature = 0.0;
	vblendvps	%xmm5, %xmm1, %xmm2, %xmm1	# tmp192, temperature, tmp159, temperature
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	ja	.L852	#,
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	vcmpnltss	%xmm0, %xmm3, %xmm3	#, topp, tmp186, tmp193
	vblendvps	%xmm3, %xmm0, %xmm4, %xmm0	# tmp193, topp, topp, topp
.L843:
# run.c:987:     build_transformer(&transformer, checkpoint_path);
	leaq	112(%rsp), %rbp	#, tmp188
	movq	64(%rsp), %rsi	# %sfp,
	vunpcklps	%xmm0, %xmm1, %xmm5	# topp, temperature, _141
	movq	%rbp, %rdi	# tmp188,
	vmovq	%xmm5, %rbx	# _141, _141
	call	build_transformer	#
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	testl	%r13d, %r13d	# steps
	jg	.L862	#,
.L844:
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	movl	136(%rsp), %r13d	# transformer.config.seq_len, steps
.L845:
# run.c:992:     build_tokenizer(&tokenizer, tokenizer_path, transformer.config.vocab_size);
	movq	24(%rsp), %rsi	# %sfp,
	movl	132(%rsp), %edx	# transformer.config.vocab_size,
	leaq	368(%rsp), %r12	#, tmp189
	movq	%r12, %rdi	# tmp189,
	call	build_tokenizer	#
# run.c:712:     sampler->rng_state = rng_seed;
	movq	8(%rsp), %rcx	# %sfp, rng_seed
# run.c:710:     sampler->temperature = temperature;
	movq	%rbx, 96(%rsp)	# _141, MEM <vector(2) float> [(float *)&sampler + 16B]
# run.c:996:     build_sampler(&sampler, transformer.config.vocab_size, temperature, topp, rng_seed);
	movslq	132(%rsp), %rax	# transformer.config.vocab_size,
# run.c:712:     sampler->rng_state = rng_seed;
	movq	%rcx, 104(%rsp)	# rng_seed, sampler.rng_state
# run.c:714:     sampler->probindex = malloc(sampler->vocab_size * sizeof(ProbIndex));
	leaq	0(,%rax,8), %rdi	#, tmp167
# run.c:709:     sampler->vocab_size = vocab_size;
	movl	%eax, 80(%rsp)	# _49, sampler.vocab_size
# run.c:714:     sampler->probindex = malloc(sampler->vocab_size * sizeof(ProbIndex));
	call	malloc@PLT	#
# run.c:999:     if (strcmp(mode, "generate") == 0) {
	movq	56(%rsp), %rsi	# %sfp,
	movq	16(%rsp), %rdi	# %sfp,
# run.c:714:     sampler->probindex = malloc(sampler->vocab_size * sizeof(ProbIndex));
	movq	%rax, 88(%rsp)	# tmp203, sampler.probindex
# run.c:999:     if (strcmp(mode, "generate") == 0) {
	call	strcmp@PLT	#
# run.c:999:     if (strcmp(mode, "generate") == 0) {
	testl	%eax, %eax	# tmp204
	je	.L863	#,
# run.c:1001:     } else if (strcmp(mode, "chat") == 0) {
	movq	16(%rsp), %rdi	# %sfp,
	leaq	.LC73(%rip), %rsi	#, tmp175
	call	strcmp@PLT	#
# run.c:1001:     } else if (strcmp(mode, "chat") == 0) {
	testl	%eax, %eax	# tmp205
	jne	.L848	#,
# run.c:1002:         chat(&transformer, &tokenizer, &sampler, prompt, system_prompt, steps);
	movq	48(%rsp), %r8	# %sfp,
	movq	32(%rsp), %rcx	# %sfp,
	movl	%r13d, %r9d	# steps,
	movq	%r12, %rsi	# tmp189,
	leaq	80(%rsp), %rdx	#, tmp176
	movq	%rbp, %rdi	# tmp188,
	call	chat	#
.L847:
# run.c:718:     free(sampler->probindex);
	movq	88(%rsp), %rdi	# sampler.probindex,
	call	free@PLT	#
# run.c:1010:     free_tokenizer(&tokenizer);
	movq	%r12, %rdi	# tmp189,
	call	free_tokenizer	#
# run.c:1011:     free_transformer(&transformer);
	movq	%rbp, %rdi	# tmp188,
	call	free_transformer	#
# run.c:1013: }
	movq	920(%rsp), %rax	# D.44308, tmp207
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp207
	jne	.L864	#,
	addq	$936, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L833:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	movq	24(%r14), %rdi	# MEM[(char * *)_57 + 24B], MEM[(char * *)_57 + 24B]
	xorl	%esi, %esi	#
	call	strtod@PLT	#
# run.c:968:         if (argv[i][1] == 't') { temperature = atof(argv[i + 1]); }
	vcvtsd2ss	%xmm0, %xmm0, %xmm6	# tmp198, temperature
	vmovss	%xmm6, 40(%rsp)	# temperature, %sfp
	jmp	.L839	#
	.p2align 4,,10
	.p2align 3
.L834:
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	24(%r14), %rdi	# MEM[(char * *)_57 + 24B], MEM[(char * *)_57 + 24B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
# run.c:970:         else if (argv[i][1] == 's') { rng_seed = atoi(argv[i + 1]); }
	cltq
	movq	%rax, 8(%rsp)	# rng_seed, %sfp
	jmp	.L839	#
	.p2align 4,,10
	.p2align 3
.L835:
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	movq	24(%r14), %rdi	# MEM[(char * *)_57 + 24B], MEM[(char * *)_57 + 24B]
	xorl	%esi, %esi	#
	call	strtod@PLT	#
# run.c:969:         else if (argv[i][1] == 'p') { topp = atof(argv[i + 1]); }
	vcvtsd2ss	%xmm0, %xmm0, %xmm7	# tmp199, topp
	vmovss	%xmm7, 44(%rsp)	# topp, %sfp
	jmp	.L839	#
	.p2align 4,,10
	.p2align 3
.L836:
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	24(%r14), %rdi	# MEM[(char * *)_57 + 24B], MEM[(char * *)_57 + 24B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, %r13d	# tmp201, steps
	jmp	.L839	#
	.p2align 4,,10
	.p2align 3
.L837:
# run.c:974:         else if (argv[i][1] == 'm') { mode = argv[i + 1]; }
	movq	24(%r14), %rax	# MEM[(char * *)_57 + 24B], mode
	movq	%rax, 16(%rsp)	# mode, %sfp
	jmp	.L839	#
	.p2align 4,,10
	.p2align 3
.L838:
# run.c:972:         else if (argv[i][1] == 'i') { prompt = argv[i + 1]; }
	movq	24(%r14), %rax	# MEM[(char * *)_57 + 24B], prompt
	movq	%rax, 32(%rsp)	# prompt, %sfp
	jmp	.L839	#
.L862:
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	cmpl	136(%rsp), %r13d	# transformer.config.seq_len, steps
	jle	.L845	#,
	jmp	.L844	#
.L852:
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	vmovaps	%xmm4, %xmm0	# topp, topp
	jmp	.L843	#
.L863:
# run.c:1000:         generate(&transformer, &tokenizer, &sampler, prompt, steps);
	movq	32(%rsp), %rcx	# %sfp,
	leaq	80(%rsp), %rdx	#, tmp171
	movl	%r13d, %r8d	# steps,
	movq	%r12, %rsi	# tmp189,
	movq	%rbp, %rdi	# tmp188,
	call	generate	#
	jmp	.L847	#
.L850:
# run.c:958:     char *system_prompt = NULL; // the (optional) system prompt to use in chat mode
	xorl	%eax, %eax	#
# run.c:955:     char *prompt = NULL;        // prompt string
	xorl	%edx, %edx	#
# run.c:953:     float topp = 0.9f;          // top-p in nucleus sampling. 1.0 = off. 0.9 works well, but slower
	vmovss	.LC71(%rip), %xmm4	#, topp
# run.c:952:     float temperature = 1.0f;   // 0.0 = greedy deterministic. 1.0 = original. don't set higher
	vmovss	.LC7(%rip), %xmm3	#, tmp186
# run.c:958:     char *system_prompt = NULL; // the (optional) system prompt to use in chat mode
	movq	%rax, 48(%rsp)	#, %sfp
# run.c:957:     char *mode = "generate";    // generate|chat
	leaq	.LC70(%rip), %rax	#, tmp190
# run.c:954:     int steps = 256;            // number of steps to run for
	movl	$256, %r13d	#, steps
# run.c:957:     char *mode = "generate";    // generate|chat
	movq	%rax, 56(%rsp)	# tmp190, %sfp
# run.c:953:     float topp = 0.9f;          // top-p in nucleus sampling. 1.0 = off. 0.9 works well, but slower
	vmovaps	%xmm4, %xmm0	# topp, topp
# run.c:952:     float temperature = 1.0f;   // 0.0 = greedy deterministic. 1.0 = original. don't set higher
	vmovaps	%xmm3, %xmm1	# tmp186, temperature
# run.c:957:     char *mode = "generate";    // generate|chat
	movq	%rax, 16(%rsp)	# tmp190, %sfp
# run.c:951:     char *tokenizer_path = "tokenizer.bin";
	leaq	.LC72(%rip), %rax	#, tokenizer_path
# run.c:955:     char *prompt = NULL;        // prompt string
	movq	%rdx, 32(%rsp)	#, %sfp
# run.c:951:     char *tokenizer_path = "tokenizer.bin";
	movq	%rax, 24(%rsp)	# tokenizer_path, %sfp
.L825:
# run.c:980:     if (rng_seed <= 0) rng_seed = (unsigned int)time(NULL);
	xorl	%edi, %edi	#
	vmovss	%xmm4, 76(%rsp)	# topp, %sfp
	vmovss	%xmm3, 72(%rsp)	# tmp186, %sfp
	vmovss	%xmm0, 44(%rsp)	# topp, %sfp
	vmovss	%xmm1, 40(%rsp)	# temperature, %sfp
	call	time@PLT	#
# run.c:980:     if (rng_seed <= 0) rng_seed = (unsigned int)time(NULL);
	vmovss	76(%rsp), %xmm4	# %sfp, topp
	vmovss	72(%rsp), %xmm3	# %sfp, tmp186
	movl	%eax, %eax	# tmp202, rng_seed
	vmovss	44(%rsp), %xmm0	# %sfp, topp
	vmovss	40(%rsp), %xmm1	# %sfp, temperature
	movq	%rax, 8(%rsp)	# rng_seed, %sfp
	jmp	.L841	#
.L864:
# run.c:1013: }
	call	__stack_chk_fail@PLT	#
.L848:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	16(%rsp), %rcx	# %sfp,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC74(%rip), %rdx	#, tmp180
	xorl	%eax, %eax	#
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
	jmp	.L860	#
	.cfi_endproc
.LFE6517:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC6:
	.long	925353388
	.align 4
.LC7:
	.long	1065353216
	.align 4
.LC8:
	.long	1176256512
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC9:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 16
.LC10:
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	4
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	0
	.byte	7
	.byte	0
	.align 16
.LC11:
	.byte	8
	.byte	0
	.byte	9
	.byte	0
	.byte	10
	.byte	0
	.byte	11
	.byte	0
	.byte	12
	.byte	0
	.byte	13
	.byte	0
	.byte	14
	.byte	0
	.byte	15
	.byte	0
	.align 16
.LC12:
	.byte	16
	.byte	0
	.byte	17
	.byte	0
	.byte	18
	.byte	0
	.byte	19
	.byte	0
	.byte	20
	.byte	0
	.byte	21
	.byte	0
	.byte	22
	.byte	0
	.byte	23
	.byte	0
	.align 16
.LC13:
	.byte	24
	.byte	0
	.byte	25
	.byte	0
	.byte	26
	.byte	0
	.byte	27
	.byte	0
	.byte	28
	.byte	0
	.byte	29
	.byte	0
	.byte	30
	.byte	0
	.byte	31
	.byte	0
	.align 16
.LC14:
	.byte	32
	.byte	0
	.byte	33
	.byte	0
	.byte	34
	.byte	0
	.byte	35
	.byte	0
	.byte	36
	.byte	0
	.byte	37
	.byte	0
	.byte	38
	.byte	0
	.byte	39
	.byte	0
	.align 16
.LC15:
	.byte	40
	.byte	0
	.byte	41
	.byte	0
	.byte	42
	.byte	0
	.byte	43
	.byte	0
	.byte	44
	.byte	0
	.byte	45
	.byte	0
	.byte	46
	.byte	0
	.byte	47
	.byte	0
	.align 16
.LC16:
	.byte	48
	.byte	0
	.byte	49
	.byte	0
	.byte	50
	.byte	0
	.byte	51
	.byte	0
	.byte	52
	.byte	0
	.byte	53
	.byte	0
	.byte	54
	.byte	0
	.byte	55
	.byte	0
	.align 16
.LC17:
	.byte	56
	.byte	0
	.byte	57
	.byte	0
	.byte	58
	.byte	0
	.byte	59
	.byte	0
	.byte	60
	.byte	0
	.byte	61
	.byte	0
	.byte	62
	.byte	0
	.byte	63
	.byte	0
	.align 16
.LC18:
	.byte	64
	.byte	0
	.byte	65
	.byte	0
	.byte	66
	.byte	0
	.byte	67
	.byte	0
	.byte	68
	.byte	0
	.byte	69
	.byte	0
	.byte	70
	.byte	0
	.byte	71
	.byte	0
	.align 16
.LC19:
	.byte	72
	.byte	0
	.byte	73
	.byte	0
	.byte	74
	.byte	0
	.byte	75
	.byte	0
	.byte	76
	.byte	0
	.byte	77
	.byte	0
	.byte	78
	.byte	0
	.byte	79
	.byte	0
	.align 16
.LC20:
	.byte	80
	.byte	0
	.byte	81
	.byte	0
	.byte	82
	.byte	0
	.byte	83
	.byte	0
	.byte	84
	.byte	0
	.byte	85
	.byte	0
	.byte	86
	.byte	0
	.byte	87
	.byte	0
	.align 16
.LC21:
	.byte	88
	.byte	0
	.byte	89
	.byte	0
	.byte	90
	.byte	0
	.byte	91
	.byte	0
	.byte	92
	.byte	0
	.byte	93
	.byte	0
	.byte	94
	.byte	0
	.byte	95
	.byte	0
	.align 16
.LC22:
	.byte	96
	.byte	0
	.byte	97
	.byte	0
	.byte	98
	.byte	0
	.byte	99
	.byte	0
	.byte	100
	.byte	0
	.byte	101
	.byte	0
	.byte	102
	.byte	0
	.byte	103
	.byte	0
	.align 16
.LC23:
	.byte	104
	.byte	0
	.byte	105
	.byte	0
	.byte	106
	.byte	0
	.byte	107
	.byte	0
	.byte	108
	.byte	0
	.byte	109
	.byte	0
	.byte	110
	.byte	0
	.byte	111
	.byte	0
	.align 16
.LC24:
	.byte	112
	.byte	0
	.byte	113
	.byte	0
	.byte	114
	.byte	0
	.byte	115
	.byte	0
	.byte	116
	.byte	0
	.byte	117
	.byte	0
	.byte	118
	.byte	0
	.byte	119
	.byte	0
	.align 16
.LC25:
	.byte	120
	.byte	0
	.byte	121
	.byte	0
	.byte	122
	.byte	0
	.byte	123
	.byte	0
	.byte	124
	.byte	0
	.byte	125
	.byte	0
	.byte	126
	.byte	0
	.byte	127
	.byte	0
	.align 16
.LC26:
	.byte	-128
	.byte	0
	.byte	-127
	.byte	0
	.byte	-126
	.byte	0
	.byte	-125
	.byte	0
	.byte	-124
	.byte	0
	.byte	-123
	.byte	0
	.byte	-122
	.byte	0
	.byte	-121
	.byte	0
	.align 16
.LC27:
	.byte	-120
	.byte	0
	.byte	-119
	.byte	0
	.byte	-118
	.byte	0
	.byte	-117
	.byte	0
	.byte	-116
	.byte	0
	.byte	-115
	.byte	0
	.byte	-114
	.byte	0
	.byte	-113
	.byte	0
	.align 16
.LC28:
	.byte	-112
	.byte	0
	.byte	-111
	.byte	0
	.byte	-110
	.byte	0
	.byte	-109
	.byte	0
	.byte	-108
	.byte	0
	.byte	-107
	.byte	0
	.byte	-106
	.byte	0
	.byte	-105
	.byte	0
	.align 16
.LC29:
	.byte	-104
	.byte	0
	.byte	-103
	.byte	0
	.byte	-102
	.byte	0
	.byte	-101
	.byte	0
	.byte	-100
	.byte	0
	.byte	-99
	.byte	0
	.byte	-98
	.byte	0
	.byte	-97
	.byte	0
	.align 16
.LC30:
	.byte	-96
	.byte	0
	.byte	-95
	.byte	0
	.byte	-94
	.byte	0
	.byte	-93
	.byte	0
	.byte	-92
	.byte	0
	.byte	-91
	.byte	0
	.byte	-90
	.byte	0
	.byte	-89
	.byte	0
	.align 16
.LC31:
	.byte	-88
	.byte	0
	.byte	-87
	.byte	0
	.byte	-86
	.byte	0
	.byte	-85
	.byte	0
	.byte	-84
	.byte	0
	.byte	-83
	.byte	0
	.byte	-82
	.byte	0
	.byte	-81
	.byte	0
	.align 16
.LC32:
	.byte	-80
	.byte	0
	.byte	-79
	.byte	0
	.byte	-78
	.byte	0
	.byte	-77
	.byte	0
	.byte	-76
	.byte	0
	.byte	-75
	.byte	0
	.byte	-74
	.byte	0
	.byte	-73
	.byte	0
	.align 16
.LC33:
	.byte	-72
	.byte	0
	.byte	-71
	.byte	0
	.byte	-70
	.byte	0
	.byte	-69
	.byte	0
	.byte	-68
	.byte	0
	.byte	-67
	.byte	0
	.byte	-66
	.byte	0
	.byte	-65
	.byte	0
	.align 16
.LC34:
	.byte	-64
	.byte	0
	.byte	-63
	.byte	0
	.byte	-62
	.byte	0
	.byte	-61
	.byte	0
	.byte	-60
	.byte	0
	.byte	-59
	.byte	0
	.byte	-58
	.byte	0
	.byte	-57
	.byte	0
	.align 16
.LC35:
	.byte	-56
	.byte	0
	.byte	-55
	.byte	0
	.byte	-54
	.byte	0
	.byte	-53
	.byte	0
	.byte	-52
	.byte	0
	.byte	-51
	.byte	0
	.byte	-50
	.byte	0
	.byte	-49
	.byte	0
	.align 16
.LC36:
	.byte	-48
	.byte	0
	.byte	-47
	.byte	0
	.byte	-46
	.byte	0
	.byte	-45
	.byte	0
	.byte	-44
	.byte	0
	.byte	-43
	.byte	0
	.byte	-42
	.byte	0
	.byte	-41
	.byte	0
	.align 16
.LC37:
	.byte	-40
	.byte	0
	.byte	-39
	.byte	0
	.byte	-38
	.byte	0
	.byte	-37
	.byte	0
	.byte	-36
	.byte	0
	.byte	-35
	.byte	0
	.byte	-34
	.byte	0
	.byte	-33
	.byte	0
	.align 16
.LC38:
	.byte	-32
	.byte	0
	.byte	-31
	.byte	0
	.byte	-30
	.byte	0
	.byte	-29
	.byte	0
	.byte	-28
	.byte	0
	.byte	-27
	.byte	0
	.byte	-26
	.byte	0
	.byte	-25
	.byte	0
	.align 16
.LC39:
	.byte	-24
	.byte	0
	.byte	-23
	.byte	0
	.byte	-22
	.byte	0
	.byte	-21
	.byte	0
	.byte	-20
	.byte	0
	.byte	-19
	.byte	0
	.byte	-18
	.byte	0
	.byte	-17
	.byte	0
	.align 16
.LC40:
	.byte	-16
	.byte	0
	.byte	-15
	.byte	0
	.byte	-14
	.byte	0
	.byte	-13
	.byte	0
	.byte	-12
	.byte	0
	.byte	-11
	.byte	0
	.byte	-10
	.byte	0
	.byte	-9
	.byte	0
	.align 16
.LC41:
	.byte	-8
	.byte	0
	.byte	-7
	.byte	0
	.byte	-6
	.byte	0
	.byte	-5
	.byte	0
	.byte	-4
	.byte	0
	.byte	-3
	.byte	0
	.byte	-2
	.byte	0
	.byte	-1
	.byte	0
	.section	.rodata.cst4
	.align 4
.LC46:
	.long	-803929351
	.align 4
.LC49:
	.long	864026624
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC52:
	.long	0
	.long	1083129856
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC56:
	.quad	4332565458286692699
	.quad	2669014166577697596
	.quad	6005923040414403187
	.quad	6566374859625610814
	.section	.rodata.cst16
	.align 16
.LC58:
	.quad	2675240795414350171
	.quad	6076286398487011443
	.section	.rodata.cst4
	.align 4
.LC71:
	.long	1063675494
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
