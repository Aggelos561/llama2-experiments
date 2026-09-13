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
.LFB88:
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
.LFE88:
	.size	compare, .-compare
	.p2align 4
	.globl	compare_tokens
	.type	compare_tokens, @function
compare_tokens:
.LFB79:
	.cfi_startproc
	endbr64	
# run.c:423:     return strcmp(((TokenIndex*)a)->str, ((TokenIndex*)b)->str);
	movq	(%rsi), %rsi	# MEM[(struct TokenIndex *)b_4(D)].str, MEM[(struct TokenIndex *)b_4(D)].str
	movq	(%rdi), %rdi	# MEM[(struct TokenIndex *)a_5(D)].str, MEM[(struct TokenIndex *)a_5(D)].str
	jmp	strcmp@PLT	#
	.cfi_endproc
.LFE79:
	.size	compare_tokens, .-compare_tokens
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"malloc failed!\n"
	.text
	.p2align 4
	.globl	malloc_run_state
	.type	malloc_run_state, @function
malloc_run_state:
.LFB69:
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
.LFE69:
	.size	malloc_run_state, .-malloc_run_state
	.p2align 4
	.globl	free_run_state
	.type	free_run_state, @function
free_run_state:
.LFB70:
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
.LFE70:
	.size	free_run_state, .-free_run_state
	.p2align 4
	.globl	memory_map_weights
	.type	memory_map_weights, @function
memory_map_weights:
.LFB71:
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
.LFE71:
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
.LFB72:
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
.LFE72:
	.size	read_checkpoint, .-read_checkpoint
	.p2align 4
	.globl	build_transformer
	.type	build_transformer, @function
build_transformer:
.LFB73:
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
.LFE73:
	.size	build_transformer, .-build_transformer
	.p2align 4
	.globl	free_transformer
	.type	free_transformer, @function
free_transformer:
.LFB74:
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
.LFE74:
	.size	free_transformer, .-free_transformer
	.p2align 4
	.globl	rmsnorm
	.type	rmsnorm, @function
rmsnorm:
.LFB75:
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
	movl	%ebx, %ecx	# size, niters.144
	cmpl	$6, %r15d	#, _175
	jbe	.L59	#,
	movl	%ebx, %edx	# size, bnd.145
	movq	%rsi, %rax	# x, ivtmp.188
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
	addq	$32, %rax	#, ivtmp.188
	vmulps	%ymm5, %ymm5, %ymm1	#, tmp297, vect__5.151
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_33.152, ss, stmp_ss_33.152
	vshufps	$85, %xmm1, %xmm1, %xmm4	#, tmp225, tmp225, stmp_ss_33.152
	vshufps	$255, %xmm1, %xmm1, %xmm2	#, tmp225, tmp225, stmp_ss_33.152
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_ss_33.152, stmp_ss_33.152, stmp_ss_33.152
	vunpckhps	%xmm1, %xmm1, %xmm4	# tmp225, tmp225, stmp_ss_33.152
	vextractf128	$0x1, %ymm1, %xmm1	# vect__5.151, tmp229
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_ss_33.152, stmp_ss_33.152, stmp_ss_33.152
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_33.152, stmp_ss_33.152, stmp_ss_33.152
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp229, tmp229, stmp_ss_33.152
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_33.152, stmp_ss_33.152, stmp_ss_33.152
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_33.152, stmp_ss_33.152, stmp_ss_33.152
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp229, tmp229, stmp_ss_33.152
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp229, tmp229, stmp_ss_33.152
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_33.152, stmp_ss_33.152, stmp_ss_33.152
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_33.152, stmp_ss_33.152, ss
	cmpq	%rdx, %rax	# _233, ivtmp.188
	jne	.L42	#,
	movl	%ebx, %eax	# size, tmp.156
	andl	$-8, %eax	#, tmp.156
	movl	%eax, %edx	# tmp.156,
	cmpl	%eax, %ebx	# tmp.156, size
	je	.L43	#,
.L41:
	movl	%ebx, %esi	# size, niters.153
	subl	%edx, %esi	# niters_vector_mult_vf.146, niters.153
	leal	-1(%rsi), %edi	#, tmp235
	cmpl	$2, %edi	#, tmp235
	jbe	.L44	#,
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%r12,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.158_229], MEM <vector(4) float> [(float *)vectp_x.158_229]
	movl	%esi, %edx	# niters.153, niters_vector_mult_vf.155
	andl	$-4, %edx	#, niters_vector_mult_vf.155
# run.c:193:         ss += x[j] * x[j];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.158_229], MEM <vector(4) float> [(float *)vectp_x.158_229], vect__170.160
	addl	%edx, %eax	# niters_vector_mult_vf.155, tmp.156
	andl	$3, %esi	#, niters.153
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_171.161, ss, stmp_ss_171.161
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__170.160, vect__170.160, stmp_ss_171.161
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_171.161, stmp_ss_171.161, stmp_ss_171.161
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__170.160, vect__170.160, stmp_ss_171.161
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__170.160, vect__170.160, stmp_ss_171.161
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_171.161, stmp_ss_171.161, stmp_ss_171.161
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_171.161, stmp_ss_171.161, ss
	je	.L43	#,
.L44:
# run.c:193:         ss += x[j] * x[j];
	movslq	%eax, %rdx	# tmp.156, tmp.156
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
	movl	%ebx, %edx	# size, bnd.117
	vshufps	$0, %xmm1, %xmm1, %xmm2	# ss, vect_cst__103
	xorl	%eax, %eax	# ivtmp.179
	vinsertf128	$1, %xmm2, %ymm2, %ymm2	# vect_cst__103, vect_cst__103
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, _43
	.p2align 4,,10
	.p2align 3
.L52:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r12,%rax), %ymm2, %ymm0	# MEM <vector(8) float> [(float *)x_29(D) + ivtmp.179_208 * 1], vect_cst__103, vect__15.126
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r14,%rax), %ymm0, %ymm0	# MEM <vector(8) float> [(float *)weight_28(D) + ivtmp.179_208 * 1], vect__15.126, vect__17.127
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%ymm0, 0(%r13,%rax)	# vect__17.127, MEM <vector(8) float> [(float *)o_30(D) + ivtmp.179_208 * 1]
	addq	$32, %rax	#, ivtmp.179
	cmpq	%rax, %rdx	# ivtmp.179, _43
	jne	.L52	#,
	movl	%ebx, %eax	# size, tmp.133
	andl	$-8, %eax	#, tmp.133
	movl	%eax, %edx	# tmp.133,
	cmpl	%ebx, %eax	# size, tmp.133
	je	.L81	#,
	movl	%ebx, %ecx	# size, niters.144
	subl	%eax, %ecx	# tmp.133, niters.144
	leal	-1(%rcx), %esi	#, tmp266
	cmpl	$2, %esi	#, tmp266
	jbe	.L55	#,
.L51:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vshufps	$0, %xmm1, %xmm1, %xmm0	# ss, tmp269
	vmulps	(%r12,%rdx,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp_x.138_144], tmp269, vect__20.140
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%r14,%rdx,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp_weight.135_138], vect__20.140, vect__83.141
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%xmm0, 0(%r13,%rdx,4)	# vect__83.141, MEM <vector(4) float> [(float *)vectp_o.143_153]
	movl	%ecx, %edx	# niters.144, niters_vector_mult_vf.132
	andl	$-4, %edx	#, niters_vector_mult_vf.132
	addl	%edx, %eax	# niters_vector_mult_vf.132, tmp.133
	andl	$3, %ecx	#, niters.144
	je	.L81	#,
.L55:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movslq	%eax, %rcx	# tmp.133, tmp.133
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
	xorl	%eax, %eax	# ivtmp.174
	.p2align 4,,10
	.p2align 3
.L57:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r12,%rax), %xmm1, %xmm0	# MEM[(float *)x_29(D) + ivtmp.174_85 * 1], ss, tmp285
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%r14,%rax), %xmm0, %xmm0	# MEM[(float *)weight_28(D) + ivtmp.174_85 * 1], tmp285, tmp286
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, 0(%r13,%rax)	# tmp286, MEM[(float *)o_30(D) + ivtmp.174_85 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.174
	cmpq	%rax, %rbx	# ivtmp.174, _219
	jne	.L57	#,
.L81:
	vzeroupper
	jmp	.L82	#
.L59:
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%edx, %edx	#
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.156
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
	jmp	.L41	#
.L60:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	xorl	%edx, %edx	#
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.133
	jmp	.L51	#
.L77:
	movl	%ecx, -52(%rbp)	# niters.144, %sfp
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vzeroupper
	call	sqrtf@PLT	#
	movl	-52(%rbp), %ecx	# %sfp, niters.144
	jmp	.L48	#
	.cfi_endproc
.LFE75:
	.size	rmsnorm, .-rmsnorm
	.p2align 4
	.globl	softmax
	.type	softmax, @function
softmax:
.LFB76:
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
	leaq	4(%rdi), %rax	#, ivtmp.237
	leaq	8(%rdi,%rdx,4), %rdx	#, _23
	.p2align 4,,10
	.p2align 3
.L87:
# run.c:208:         if (x[i] > max_val) {
	vmovss	(%rax), %xmm0	# MEM[(float *)_4], _39
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.237
# run.c:209:             max_val = x[i];
	vmaxss	%xmm1, %xmm0, %xmm1	# max_val, _39, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rdx, %rax	# _23, ivtmp.237
	jne	.L87	#,
.L88:
	movslq	%r13d, %rax	# size, size
	movq	%r12, %r15	# x, ivtmp.224
# run.c:213:     float sum = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# sum
# run.c:209:             max_val = x[i];
	movq	%r12, %rbx	# x, ivtmp.231
	leaq	(%r12,%rax,4), %r14	#, _20
	.p2align 4,,10
	.p2align 3
.L90:
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	(%rbx), %xmm0	# MEM[(float *)_87], MEM[(float *)_87]
	vmovss	%xmm2, -56(%rbp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %rbx	#, ivtmp.231
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
	cmpq	%rbx, %r14	# ivtmp.231, _20
# run.c:216:         sum += x[i];
	vaddss	%xmm0, %xmm2, %xmm2	# _10, sum, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	jne	.L90	#,
	leal	-1(%r13), %eax	#, tmp152
	cmpl	$6, %eax	#, tmp152
	jbe	.L98	#,
	movl	%r13d, %eax	# size, bnd.200
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
	addq	$32, %r15	#, ivtmp.224
	vdivps	%ymm1, %ymm3, %ymm0	# vect_cst__77, tmp184, vect__17.206
	vmovups	%ymm0, -32(%r15)	# vect__17.206, MEM <vector(8) float> [(float *)_96]
	cmpq	%r15, %rax	# ivtmp.224, _97
	jne	.L93	#,
	movl	%r13d, %eax	# size, tmp.212
	andl	$-8, %eax	#, tmp.212
	movl	%eax, %edx	# tmp.212,
	cmpl	%eax, %r13d	# tmp.212, size
	je	.L108	#,
	vzeroupper
.L92:
	movl	%r13d, %ecx	# size, niters.209
	subl	%edx, %ecx	# niters_vector_mult_vf.201, niters.209
	leal	-1(%rcx), %esi	#, tmp159
	cmpl	$2, %esi	#, tmp159
	jbe	.L95	#,
	leaq	(%r12,%rdx,4), %rdx	#, vectp_x.214
	vshufps	$0, %xmm2, %xmm2, %xmm0	# sum, tmp163
	vmovups	(%rdx), %xmm4	# MEM <vector(4) float> [(float *)vectp_x.214_107], tmp187
	vdivps	%xmm0, %xmm4, %xmm0	# tmp163, tmp187, vect__53.216
	vmovups	%xmm0, (%rdx)	# vect__53.216, MEM <vector(4) float> [(float *)vectp_x.214_107]
	movl	%ecx, %edx	# niters.209, niters_vector_mult_vf.211
	andl	$-4, %edx	#, niters_vector_mult_vf.211
	addl	%edx, %eax	# niters_vector_mult_vf.211, tmp.212
	andl	$3, %ecx	#, niters.209
	je	.L106	#,
.L95:
# run.c:220:         x[i] /= sum;
	movslq	%eax, %rdx	# tmp.212, tmp.212
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
	xorl	%eax, %eax	# tmp.212
	jmp	.L92	#
	.cfi_endproc
.LFE76:
	.size	softmax, .-softmax
	.p2align 4
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB77:
	.cfi_startproc
	endbr64	
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%r8d, %r8d	# d
	jle	.L127	#,
# run.c:256: void matmul(float* xout, float* x, float* w, int n, int d) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movslq	%r8d, %r8	# d, d
	movq	%rdi, %r9	# xout, ivtmp.284
	movq	%rdx, %r10	# tmp223, w
	leaq	(%rdi,%r8,4), %r11	#, _95
	movl	%ecx, %edi	# n, bnd.247
	movl	%ecx, %r8d	# n, _114
# run.c:261:     for (i = 0; i < d; i++) {
	xorl	%edx, %edx	# ivtmp.286
	shrl	$3, %edi	#,
	andl	$-8, %r8d	#, _114
# run.c:256: void matmul(float* xout, float* x, float* w, int n, int d) {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	salq	$5, %rdi	#, _153
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	leal	-1(%rcx), %ebx	#, _45
	.p2align 4,,10
	.p2align 3
.L111:
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%ecx, %ecx	# n
	jle	.L118	#,
	cmpl	$6, %ebx	#, _45
	jbe	.L119	#,
	movslq	%edx, %rax	# ivtmp.286, _1
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
	leaq	(%r10,%rax,4), %r12	#, vectp.251
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.276
	.p2align 4,,10
	.p2align 3
.L113:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%r12,%rax), %ymm4	# MEM <vector(8) float> [(float *)vectp.251_30 + ivtmp.276_156 * 1], tmp229
	vmulps	(%rsi,%rax), %ymm4, %ymm1	# MEM <vector(8) float> [(float *)x_27(D) + ivtmp.276_156 * 1], tmp229, vect__11.256
	addq	$32, %rax	#, ivtmp.276
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_28.257, val, stmp_val_28.257
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, tmp188, tmp188, stmp_val_28.257
	vshufps	$255, %xmm1, %xmm1, %xmm2	#, tmp188, tmp188, stmp_val_28.257
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_28.257, stmp_val_28.257, stmp_val_28.257
	vunpckhps	%xmm1, %xmm1, %xmm3	# tmp188, tmp188, stmp_val_28.257
	vextractf128	$0x1, %ymm1, %xmm1	# vect__11.256, tmp192
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_28.257, stmp_val_28.257, stmp_val_28.257
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_28.257, stmp_val_28.257, stmp_val_28.257
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp192, tmp192, stmp_val_28.257
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_28.257, stmp_val_28.257, stmp_val_28.257
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_28.257, stmp_val_28.257, stmp_val_28.257
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp192, tmp192, stmp_val_28.257
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp192, tmp192, stmp_val_28.257
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_28.257, stmp_val_28.257, stmp_val_28.257
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_28.257, stmp_val_28.257, val
	cmpq	%rax, %rdi	# ivtmp.276, _153
	jne	.L113	#,
	cmpl	%ecx, %r8d	# n, _114
	je	.L118	#,
	movl	%r8d, %r12d	# _114,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r8d, %eax	# _114, tmp.261
.L112:
	movl	%ecx, %r14d	# n, niters.258
	subl	%r12d, %r14d	# _32, niters.258
	leal	-1(%r14), %r13d	#, tmp198
	cmpl	$2, %r13d	#, tmp198
	jbe	.L115	#,
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %r13	# ivtmp.286, _1
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%rsi,%r12,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.266_127], vect__51.267
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %r13	# _121, tmp200
	movl	%r14d, %r12d	# niters.258, niters_vector_mult_vf.260
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%r10,%r13,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.263_119], vect__51.267, vect__50.268
	andl	$-4, %r12d	#, niters_vector_mult_vf.260
	addl	%r12d, %eax	# niters_vector_mult_vf.260, tmp.261
	andl	$3, %r14d	#, niters.258
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_49.269, val, stmp_val_49.269
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__50.268, vect__50.268, stmp_val_49.269
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_49.269, stmp_val_49.269, stmp_val_49.269
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__50.268, vect__50.268, stmp_val_49.269
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__50.268, vect__50.268, stmp_val_49.269
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_49.269, stmp_val_49.269, stmp_val_49.269
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_49.269, stmp_val_49.269, val
	je	.L118	#,
.L115:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rdx,%rax), %r13d	#, tmp208
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r14	# tmp.261, tmp.261
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r13d, %r13	# tmp208, tmp209
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r14,4), %r12	#, _9
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%r13,4), %xmm1	# *_6, *_6
	vmulss	(%rsi,%r14,4), %xmm1, %xmm1	# *_10, *_6, tmp210
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %r13d	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp210, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%r13d, %ecx	# j, n
	jle	.L118	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %r13d	# ivtmp.286, tmp212
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r13d, %r13	# tmp212, tmp213
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%r13,4), %xmm1	# *_53, *_53
	vmulss	4(%rsi,%r12), %xmm1, %xmm1	# *_48, *_53, tmp214
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp214, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %ecx	# j, n
	jle	.L118	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %eax	# ivtmp.286, tmp216
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rax,4), %xmm1	# *_99, *_99
	vmulss	8(%rsi,%r12), %xmm1, %xmm1	# *_103, *_99, tmp218
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp218, val, val
.L118:
# run.c:266:         xout[i] = val;
	vmovss	%xmm0, (%r9)	# val, MEM[(float *)_146]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r9	#, ivtmp.284
	addl	%ecx, %edx	# n, ivtmp.286
	cmpq	%r9, %r11	# ivtmp.284, _95
	jne	.L111	#,
	vzeroupper
# run.c:268: }
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L119:
	.cfi_restore_state
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%r12d, %r12d	#
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.261
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
	jmp	.L112	#
.L127:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	ret	
	.cfi_endproc
.LFE77:
	.size	matmul, .-matmul
	.p2align 4
	.globl	forward
	.type	forward, @function
forward:
.LFB78:
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
	movq	%rdi, %r14	# tmp2506, transformer
	pushq	%r13	#
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	movl	%edx, %r13d	# tmp2508, pos
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$416, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
# run.c:279:     int dim = p->dim;
	movl	(%rdi), %eax	# MEM[(struct Config *)transformer_180(D)].dim, dim
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movl	12(%r14), %ecx	# MEM[(struct Config *)transformer_180(D)].n_heads, _3
# run.c:272: float* forward(Transformer* transformer, int token, int pos) {
	movl	%edx, -120(%rbp)	# pos, %sfp
# run.c:278:     float *x = s->x;
	movq	128(%rdi), %r8	# MEM[(struct RunState *)transformer_180(D) + 128B].x, x
# run.c:282:     int hidden_dim =  p->hidden_dim;
	movl	4(%r14), %r9d	# MEM[(struct Config *)transformer_180(D)].hidden_dim, hidden_dim
# run.c:272: float* forward(Transformer* transformer, int token, int pos) {
	movq	%rdi, -128(%rbp)	# transformer, %sfp
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movl	16(%rdi), %edi	# MEM[(struct Config *)transformer_180(D)].n_kv_heads, _1
# run.c:279:     int dim = p->dim;
	movl	%eax, %ebx	# dim, dim
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	movslq	%ebx, %r15	# dim,
# run.c:282:     int hidden_dim =  p->hidden_dim;
	movl	%r9d, -324(%rbp)	# hidden_dim, %sfp
	movl	%r9d, %r12d	# hidden_dim, hidden_dim
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	imull	%edi, %eax	# _1, tmp1703
# run.c:283:     int head_size = dim / p->n_heads;
	movl	%ebx, -284(%rbp)	# dim, %sfp
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	leaq	0(,%r15,4), %r11	#, _9
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	cltd
	idivl	%ecx	# _3
	movl	%eax, -180(%rbp)	# tmp1703, %sfp
# run.c:281:     int kv_mul = p->n_heads / p->n_kv_heads; // integer multiplier of the kv sharing in multiquery
	movl	%ecx, %eax	# _3, tmp1706
	cltd
	idivl	%edi	# _1
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r8, %rdi	# x,
# run.c:281:     int kv_mul = p->n_heads / p->n_kv_heads; // integer multiplier of the kv sharing in multiquery
	movl	%eax, -244(%rbp)	# tmp1706, %sfp
# run.c:283:     int head_size = dim / p->n_heads;
	movl	%ebx, %eax	# dim, tmp1708
	cltd
	idivl	%ecx	# _3
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	movq	%r15, %rcx	#,
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	imull	%esi, %ecx	# tmp2507, tmp1710
# run.c:283:     int head_size = dim / p->n_heads;
	movl	%eax, -64(%rbp)	# tmp1708, %sfp
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	movslq	%ecx, %rax	# tmp1710,
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	movq	%r15, -192(%rbp)	# _8, %sfp
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	movq	32(%r14), %rdx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].token_embedding_table, MEM[(struct TransformerWeights *)transformer_180(D) + 32B].token_embedding_table
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	movq	%r11, -264(%rbp)	# _9, %sfp
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	leaq	(%rdx,%rax,4), %rsi	#, content_row
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r11, %rdx	# _9,
	movq	%r8, -152(%rbp)	# x, %sfp
	call	memcpy@PLT	#
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movl	8(%r14), %r14d	# MEM[(struct Config *)transformer_180(D)].n_layers,
	testl	%r14d, %r14d	#
	je	.L131	#,
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movl	-180(%rbp), %ecx	# %sfp, tmp1704
# run.c:349:             memset(xb, 0, head_size * sizeof(float));
	movl	-64(%rbp), %esi	# %sfp, tmp1708
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movl	%r13d, %edi	# pos, pos
# run.c:195:     ss /= size;
	vxorps	%xmm5, %xmm5, %xmm5	# tmp2955
	vcvtsi2ssl	%ebx, %xmm5, %xmm0	# dim, tmp2955, tmp2518
# run.c:345:             softmax(att, pos + 1);
	leal	1(%rdi), %r8d	#, _342
# run.c:195:     ss /= size;
	movq	$0, -344(%rbp)	#, %sfp
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movl	%ecx, %eax	# tmp1704, tmp1720
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movslq	%ecx, %r10	# tmp1704,
# run.c:195:     ss /= size;
	movl	%ebx, %ecx	# dim, dim
# run.c:345:             softmax(att, pos + 1);
	movl	%r8d, -184(%rbp)	# _342, %sfp
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	imull	%r13d, %eax	# pos, tmp1720
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movq	%r10, -80(%rbp)	# _1039, %sfp
# run.c:195:     ss /= size;
	movq	$0, -336(%rbp)	#, %sfp
	movq	$0, -320(%rbp)	#, %sfp
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movslq	%eax, %rdx	# tmp1720, _26
# run.c:349:             memset(xb, 0, head_size * sizeof(float));
	movslq	%esi, %rax	# tmp1708,
# run.c:195:     ss /= size;
	movq	$0, -312(%rbp)	#, %sfp
# run.c:349:             memset(xb, 0, head_size * sizeof(float));
	movq	%rax, -232(%rbp)	# _568, %sfp
	leaq	0(,%rax,4), %r13	#, _538
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movslq	%r12d, %rax	# hidden_dim,
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movq	%rdx, -368(%rbp)	# _26, %sfp
	movq	%rax, %rdx	# _1041, _1041
	movq	%r15, %rax	# _8, _8
	imulq	%rdx, %r15	# _1041, _1971
	movq	%rax, %rbx	# _8, _2010
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	$0, -304(%rbp)	#, %sfp
	imulq	%rax, %rbx	# _8, _2010
# run.c:195:     ss /= size;
	vmovss	%xmm0, -288(%rbp)	# tmp2518, %sfp
	movq	%r15, -392(%rbp)	# _1971, %sfp
	movq	%rax, %r15	# _8, _1963
	leal	-1(%rcx), %eax	#, _2746
	movl	%eax, -116(%rbp)	# _2746, %sfp
	movl	%ecx, %eax	# dim, bnd.774
	imulq	%r10, %r15	# _1039, _1963
	shrl	$3, %eax	#,
	movq	%rbx, -400(%rbp)	# _2010, %sfp
	movl	%ecx, %ebx	# dim, _700
	salq	$5, %rax	#, bnd.774
	andl	$-8, %ebx	#, _700
	movq	%rax, %r14	# bnd.774, _1954
	movq	-152(%rbp), %rax	# %sfp, x
	movl	%ebx, -220(%rbp)	# _700, %sfp
	leal	-1(%rsi), %ebx	#, _2151
	movl	%ebx, -88(%rbp)	# _2151, %sfp
	movl	%esi, %ebx	# tmp1708, tmp1708
	addq	%r14, %rax	# _1954, _1965
	andl	$7, %ebx	#, niters.615
	movq	%r15, -384(%rbp)	# _1963, %sfp
	movl	%esi, %r15d	# tmp1708, tmp1708
	movq	%rax, -360(%rbp)	# _1965, %sfp
	movl	%edi, %eax	# pos, _2442
	movq	%rax, -408(%rbp)	# _2442, %sfp
	movl	%esi, %eax	# tmp1708, tmp1708
	shrl	$3, %eax	#,
	movl	%ebx, -156(%rbp)	# niters.615, %sfp
	subl	$1, %ebx	#, tmp2504
	salq	$5, %rax	#, bnd.650
	movl	%ebx, -160(%rbp)	# tmp2504, %sfp
	movq	%rax, %r11	# bnd.650, _2479
	movl	%esi, %eax	# tmp1708, _1960
	andl	$-8, %eax	#, _1960
	movl	%eax, -84(%rbp)	# _1960, %sfp
	movslq	%edi, %rax	# pos,
	movl	%r8d, %edi	# _342, niters_vector_mult_vf.631
	salq	$2, %rax	#, _2408
	andl	$-8, %edi	#, niters_vector_mult_vf.631
	movq	%rax, -272(%rbp)	# _2408, %sfp
	movl	%r8d, %eax	# _342, bnd.630
	shrl	$3, %eax	#,
	movl	%edi, -248(%rbp)	# niters_vector_mult_vf.631, %sfp
	movl	%r12d, %edi	# hidden_dim, hidden_dim
	salq	$5, %rax	#, bnd.630
	andl	$-8, %edi	#, _1814
	movq	%rax, -280(%rbp)	# bnd.630, %sfp
	leaq	0(,%r10,4), %rax	#, _2780
	movq	%rax, -112(%rbp)	# _2780, %sfp
	leaq	0(,%rdx,4), %rax	#, _1012
	movq	%rax, -352(%rbp)	# _1012, %sfp
	leal	-1(%r12), %eax	#, _772
	movl	%eax, -224(%rbp)	# _772, %sfp
	movl	%r12d, %eax	# hidden_dim, bnd.434
	shrl	$3, %eax	#,
	movl	%edi, -328(%rbp)	# _1814, %sfp
	salq	$5, %rax	#, bnd.434
	movq	%rax, -376(%rbp)	# bnd.434, %sfp
	movq	%r13, -416(%rbp)	# _538, %sfp
	movq	%r11, -424(%rbp)	# _2479, %sfp
	movl	%ecx, %r11d	# dim, dim
.L283:
	movq	-320(%rbp), %rcx	# %sfp, ivtmp.1162
# run.c:293:         rmsnorm(s->xb, x, w->rms_att_weight + l*dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	salq	$2, %rcx	#, _2020
	movq	40(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_att_weight, _10
# run.c:293:         rmsnorm(s->xb, x, w->rms_att_weight + l*dim, dim);
	movq	136(%rax), %r13	# MEM[(struct RunState *)transformer_180(D) + 128B].xb, prephitmp_445
	movq	%rcx, -296(%rbp)	# _2020, %sfp
# run.c:192:     for (int j = 0; j < size; j++) {
	testl	%r11d, %r11d	# dim
	jle	.L132	#,
	cmpl	$6, -116(%rbp)	#, %sfp
	jbe	.L332	#,
	movq	-152(%rbp), %rax	# %sfp, ivtmp.1152
# run.c:191:     float ss = 0.0f;
	movq	-360(%rbp), %rdx	# %sfp, _1965
	vxorps	%xmm0, %xmm0, %xmm0	# ss
.L134:
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%rax), %ymm5	# MEM <vector(8) float> [(float *)_1922], tmp2998
	addq	$32, %rax	#, ivtmp.1152
	vmulps	%ymm5, %ymm5, %ymm2	#, tmp2998, vect__434.780
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_436.781, ss, stmp_ss_436.781
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp1731, tmp1731, stmp_ss_436.781
	vshufps	$255, %xmm2, %xmm2, %xmm3	#, tmp1731, tmp1731, stmp_ss_436.781
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_436.781, stmp_ss_436.781, stmp_ss_436.781
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp1731, tmp1731, stmp_ss_436.781
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_436.781, stmp_ss_436.781, stmp_ss_436.781
	vextractf128	$0x1, %ymm2, %xmm1	# vect__434.780, tmp1735
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp1735, tmp1735, stmp_ss_436.781
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_436.781, stmp_ss_436.781, stmp_ss_436.781
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_436.781, stmp_ss_436.781, stmp_ss_436.781
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_436.781, stmp_ss_436.781, stmp_ss_436.781
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp1735, tmp1735, stmp_ss_436.781
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp1735, tmp1735, stmp_ss_436.781
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_436.781, stmp_ss_436.781, stmp_ss_436.781
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_436.781, stmp_ss_436.781, ss
	cmpq	%rdx, %rax	# _1965, ivtmp.1152
	jne	.L134	#,
	movl	-220(%rbp), %edi	# %sfp, _700
	movl	%edi, %eax	# _700,
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	%edi, %ecx	# _700, tmp.785
	cmpl	%edi, %r11d	# _700, dim
	je	.L501	#,
.L133:
	movl	%r11d, %esi	# dim, niters.782
	subl	%eax, %esi	# _2753, niters.782
	leal	-1(%rsi), %edx	#, tmp1744
	cmpl	$2, %edx	#, tmp1744
	jbe	.L138	#,
# run.c:193:         ss += x[j] * x[j];
	movq	-152(%rbp), %rdi	# %sfp, x
	vmovups	(%rdi,%rax,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.787_2800], MEM <vector(4) float> [(float *)vectp_x.787_2800]
	movl	%esi, %eax	# niters.782, niters_vector_mult_vf.784
	andl	$-4, %eax	#, niters_vector_mult_vf.784
# run.c:193:         ss += x[j] * x[j];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.787_2800], MEM <vector(4) float> [(float *)vectp_x.787_2800], vect__2741.789
	addl	%eax, %ecx	# niters_vector_mult_vf.784, tmp.785
	andl	$3, %esi	#, niters.782
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_2742.790, ss, stmp_ss_2742.790
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__2741.789, vect__2741.789, stmp_ss_2742.790
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_2742.790, stmp_ss_2742.790, stmp_ss_2742.790
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__2741.789, vect__2741.789, stmp_ss_2742.790
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__2741.789, vect__2741.789, stmp_ss_2742.790
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_2742.790, stmp_ss_2742.790, stmp_ss_2742.790
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_2742.790, stmp_ss_2742.790, ss
	je	.L139	#,
.L138:
# run.c:193:         ss += x[j] * x[j];
	movq	-152(%rbp), %rdi	# %sfp, x
	movslq	%ecx, %rax	# tmp.785, tmp.785
	leaq	0(,%rax,4), %rdx	#, _247
	vmovss	(%rdi,%rax,4), %xmm1	# *_58, _59
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rcx), %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _59, _59, tmp1752
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1752, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%r11d, %eax	# dim, j
	jge	.L139	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	4(%rdi,%rdx), %xmm1	# *_411, _634
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	2(%rcx), %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _634, _634, tmp1754
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1754, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%r11d, %eax	# dim, j
	jge	.L139	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	8(%rdi,%rdx), %xmm1	# *_2784, _2785
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _2785, _2785, tmp1756
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1756, ss, ss
.L139:
# run.c:195:     ss /= size;
	vdivss	-288(%rbp), %xmm0, %xmm0	# %sfp, ss, ss
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp1758
	vucomiss	%xmm0, %xmm1	# ss, tmp1758
	ja	.L135	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _442
.L141:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	.LC7(%rip), %xmm4	#, tmp2481
	cmpl	$2, -116(%rbp)	#, %sfp
	vdivss	%xmm0, %xmm4, %xmm0	# _442, tmp2481, ss
	jbe	.L142	#,
.L137:
	movq	-296(%rbp), %rdi	# %sfp, _2020
	movq	%r13, %rax	# prephitmp_445, tmp1768
	leaq	4(%rbx,%rdi), %rdx	#, tmp1767
	subq	%rdx, %rax	# tmp1767, tmp1768
	cmpq	$24, %rax	#, tmp1768
	jbe	.L142	#,
	movq	-152(%rbp), %rcx	# %sfp, x
	movq	%r13, %rax	# prephitmp_445, tmp1772
	leaq	4(%rcx), %rdx	#, tmp1771
	subq	%rdx, %rax	# tmp1771, tmp1772
	cmpq	$24, %rax	#, tmp1772
	jbe	.L142	#,
	cmpl	$6, -116(%rbp)	#, %sfp
	jbe	.L334	#,
	vshufps	$0, %xmm0, %xmm0, %xmm2	# ss, vect_cst__2672
	leaq	(%rbx,%rdi), %rdx	#, vectp.750
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# ivtmp.1143
	vinsertf128	$1, %xmm2, %ymm2, %ymm2	# vect_cst__2672, vect_cst__2672
.L146:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rcx,%rax), %ymm2, %ymm1	# MEM <vector(8) float> [(float *)x_182 + ivtmp.1143_1909 * 1], vect_cst__2672, vect__451.755
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rdx,%rax), %ymm1, %ymm1	# MEM <vector(8) float> [(float *)vectp.750_2664 + ivtmp.1143_1909 * 1], vect__451.755, vect__453.756
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%ymm1, 0(%r13,%rax)	# vect__453.756, MEM <vector(8) float> [(float *)_14 + ivtmp.1143_1909 * 1]
	addq	$32, %rax	#, ivtmp.1143
	cmpq	%r14, %rax	# _1954, ivtmp.1143
	jne	.L146	#,
	movl	-220(%rbp), %esi	# %sfp, _700
	cmpl	%esi, %r11d	# _700, dim
	je	.L132	#,
	movl	%r11d, %ecx	# dim, niters.759
	subl	%esi, %ecx	# _700, niters.759
	leal	-1(%rcx), %eax	#, tmp1780
	cmpl	$2, %eax	#, tmp1780
	jbe	.L149	#,
	movl	%esi, %eax	# _700,
.L145:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-320(%rbp), %rdi	# %sfp, ivtmp.1162
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vshufps	$0, %xmm0, %xmm0, %xmm1	# ss, tmp1784
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rdi,%rax), %rdx	#, tmp1781
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-152(%rbp), %rdi	# %sfp, x
	vmulps	(%rdi,%rax,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.767_2715], tmp1784, vect__2648.769
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rbx,%rdx,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.764_2708], vect__2648.769, vect__2650.770
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%xmm1, 0(%r13,%rax,4)	# vect__2650.770, MEM <vector(4) float> [(float *)vectp.772_2724]
	movl	%ecx, %eax	# niters.759, niters_vector_mult_vf.761
	andl	$-4, %eax	#, niters_vector_mult_vf.761
	addl	%eax, %esi	# niters_vector_mult_vf.761, tmp.762
	andl	$3, %ecx	#, niters.759
	je	.L132	#,
.L149:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movslq	%esi, %rdx	# tmp.762, tmp.762
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-152(%rbp), %rdi	# %sfp, x
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-296(%rbp), %r9	# %sfp, _2020
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	0(,%rdx,4), %rax	#, _1251
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdi,%rdx,4), %xmm0, %xmm1	# *_1247, ss, tmp1790
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rbx,%rax), %rcx	#, tmp1791
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rcx,%r9), %xmm1, %xmm1	# *_1249, tmp1790, tmp1793
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 0(%r13,%rdx,4)	# tmp1793, *_1244
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	1(%rsi), %edx	#, j
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L132	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	4(%rdi,%rax), %xmm0, %xmm1	# *_274, ss, tmp1797
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	4(%rbx,%rax), %rdx	#, tmp1795
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%r9), %xmm1, %xmm1	# *_482, tmp1797, tmp1798
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	2(%rsi), %edx	#, j
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 4(%r13,%rax)	# tmp1798, *_632
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%r11d, %edx	# dim, j
	jge	.L132	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%rdi,%rax), %xmm0, %xmm0	# *_2690, ss, tmp1803
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rbx,%r9), %rdx	#, tmp1801
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%rax,%rdx), %xmm0, %xmm0	# *_2688, tmp1803, tmp1804
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, 8(%r13,%rax)	# tmp1804, *_2693
.L132:
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movq	-128(%rbp), %rcx	# %sfp, transformer
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movl	-180(%rbp), %eax	# %sfp, tmp1761
	movl	-304(%rbp), %ebx	# %sfp, tmp3015
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movl	24(%rcx), %edx	# MEM[(struct Config *)transformer_180(D)].seq_len, pretmp_1149
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	56(%rcx), %r9	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wq, _33
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	imull	%edx, %eax	# pretmp_1149, tmp1761
	imull	%ebx, %eax	# tmp3015, loff
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movq	-368(%rbp), %rbx	# %sfp, _26
	cltq
	movq	%rax, -240(%rbp)	# _24, %sfp
	addq	%rbx, %rax	# _26, tmp1763
# run.c:302:         matmul(s->k, s->xb, w->wk + l*dim*kv_dim, dim, kv_dim);
	movq	64(%rcx), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wk, pretmp_1350
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	salq	$2, %rax	#, _28
	vmovq	%rax, %xmm0	# _28, _28
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	168(%rcx), %rax	# MEM[(struct RunState *)transformer_180(D) + 128B].q, pretmp_1147
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	vpunpcklqdq	%xmm0, %xmm0, %xmm0	# _28, tmp1765
	vpaddq	208(%rcx), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(float * *)transformer_180(D) + 208B], tmp1765, vect__29.835
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	%rax, -168(%rbp)	# pretmp_1147, %sfp
	vmovq	%xmm0, %r10	# vect__29.835, ivtmp.1084
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	vmovdqu	%xmm0, 176(%rcx)	# vect__29.835, MEM <vector(2) long unsigned int> [(float * *)transformer_180(D) + 176B]
	vpextrq	$1, %xmm0, -64(%rbp)	# vect__29.835, %sfp
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%r11d, %r11d	# dim
	jle	.L143	#,
	movq	-264(%rbp), %rcx	# %sfp, _9
	movl	%edx, -96(%rbp)	# pretmp_1149, %sfp
	movq	%rax, %r8	# pretmp_1147, ivtmp.1127
	movq	-344(%rbp), %r12	# %sfp, ivtmp.1164
	movl	%r15d, -136(%rbp)	# tmp1708, %sfp
	movq	%rbx, -104(%rbp)	# pretmp_1350, %sfp
	leaq	(%rcx,%rax), %rdi	#, _2106
	movl	-220(%rbp), %ebx	# %sfp, _700
	xorl	%eax, %eax	# ivtmp.1130
	movq	%r12, %rsi	# ivtmp.1164, ivtmp.1131
	vmovq	%xmm0, -72(%rbp)	# ivtmp.1084, %sfp
	movl	%eax, %r10d	# ivtmp.1130, ivtmp.1130
	.p2align 4,,10
	.p2align 3
.L144:
	cmpl	$6, -116(%rbp)	#, %sfp
	jbe	.L336	#,
	leaq	(%r9,%rsi,4), %rdx	#, vectp.726
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# ivtmp.1119
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
	.p2align 4,,10
	.p2align 3
.L156:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%rdx,%rax), %ymm5	# MEM <vector(8) float> [(float *)vectp.726_2522 + ivtmp.1119_2240 * 1], tmp3050
	vmulps	0(%r13,%rax), %ymm5, %ymm2	# MEM <vector(8) float> [(float *)_14 + ivtmp.1119_2240 * 1], tmp3050, vect__302.731
	addq	$32, %rax	#, ivtmp.1119
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_304.732, val, stmp_val_304.732
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp1834, tmp1834, stmp_val_304.732
	vshufps	$255, %xmm2, %xmm2, %xmm3	#, tmp1834, tmp1834, stmp_val_304.732
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_304.732, stmp_val_304.732, stmp_val_304.732
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp1834, tmp1834, stmp_val_304.732
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_304.732, stmp_val_304.732, stmp_val_304.732
	vextractf128	$0x1, %ymm2, %xmm1	# vect__302.731, tmp1838
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp1838, tmp1838, stmp_val_304.732
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_304.732, stmp_val_304.732, stmp_val_304.732
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_304.732, stmp_val_304.732, stmp_val_304.732
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_304.732, stmp_val_304.732, stmp_val_304.732
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp1838, tmp1838, stmp_val_304.732
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp1838, tmp1838, stmp_val_304.732
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_304.732, stmp_val_304.732, stmp_val_304.732
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_304.732, stmp_val_304.732, val
	cmpq	%rax, %r14	# ivtmp.1119, _1954
	jne	.L156	#,
	cmpl	%ebx, %r11d	# _700, dim
	je	.L153	#,
	movl	%ebx, %edx	# _700,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%ebx, %eax	# _700, tmp.736
.L159:
	movl	%r11d, %ecx	# dim, niters.733
	subl	%edx, %ecx	# _2520, niters.733
	leal	-1(%rcx), %r15d	#, tmp1808
	cmpl	$2, %r15d	#, tmp1808
	jbe	.L154	#,
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	(%rsi,%rdx), %r15	#, tmp1809
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	0(%r13,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp.741_2589], vect__2507.742
	movl	%ecx, %edx	# niters.733, niters_vector_mult_vf.735
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%r9,%r15,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.738_2580], vect__2507.742, vect__2508.743
	andl	$-4, %edx	#, niters_vector_mult_vf.735
	addl	%edx, %eax	# niters_vector_mult_vf.735, tmp.736
	andl	$3, %ecx	#, niters.733
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_2509.744, val, stmp_val_2509.744
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__2508.743, vect__2508.743, stmp_val_2509.744
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_2509.744, stmp_val_2509.744, stmp_val_2509.744
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__2508.743, vect__2508.743, stmp_val_2509.744
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__2508.743, vect__2508.743, stmp_val_2509.744
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_2509.744, stmp_val_2509.744, stmp_val_2509.744
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_2509.744, stmp_val_2509.744, val
	je	.L153	#,
.L154:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%r10,%rax), %edx	#, tmp1817
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %rcx	# tmp.736, tmp.736
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp1817, tmp1818
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%rcx,4), %r15	#, _1421
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rdx	# ivtmp.1164, tmp1819
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r9,%rdx,4), %xmm1	# *_1328, *_1328
	vmulss	0(%r13,%rcx,4), %xmm1, %xmm1	# *_1340, *_1328, tmp1820
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %edx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1820, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L153	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%r10d, %edx	# ivtmp.1130, tmp1822
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp1822, tmp1823
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rdx	# ivtmp.1164, tmp1824
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r9,%rdx,4), %xmm1	# *_1152, *_1152
	vmulss	4(%r13,%r15), %xmm1, %xmm1	# *_1260, *_1152, tmp1825
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1825, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r11d	# j, dim
	jle	.L153	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%r10d, %eax	# ivtmp.1130, tmp1827
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rax	# ivtmp.1164, tmp1829
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r9,%rax,4), %xmm1	# *_2560, *_2560
	vmulss	8(%r13,%r15), %xmm1, %xmm1	# *_2564, *_2560, tmp1830
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1830, val, val
.L153:
# run.c:261:     for (i = 0; i < d; i++) {
	movq	-192(%rbp), %rax	# %sfp, _8
# run.c:266:         xout[i] = val;
	vmovss	%xmm0, (%r8)	# val, MEM[(float *)_2075]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r8	#, ivtmp.1127
	addl	%r11d, %r10d	# dim, ivtmp.1130
	addq	%rax, %rsi	# _8, ivtmp.1131
	cmpq	%rdi, %r8	# _2106, ivtmp.1127
	jne	.L144	#,
	movl	-180(%rbp), %r9d	# %sfp,
	movq	-72(%rbp), %r10	# %sfp, ivtmp.1084
	movl	-96(%rbp), %edx	# %sfp, pretmp_1149
	movq	-104(%rbp), %rbx	# %sfp, pretmp_1350
	movl	-136(%rbp), %r15d	# %sfp, tmp1708
	testl	%r9d, %r9d	#
	jle	.L502	#,
.L162:
	movl	%edx, -96(%rbp)	# pretmp_1149, %sfp
# run.c:262:         float val = 0.0f;
	movq	%r10, %r9	# ivtmp.1084, ivtmp.1113
	xorl	%ecx, %ecx	# ivtmp.1115
# run.c:261:     for (i = 0; i < d; i++) {
	xorl	%r12d, %r12d	# i
	movq	%r10, -72(%rbp)	# ivtmp.1084, %sfp
	movq	-336(%rbp), %r10	# %sfp, ivtmp.1163
	movl	%r15d, -104(%rbp)	# tmp1708, %sfp
	movl	-220(%rbp), %r15d	# %sfp, _700
	.p2align 4,,10
	.p2align 3
.L161:
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r11d, %r11d	# dim
	jle	.L171	#,
	cmpl	$6, -116(%rbp)	#, %sfp
	jbe	.L337	#,
	movslq	%ecx, %rax	# ivtmp.1115, _273
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
	addq	%r10, %rax	# ivtmp.1163, tmp1846
	leaq	(%rbx,%rax,4), %rdx	#, vectp.702
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.1105
	.p2align 4,,10
	.p2align 3
.L165:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%rdx,%rax), %ymm7	# MEM <vector(8) float> [(float *)vectp.702_2409 + ivtmp.1105_2213 * 1], tmp3056
	vmulps	0(%r13,%rax), %ymm7, %ymm2	# MEM <vector(8) float> [(float *)_14 + ivtmp.1105_2213 * 1], tmp3056, vect__283.707
	addq	$32, %rax	#, ivtmp.1105
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_285.708, val, stmp_val_285.708
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp1850, tmp1850, stmp_val_285.708
	vshufps	$255, %xmm2, %xmm2, %xmm3	#, tmp1850, tmp1850, stmp_val_285.708
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_285.708, stmp_val_285.708, stmp_val_285.708
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp1850, tmp1850, stmp_val_285.708
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_285.708, stmp_val_285.708, stmp_val_285.708
	vextractf128	$0x1, %ymm2, %xmm1	# vect__283.707, tmp1854
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp1854, tmp1854, stmp_val_285.708
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_285.708, stmp_val_285.708, stmp_val_285.708
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_285.708, stmp_val_285.708, stmp_val_285.708
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_285.708, stmp_val_285.708, stmp_val_285.708
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp1854, tmp1854, stmp_val_285.708
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp1854, tmp1854, stmp_val_285.708
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_285.708, stmp_val_285.708, stmp_val_285.708
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_285.708, stmp_val_285.708, val
	cmpq	%rax, %r14	# ivtmp.1105, _1954
	jne	.L165	#,
	cmpl	%r15d, %r11d	# _700, dim
	je	.L171	#,
	movl	%r15d, %edx	# _700,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r15d, %eax	# _700, tmp.712
.L164:
	movl	%r11d, %r8d	# dim, niters.709
	subl	%edx, %r8d	# _2407, niters.709
	leal	-1(%r8), %esi	#, tmp1860
	cmpl	$2, %esi	#, tmp1860
	jbe	.L167	#,
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	(%r10,%rdx), %rsi	#, tmp1862
	movslq	%ecx, %rdi	# ivtmp.1115, _273
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	0(%r13,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp.717_2476], vect__2394.718
	movl	%r8d, %edx	# niters.709, niters_vector_mult_vf.711
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%rdi, %rsi	# _273, tmp1863
	andl	$-4, %edx	#, niters_vector_mult_vf.711
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%rbx,%rsi,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.714_2467], vect__2394.718, vect__2395.719
	addl	%edx, %eax	# niters_vector_mult_vf.711, tmp.712
	andl	$3, %r8d	#, niters.709
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_2396.720, val, stmp_val_2396.720
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__2395.719, vect__2395.719, stmp_val_2396.720
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_2396.720, stmp_val_2396.720, stmp_val_2396.720
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__2395.719, vect__2395.719, stmp_val_2396.720
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__2395.719, vect__2395.719, stmp_val_2396.720
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_2396.720, stmp_val_2396.720, stmp_val_2396.720
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_2396.720, stmp_val_2396.720, val
	je	.L171	#,
.L167:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rcx,%rax), %edx	#, tmp1871
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %rsi	# tmp.712, tmp.712
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp1871, tmp1872
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%rsi,4), %rdi	#, _1946
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rdx	# ivtmp.1163, tmp1873
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rbx,%rdx,4), %xmm1	# *_1943, *_1943
	vmulss	0(%r13,%rsi,4), %xmm1, %xmm1	# *_1947, *_1943, tmp1874
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %edx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1874, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L171	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %edx	# ivtmp.1115, tmp1876
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp1876, tmp1877
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rdx	# ivtmp.1163, tmp1878
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rbx,%rdx,4), %xmm1	# *_2438, *_2438
	vmulss	4(%r13,%rdi), %xmm1, %xmm1	# *_2195, *_2438, tmp1879
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1879, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r11d	# j, dim
	jle	.L171	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %eax	# ivtmp.1115, tmp1881
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rax	# ivtmp.1163, tmp1883
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rbx,%rax,4), %xmm1	# *_2447, *_2447
	vmulss	8(%r13,%rdi), %xmm1, %xmm1	# *_2451, *_2447, tmp1884
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1884, val, val
.L171:
# run.c:266:         xout[i] = val;
	vmovss	%xmm0, (%r9)	# val, *_289
# run.c:261:     for (i = 0; i < d; i++) {
	addl	$1, %r12d	#, i
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r9	#, ivtmp.1113
	addl	%r11d, %ecx	# dim, ivtmp.1115
	cmpl	%r12d, -180(%rbp)	# i, %sfp
	jg	.L161	#,
# run.c:303:         matmul(s->v, s->xb, w->wv + l*dim*kv_dim, dim, kv_dim);
	movl	-104(%rbp), %r15d	# %sfp, tmp1708
	movq	-128(%rbp), %rax	# %sfp, transformer
	xorl	%ecx, %ecx	# ivtmp.1101
# run.c:261:     for (i = 0; i < d; i++) {
	xorl	%ebx, %ebx	# i
	movq	-64(%rbp), %r12	# %sfp, ivtmp.1099
	movq	-336(%rbp), %r10	# %sfp, ivtmp.1163
	movl	%r15d, -64(%rbp)	# tmp1708, %sfp
# run.c:303:         matmul(s->v, s->xb, w->wv + l*dim*kv_dim, dim, kv_dim);
	movq	72(%rax), %r9	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wv, _42
	movl	-220(%rbp), %r15d	# %sfp, _700
	.p2align 4,,10
	.p2align 3
.L172:
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r11d, %r11d	# dim
	jle	.L180	#,
	cmpl	$6, -116(%rbp)	#, %sfp
	jbe	.L338	#,
	movslq	%ecx, %rax	# ivtmp.1101, _254
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
	addq	%r10, %rax	# ivtmp.1163, tmp1887
	leaq	(%r9,%rax,4), %rdx	#, vectp.678
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.1091
	.p2align 4,,10
	.p2align 3
.L174:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%rdx,%rax), %ymm5	# MEM <vector(8) float> [(float *)vectp.678_2296 + ivtmp.1091_2150 * 1], tmp3062
	vmulps	0(%r13,%rax), %ymm5, %ymm2	# MEM <vector(8) float> [(float *)_14 + ivtmp.1091_2150 * 1], tmp3062, vect__264.683
	addq	$32, %rax	#, ivtmp.1091
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_266.684, val, stmp_val_266.684
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp1891, tmp1891, stmp_val_266.684
	vshufps	$255, %xmm2, %xmm2, %xmm3	#, tmp1891, tmp1891, stmp_val_266.684
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_266.684, stmp_val_266.684, stmp_val_266.684
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp1891, tmp1891, stmp_val_266.684
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_266.684, stmp_val_266.684, stmp_val_266.684
	vextractf128	$0x1, %ymm2, %xmm1	# vect__264.683, tmp1895
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp1895, tmp1895, stmp_val_266.684
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_266.684, stmp_val_266.684, stmp_val_266.684
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_266.684, stmp_val_266.684, stmp_val_266.684
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_266.684, stmp_val_266.684, stmp_val_266.684
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp1895, tmp1895, stmp_val_266.684
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp1895, tmp1895, stmp_val_266.684
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_266.684, stmp_val_266.684, stmp_val_266.684
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_266.684, stmp_val_266.684, val
	cmpq	%rax, %r14	# ivtmp.1091, _1954
	jne	.L174	#,
	cmpl	%r15d, %r11d	# _700, dim
	je	.L180	#,
	movl	%r15d, %edx	# _700,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r15d, %eax	# _700, tmp.688
.L173:
	movl	%r11d, %r8d	# dim, niters.685
	subl	%edx, %r8d	# _2294, niters.685
	leal	-1(%r8), %esi	#, tmp1901
	cmpl	$2, %esi	#, tmp1901
	jbe	.L176	#,
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	(%r10,%rdx), %rsi	#, tmp1903
	movslq	%ecx, %rdi	# ivtmp.1101, _254
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	0(%r13,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp.693_2363], vect__2281.694
	movl	%r8d, %edx	# niters.685, niters_vector_mult_vf.687
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%rdi, %rsi	# _254, tmp1904
	andl	$-4, %edx	#, niters_vector_mult_vf.687
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%r9,%rsi,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.690_2354], vect__2281.694, vect__2282.695
	addl	%edx, %eax	# niters_vector_mult_vf.687, tmp.688
	andl	$3, %r8d	#, niters.685
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_2283.696, val, stmp_val_2283.696
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__2282.695, vect__2282.695, stmp_val_2283.696
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_2283.696, stmp_val_2283.696, stmp_val_2283.696
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__2282.695, vect__2282.695, stmp_val_2283.696
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__2282.695, vect__2282.695, stmp_val_2283.696
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_2283.696, stmp_val_2283.696, stmp_val_2283.696
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_2283.696, stmp_val_2283.696, val
	je	.L180	#,
.L176:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rcx,%rax), %edx	#, tmp1912
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %rsi	# tmp.688, tmp.688
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp1912, tmp1913
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%rsi,4), %rdi	#, _476
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rdx	# ivtmp.1163, tmp1914
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r9,%rdx,4), %xmm1	# *_862, *_862
	vmulss	0(%r13,%rsi,4), %xmm1, %xmm1	# *_477, *_862, tmp1915
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %edx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1915, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L180	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %edx	# ivtmp.1101, tmp1917
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp1917, tmp1918
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rdx	# ivtmp.1163, tmp1919
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r9,%rdx,4), %xmm1	# *_628, *_628
	vmulss	4(%r13,%rdi), %xmm1, %xmm1	# *_109, *_628, tmp1920
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1920, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%r11d, %eax	# dim, j
	jge	.L180	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %eax	# ivtmp.1101, tmp1922
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rax	# ivtmp.1163, tmp1924
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r9,%rax,4), %xmm1	# *_2334, *_2334
	vmulss	8(%r13,%rdi), %xmm1, %xmm1	# *_2338, *_2334, tmp1925
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp1925, val, val
.L180:
# run.c:266:         xout[i] = val;
	vmovss	%xmm0, (%r12)	# val, *_270
# run.c:261:     for (i = 0; i < d; i++) {
	addl	$1, %ebx	#, i
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r12	#, ivtmp.1099
	addl	%r11d, %ecx	# dim, ivtmp.1101
	cmpl	%ebx, -180(%rbp)	# i, %sfp
	jg	.L172	#,
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	movq	-72(%rbp), %r10	# %sfp, ivtmp.1084
	movl	-96(%rbp), %edx	# %sfp, pretmp_1149
	movl	-64(%rbp), %r15d	# %sfp, tmp1708
	testl	%r11d, %r11d	# dim
	jle	.L160	#,
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vxorps	%xmm4, %xmm4, %xmm4	# tmp3072
	movl	-180(%rbp), %eax	# %sfp, tmp1704
	movq	%r13, -200(%rbp)	# prephitmp_445, %sfp
	leaq	-56(%rbp), %rbx	#, tmp2485
	vcvtsi2ssl	%r15d, %xmm4, %xmm0	# tmp1708, tmp3072, tmp2521
	movq	%r14, -216(%rbp)	# _1954, %sfp
	vmovss	.LC7(%rip), %xmm7	#, tmp2481
	movq	%r10, %r13	# ivtmp.1084, ivtmp.1084
	cmpl	%eax, %r11d	# tmp1704, dim
	vmovss	.LC8(%rip), %xmm5	#, tmp2482
	movl	%r11d, -176(%rbp)	# dim, %sfp
	cmovle	%r11d, %eax	# dim,, _1286
	movl	%edx, -208(%rbp)	# pretmp_1149, %sfp
	movq	-168(%rbp), %rcx	# %sfp, ivtmp.1083
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	xorl	%r8d, %r8d	# i
	vmovss	%xmm7, -64(%rbp)	# tmp2481, %sfp
	movl	%r8d, %r14d	# i, i
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	%xmm0, -72(%rbp)	# tmp2521, %sfp
	vcvtsi2ssl	-120(%rbp), %xmm4, %xmm0	# %sfp, tmp3078, tmp2522
	movq	%rcx, %r12	# ivtmp.1083, ivtmp.1083
	movl	%eax, -144(%rbp)	# _1286, %sfp
	leaq	-52(%rbp), %rax	#, tmp2486
	movq	%rax, -136(%rbp)	# tmp2486, %sfp
	vmovss	%xmm5, -96(%rbp)	# tmp2482, %sfp
	vmovss	%xmm0, -104(%rbp)	# tmp2522, %sfp
	vzeroupper
.L182:
# run.c:307:             int head_dim = i % head_size;
	movl	%r14d, %eax	# i, tmp1929
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	-96(%rbp), %xmm0	# %sfp,
	vxorps	%xmm4, %xmm4, %xmm4	# tmp3081
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addl	$2, %r14d	#, i
# run.c:307:             int head_dim = i % head_size;
	cltd
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addq	$8, %r12	#, ivtmp.1083
	addq	$8, %r13	#, ivtmp.1084
# run.c:307:             int head_dim = i % head_size;
	idivl	%r15d	# tmp1708
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vcvtsi2ssl	%edx, %xmm4, %xmm1	# head_dim, tmp3081, tmp2523
	vdivss	-72(%rbp), %xmm1, %xmm1	# %sfp, tmp1930,
	call	powf@PLT	#
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	-64(%rbp), %xmm4	# %sfp, tmp2481
	movq	-136(%rbp), %rdi	# %sfp,
	movq	%rbx, %rsi	# tmp2485,
	vdivss	%xmm0, %xmm4, %xmm0	# tmp2510, tmp2481, freq
# run.c:309:             float val = pos * freq;
	vmulss	-104(%rbp), %xmm0, %xmm0	# %sfp, freq, val
	call	sincosf@PLT	#
	vmovss	-56(%rbp), %xmm4	#, sincostmp_2285
	vmovss	-52(%rbp), %xmm3	#, sincostmp_2285
# run.c:315:                 float v0 = vec[i];
	vmovss	-8(%r12), %xmm2	# MEM[(float *)_1238], v0
# run.c:316:                 float v1 = vec[i+1];
	vmovss	-4(%r12), %xmm0	# MEM[(float *)_1238 + 4B], v1
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	movl	-144(%rbp), %eax	# %sfp, _1286
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm3, %xmm0, %xmm5	# sincostmp_2285, v1, tmp1941
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm4, %xmm2, %xmm1	# sincostmp_2285, v0, tmp1940
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm4, %xmm0, %xmm0	# sincostmp_2285, v1, tmp1943
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm3, %xmm2, %xmm2	# sincostmp_2285, v0, tmp1944
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vsubss	%xmm5, %xmm1, %xmm1	# tmp1941, tmp1940, tmp1942
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vaddss	%xmm2, %xmm0, %xmm0	# tmp1944, tmp1943, tmp1945
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vunpcklps	%xmm0, %xmm1, %xmm1	# tmp1945, tmp1942, tmp1939
	vmovlps	%xmm1, -8(%r12)	# tmp1939, MEM <vector(2) float> [(float *)_1238]
# run.c:315:                 float v0 = vec[i];
	vmovss	-8(%r13), %xmm2	# *_1234, v0
# run.c:316:                 float v1 = vec[i+1];
	vmovss	-4(%r13), %xmm0	# *_1232, v1
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm4, %xmm2, %xmm1	# sincostmp_2285, v0, tmp1947
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm3, %xmm0, %xmm5	# sincostmp_2285, v1, tmp1948
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm3, %xmm2, %xmm2	# sincostmp_2285, v0, tmp1951
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm4, %xmm0, %xmm0	# sincostmp_2285, v1, tmp1950
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vsubss	%xmm5, %xmm1, %xmm1	# tmp1948, tmp1947, tmp1949
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vaddss	%xmm2, %xmm0, %xmm0	# tmp1951, tmp1950, tmp1952
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vunpcklps	%xmm0, %xmm1, %xmm1	# tmp1952, tmp1949, tmp1946
	vmovlps	%xmm1, -8(%r13)	# tmp1946, MEM <vector(2) float> [(float *)_1234]
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	cmpl	%eax, %r14d	# _1286, i
	jl	.L182	#,
	movl	-176(%rbp), %r11d	# %sfp, dim
	movl	%r14d, %r8d	# i, i
	movq	-200(%rbp), %r13	# %sfp, prephitmp_445
	movl	-208(%rbp), %edx	# %sfp, pretmp_1149
	movq	-216(%rbp), %r14	# %sfp, _1954
	cmpl	%r8d, %r11d	# i, dim
	jle	.L185	#,
.L181:
	movl	%edx, -176(%rbp)	# pretmp_1149, %sfp
	movslq	%r8d, %rcx	# i, ivtmp.1070
	movq	%r14, -200(%rbp)	# _1954, %sfp
	movq	-168(%rbp), %r14	# %sfp, pretmp_1147
	movq	%rcx, %r12	# ivtmp.1070, ivtmp.1070
	movq	%r13, -144(%rbp)	# prephitmp_445, %sfp
	movl	%r11d, %r13d	# dim, dim
	.p2align 4,,10
	.p2align 3
.L184:
# run.c:307:             int head_dim = i % head_size;
	movl	%r12d, %eax	# ivtmp.1070, tmp1956
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	-96(%rbp), %xmm0	# %sfp,
	vxorps	%xmm4, %xmm4, %xmm4	# tmp3087
# run.c:307:             int head_dim = i % head_size;
	cltd
	idivl	%r15d	# tmp1708
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vcvtsi2ssl	%edx, %xmm4, %xmm1	# head_dim, tmp3087, tmp2524
	vdivss	-72(%rbp), %xmm1, %xmm1	# %sfp, tmp1957,
	call	powf@PLT	#
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vmovss	-64(%rbp), %xmm5	# %sfp, tmp2481
	movq	-136(%rbp), %rdi	# %sfp,
	movq	%rbx, %rsi	# tmp2485,
	vdivss	%xmm0, %xmm5, %xmm0	# tmp2511, tmp2481, freq
# run.c:309:             float val = pos * freq;
	vmulss	-104(%rbp), %xmm0, %xmm0	# %sfp, freq, val
	call	sincosf@PLT	#
# run.c:315:                 float v0 = vec[i];
	vmovss	(%r14,%r12,4), %xmm2	# MEM[(float *)_37 + ivtmp.1070_869 * 4], v0
	vmovss	-56(%rbp), %xmm4	#, sincostmp_415
# run.c:316:                 float v1 = vec[i+1];
	vmovss	4(%r14,%r12,4), %xmm0	# MEM[(float *)_37 + 4B + ivtmp.1070_869 * 4], v1
	vmovss	-52(%rbp), %xmm3	#, sincostmp_415
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm4, %xmm2, %xmm1	# sincostmp_415, v0, tmp1967
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vmulss	%xmm3, %xmm0, %xmm5	# sincostmp_415, v1, tmp1968
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm3, %xmm2, %xmm2	# sincostmp_415, v0, tmp1971
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vmulss	%xmm4, %xmm0, %xmm0	# sincostmp_415, v1, tmp1970
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vsubss	%xmm5, %xmm1, %xmm1	# tmp1968, tmp1967, tmp1969
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	vaddss	%xmm2, %xmm0, %xmm0	# tmp1971, tmp1970, tmp1972
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	vunpcklps	%xmm0, %xmm1, %xmm1	# tmp1972, tmp1969, tmp1966
	vmovlps	%xmm1, (%r14,%r12,4)	# tmp1966, MEM <vector(2) float> [(float *)_37 + ivtmp.1070_869 * 4]
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addq	$2, %r12	#, ivtmp.1070
	cmpl	%r12d, %r13d	# ivtmp.1070, dim
	jg	.L184	#,
	movl	%r13d, %r11d	# dim, dim
	movl	-176(%rbp), %edx	# %sfp, pretmp_1149
	movq	-144(%rbp), %r13	# %sfp, prephitmp_445
	movq	-200(%rbp), %r14	# %sfp, _1954
.L185:
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movq	-128(%rbp), %rax	# %sfp, transformer
	movl	12(%rax), %edi	# MEM[(struct Config *)transformer_180(D)].n_heads,
	testl	%edi, %edi	#
	jle	.L503	#,
.L188:
	movq	-408(%rbp), %rax	# %sfp, _2442
	movl	%r11d, -428(%rbp)	# dim, %sfp
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	xorl	%r13d, %r13d	# ivtmp.1064
	movq	%r14, -440(%rbp)	# _1954, %sfp
	movq	-128(%rbp), %r11	# %sfp, transformer
	movq	%r13, %rcx	# ivtmp.1064, ivtmp.1064
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movl	$0, -144(%rbp)	#, %sfp
	addq	$1, %rax	#, tmp2495
	movq	-168(%rbp), %rdi	# %sfp, pretmp_1147
	movq	-416(%rbp), %r14	# %sfp, _538
	movq	-424(%rbp), %r12	# %sfp, _2479
	movq	%rax, -256(%rbp)	# tmp2495, %sfp
	movl	%edx, %eax	# pretmp_1149, pretmp_1149
	.p2align 4,,10
	.p2align 3
.L187:
# run.c:329:             float* att = s->att + h * p->seq_len;
	movl	-144(%rbp), %edx	# %sfp, h
	leaq	0(,%rcx,4), %rbx	#, _2343
	movq	%rbx, -104(%rbp)	# _2343, %sfp
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	192(%r11), %rbx	# MEM[(struct RunState *)transformer_180(D) + 128B].att, _68
# run.c:329:             float* att = s->att + h * p->seq_len;
	imull	%edx, %eax	# h, tmp1973
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rbx, -168(%rbp)	# _68, %sfp
# run.c:329:             float* att = s->att + h * p->seq_len;
	movslq	%eax, %rsi	# tmp1973, _71
# run.c:329:             float* att = s->att + h * p->seq_len;
	leaq	(%rbx,%rsi,4), %rbx	#, att
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rsi, -176(%rbp)	# _71, %sfp
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movl	-120(%rbp), %esi	# %sfp,
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rbx, -136(%rbp)	# att, %sfp
# run.c:331:             for (int t = 0; t <= pos; t++) {
	testl	%esi, %esi	#
	js	.L190	#,
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movl	%edx, %eax	# h, tmp1976
# run.c:339:                 score /= sqrtf(head_size);
	vxorps	%xmm7, %xmm7, %xmm7	# tmp3107
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movq	208(%r11), %r10	# MEM[(struct RunState *)transformer_180(D) + 128B].key_cache, pretmp_1157
	movq	%rbx, %r8	# att, ivtmp.1016
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	cltd
# run.c:339:                 score /= sqrtf(head_size);
	vcvtsi2ssl	%r15d, %xmm7, %xmm2	# tmp1708, tmp3107, tmp2525
	movq	%rbx, %r9	# att, att
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	idivl	-244(%rbp)	# %sfp
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	imull	%r15d, %eax	# tmp1708, tmp1978
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movslq	%eax, %r13	# tmp1978, tmp1979
	movq	-240(%rbp), %rax	# %sfp, _24
	addq	%rax, %r13	# _24, ivtmp.1018
	movq	-256(%rbp), %rax	# %sfp, tmp2495
	leaq	(%rbx,%rax,4), %rax	#, _2344
	movq	%rax, -64(%rbp)	# _2344, %sfp
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	testl	%r15d, %r15d	# tmp1708
	jle	.L339	#,
	movq	%r13, %rbx	# ivtmp.1018, ivtmp.1055
.L202:
	cmpl	$6, -88(%rbp)	#, %sfp
	jbe	.L340	#,
	.p2align 4,,10
	.p2align 3
.L505:
	movq	-104(%rbp), %rax	# %sfp, _2343
	leaq	(%r10,%rbx,4), %rdx	#, vectp.657
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
	leaq	(%rdi,%rax), %rsi	#, vectp.654
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	xorl	%eax, %eax	# ivtmp.1044
	.p2align 4,,10
	.p2align 3
.L193:
# run.c:337:                     score += q[i] * k[i];
	vmovups	(%rsi,%rax), %ymm6	# MEM <vector(8) float> [(float *)vectp.654_2160 + ivtmp.1044_2458 * 1], tmp3114
	vmulps	(%rdx,%rax), %ymm6, %ymm5	# MEM <vector(8) float> [(float *)vectp.657_2166 + ivtmp.1044_2458 * 1], tmp3114, vect__86.659
	addq	$32, %rax	#, ivtmp.1044
	vaddss	%xmm5, %xmm1, %xmm1	# stmp_score_233.660, score, stmp_score_233.660
	vshufps	$85, %xmm5, %xmm5, %xmm0	#, tmp1985, tmp1985, stmp_score_233.660
	vshufps	$255, %xmm5, %xmm5, %xmm3	#, tmp1985, tmp1985, stmp_score_233.660
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_233.660, stmp_score_233.660, stmp_score_233.660
	vunpckhps	%xmm5, %xmm5, %xmm0	# tmp1985, tmp1985, stmp_score_233.660
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_233.660, stmp_score_233.660, stmp_score_233.660
	vextractf128	$0x1, %ymm5, %xmm0	# vect__86.659, tmp1989
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_score_233.660, stmp_score_233.660, stmp_score_233.660
	vshufps	$85, %xmm0, %xmm0, %xmm3	#, tmp1989, tmp1989, stmp_score_233.660
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_233.660, stmp_score_233.660, stmp_score_233.660
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_score_233.660, stmp_score_233.660, stmp_score_233.660
	vunpckhps	%xmm0, %xmm0, %xmm3	# tmp1989, tmp1989, stmp_score_233.660
# run.c:337:                     score += q[i] * k[i];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, tmp1989, tmp1989, stmp_score_233.660
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_score_233.660, stmp_score_233.660, stmp_score_233.660
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_233.660, stmp_score_233.660, score
	cmpq	%r12, %rax	# _2479, ivtmp.1044
	jne	.L193	#,
	movl	-84(%rbp), %edx	# %sfp, _1960
	movl	%edx, %eax	# _1960,
	cmpl	%eax, %r15d	# _1960, tmp1708
	je	.L191	#,
.L192:
	movl	%r15d, %esi	# tmp1708, niters.661
	subl	%eax, %esi	# _2158, niters.661
	leal	-1(%rsi), %r11d	#, tmp1995
	cmpl	$2, %r11d	#, tmp1995
	jbe	.L196	#,
# run.c:337:                     score += q[i] * k[i];
	leaq	(%rax,%rcx), %r11	#, tmp1996
# run.c:337:                     score += q[i] * k[i];
	addq	%rbx, %rax	# ivtmp.1055, tmp1998
	vmovups	(%r10,%rax,4), %xmm0	# MEM <vector(4) float> [(float *)vectp.669_2231], vect__2145.670
# run.c:337:                     score += q[i] * k[i];
	vmulps	(%rdi,%r11,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp.666_2223], vect__2145.670, vect__2146.671
	movl	%esi, %eax	# niters.661, niters_vector_mult_vf.663
	andl	$-4, %eax	#, niters_vector_mult_vf.663
	addl	%eax, %edx	# niters_vector_mult_vf.663, tmp.664
	andl	$3, %esi	#, niters.661
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_2147.672, score, stmp_score_2147.672
	vshufps	$85, %xmm0, %xmm0, %xmm3	#, vect__2146.671, vect__2146.671, stmp_score_2147.672
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_score_2147.672, stmp_score_2147.672, stmp_score_2147.672
	vunpckhps	%xmm0, %xmm0, %xmm3	# vect__2146.671, vect__2146.671, stmp_score_2147.672
# run.c:337:                     score += q[i] * k[i];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, vect__2146.671, vect__2146.671, stmp_score_2147.672
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_score_2147.672, stmp_score_2147.672, stmp_score_2147.672
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_score_2147.672, stmp_score_2147.672, score
	je	.L191	#,
.L196:
# run.c:337:                     score += q[i] * k[i];
	movslq	%edx, %rax	# tmp.664, _334
	leaq	(%rax,%rcx), %rsi	#, tmp2004
# run.c:337:                     score += q[i] * k[i];
	addq	%rbx, %rax	# ivtmp.1055, tmp2005
# run.c:337:                     score += q[i] * k[i];
	vmovss	(%rdi,%rsi,4), %xmm0	# *_335, *_335
	vmulss	(%r10,%rax,4), %xmm0, %xmm0	# *_339, *_335, tmp2006
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	leal	1(%rdx), %eax	#, i
# run.c:337:                     score += q[i] * k[i];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2006, score, score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	cmpl	%eax, %r15d	# i, tmp1708
	jle	.L191	#,
# run.c:337:                     score += q[i] * k[i];
	cltq
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	addl	$2, %edx	#, i
# run.c:337:                     score += q[i] * k[i];
	leaq	(%rbx,%rax), %rsi	#, tmp2008
# run.c:337:                     score += q[i] * k[i];
	addq	%rcx, %rax	# ivtmp.1064, tmp2009
# run.c:337:                     score += q[i] * k[i];
	vmovss	(%r10,%rsi,4), %xmm0	# *_142, *_142
	vmulss	(%rdi,%rax,4), %xmm0, %xmm0	# *_1717, *_142, tmp2010
# run.c:337:                     score += q[i] * k[i];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2010, score, score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	cmpl	%r15d, %edx	# tmp1708, i
	jge	.L191	#,
# run.c:337:                     score += q[i] * k[i];
	movslq	%edx, %rdx	# i, _2200
	leaq	(%rdx,%rcx), %rax	#, tmp2012
# run.c:337:                     score += q[i] * k[i];
	addq	%rbx, %rdx	# ivtmp.1055, tmp2013
# run.c:337:                     score += q[i] * k[i];
	vmovss	(%rdi,%rax,4), %xmm0	# *_2203, *_2203
	vmulss	(%r10,%rdx,4), %xmm0, %xmm0	# *_2207, *_2203, tmp2014
# run.c:337:                     score += q[i] * k[i];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2014, score, score
.L191:
	vxorps	%xmm0, %xmm0, %xmm0	# tmp2016
	vucomiss	%xmm2, %xmm0	# _87, tmp2016
	ja	.L487	#,
.L513:
	vsqrtss	%xmm2, %xmm2, %xmm0	# _87, _229
.L203:
# run.c:339:                 score /= sqrtf(head_size);
	vdivss	%xmm0, %xmm1, %xmm1	# _229, score, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movq	-80(%rbp), %rax	# %sfp, _1039
	addq	$4, %r9	#, ivtmp.1052
	addq	%rax, %rbx	# _1039, ivtmp.1055
# run.c:341:                 att[t] = score;
	vmovss	%xmm1, -4(%r9)	# score, MEM[(float *)_1334]
# run.c:331:             for (int t = 0; t <= pos; t++) {
	cmpq	%r9, -64(%rbp)	# ivtmp.1052, %sfp
	je	.L504	#,
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	testl	%r15d, %r15d	# tmp1708
	jle	.L203	#,
	cmpl	$6, -88(%rbp)	#, %sfp
	ja	.L505	#,
.L340:
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	xorl	%eax, %eax	#
	xorl	%edx, %edx	# tmp.664
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
	jmp	.L192	#
	.p2align 4,,10
	.p2align 3
.L504:
	vzeroupper
.L201:
# run.c:206:     float max_val = x[0];
	movq	-136(%rbp), %rax	# %sfp, att
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpl	$1, -184(%rbp)	#, %sfp
# run.c:206:     float max_val = x[0];
	vmovss	(%rax), %xmm1	# *att_215, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	jle	.L205	#,
	movq	-272(%rbp), %rbx	# %sfp, _2408
	leaq	(%rax,%rbx), %rdx	#, _2457
	.p2align 4,,10
	.p2align 3
.L207:
# run.c:208:         if (x[i] > max_val) {
	vmovss	4(%rax), %xmm0	# MEM[(float *)_2555 + 4B], _1281
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.1038
# run.c:209:             max_val = x[i];
	vmaxss	%xmm1, %xmm0, %xmm1	# max_val, _1281, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rdx, %rax	# _2457, ivtmp.1038
	jne	.L207	#,
.L205:
# run.c:209:             max_val = x[i];
	movq	-136(%rbp), %rbx	# %sfp, ivtmp.1032
# run.c:213:     float sum = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# sum
	vmovss	%xmm1, -96(%rbp)	# max_val, %sfp
	movq	%rcx, -200(%rbp)	# ivtmp.1064, %sfp
	movq	%r8, -216(%rbp)	# ivtmp.1016, %sfp
	movq	%r12, -208(%rbp)	# _2479, %sfp
	movq	%rbx, %r12	# ivtmp.1032, ivtmp.1032
	movq	-64(%rbp), %rbx	# %sfp, _2344
	.p2align 4,,10
	.p2align 3
.L208:
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	(%r12), %xmm0	# MEM[(float *)_2497], MEM[(float *)_2497]
	vsubss	-96(%rbp), %xmm0, %xmm0	# %sfp, MEM[(float *)_2497], tmp2025
	vmovss	%xmm2, -72(%rbp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %r12	#, ivtmp.1032
# run.c:215:         x[i] = expf(x[i] - max_val);
	call	expf@PLT	#
# run.c:216:         sum += x[i];
	vmovss	-72(%rbp), %xmm2	# %sfp, sum
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	%xmm0, -4(%r12)	# _470, MEM[(float *)_2497]
# run.c:216:         sum += x[i];
	vaddss	%xmm0, %xmm2, %xmm2	# _470, sum, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	cmpq	%r12, %rbx	# ivtmp.1032, _2344
	jne	.L208	#,
	cmpl	$6, -120(%rbp)	#, %sfp
	movq	-200(%rbp), %rcx	# %sfp, ivtmp.1064
	movq	-208(%rbp), %r12	# %sfp, _2479
	movq	-216(%rbp), %r8	# %sfp, ivtmp.1016
	jbe	.L342	#,
	movq	-136(%rbp), %rax	# %sfp, att
	movq	-280(%rbp), %rbx	# %sfp, _2683
	vshufps	$0, %xmm2, %xmm2, %xmm1	# sum, vect_cst__2081
	vinsertf128	$1, %xmm1, %ymm1, %ymm1	# vect_cst__2081, vect_cst__2081
	leaq	(%rax,%rbx), %rdx	#, _2521
	.p2align 4,,10
	.p2align 3
.L210:
# run.c:220:         x[i] /= sum;
	vmovups	(%rax), %ymm4	# MEM <vector(8) float> [(float *)_2731], tmp3132
	addq	$32, %rax	#, ivtmp.1025
	vdivps	%ymm1, %ymm4, %ymm0	# vect_cst__2081, tmp3132, vect__480.636
	vmovups	%ymm0, -32(%rax)	# vect__480.636, MEM <vector(8) float> [(float *)_2731]
	cmpq	%rax, %rdx	# ivtmp.1025, _2521
	jne	.L210	#,
	testb	$7, -184(%rbp)	#, %sfp
	je	.L498	#,
	movl	-248(%rbp), %edx	# %sfp, niters_vector_mult_vf.631
	movl	%edx, %eax	# niters_vector_mult_vf.631,
	vzeroupper
.L209:
	movl	-120(%rbp), %edi	# %sfp, _2094
	subl	%eax, %edi	# _2073, _2094
	leal	1(%rdi), %esi	#, niters.639
	cmpl	$2, %edi	#, _2094
	jbe	.L212	#,
	movq	-176(%rbp), %rbx	# %sfp, _71
	vshufps	$0, %xmm2, %xmm2, %xmm0	# sum, tmp2035
	addq	%rbx, %rax	# _71, tmp2032
	movq	-168(%rbp), %rbx	# %sfp, _68
	leaq	(%rbx,%rax,4), %rax	#, vectp.644
	vmovups	(%rax), %xmm5	# MEM <vector(4) float> [(float *)vectp.644_2114], tmp3137
	vdivps	%xmm0, %xmm5, %xmm0	# tmp2035, tmp3137, vect__2062.646
	vmovups	%xmm0, (%rax)	# vect__2062.646, MEM <vector(4) float> [(float *)vectp.644_2114]
	movl	%esi, %eax	# niters.639, niters_vector_mult_vf.641
	andl	$-4, %eax	#, niters_vector_mult_vf.641
	addl	%eax, %edx	# niters_vector_mult_vf.641, tmp.642
	andl	$3, %esi	#, niters.639
	je	.L211	#,
.L212:
# run.c:220:         x[i] /= sum;
	movq	-136(%rbp), %rbx	# %sfp, att
	movslq	%edx, %rax	# tmp.642, tmp.642
# run.c:219:     for (int i = 0; i < size; i++) {
	movl	-120(%rbp), %edi	# %sfp, pos
# run.c:220:         x[i] /= sum;
	salq	$2, %rax	#, _1611
	leaq	(%rbx,%rax), %rsi	#, _1613
# run.c:220:         x[i] /= sum;
	vmovss	(%rsi), %xmm0	# *_1613, *_1613
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_1613, tmp2040
	vmovss	%xmm0, (%rsi)	# tmp2040, *_1613
# run.c:219:     for (int i = 0; i < size; i++) {
	leal	1(%rdx), %esi	#, i
# run.c:219:     for (int i = 0; i < size; i++) {
	cmpl	%edx, %edi	# tmp.642, pos
	jle	.L211	#,
# run.c:220:         x[i] /= sum;
	leaq	4(%rbx,%rax), %rdx	#, _2279
# run.c:220:         x[i] /= sum;
	vmovss	(%rdx), %xmm0	# *_2279, *_2279
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_2279, tmp2043
	vmovss	%xmm0, (%rdx)	# tmp2043, *_2279
# run.c:219:     for (int i = 0; i < size; i++) {
	cmpl	%esi, %edi	# i, pos
	jle	.L211	#,
# run.c:220:         x[i] /= sum;
	leaq	8(%rbx,%rax), %rax	#, _2099
# run.c:220:         x[i] /= sum;
	vmovss	(%rax), %xmm0	# *_2099, *_2099
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_2099, tmp2046
	vmovss	%xmm0, (%rax)	# tmp2046, *_2099
.L211:
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	-128(%rbp), %rax	# %sfp, transformer
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	-104(%rbp), %rdi	# %sfp, _2343
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	xorl	%esi, %esi	#
	movq	%r14, %rdx	# _538,
	movq	%rcx, -72(%rbp)	# ivtmp.1064, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	136(%rax), %rbx	# MEM[(struct RunState *)transformer_180(D) + 128B].xb, _92
	movq	%r8, -136(%rbp)	# ivtmp.1016, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	addq	%rbx, %rdi	# _92, _2343
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	call	memset@PLT	#
	testl	%r15d, %r15d	# tmp1708
	movq	-72(%rbp), %rcx	# %sfp, ivtmp.1064
	movq	%rax, %rdi	#, xb
# run.c:352:                 float* v = s->value_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	216(%rax), %r10	# MEM[(struct RunState *)transformer_180(D) + 128B].value_cache, _95
	jle	.L204	#,
	movq	%rbx, -96(%rbp)	# _92, %sfp
	movq	-136(%rbp), %r8	# %sfp, ivtmp.1016
	leaq	(%r10,%r13,4), %rax	#, ivtmp.1019
	movl	-88(%rbp), %ebx	# %sfp, _2151
	.p2align 4,,10
	.p2align 3
.L219:
# run.c:354:                 float a = att[t];
	vmovss	(%r8), %xmm1	# MEM[(float *)_2654], a
	cmpl	$2, %ebx	#, _2151
	jbe	.L343	#,
	leaq	4(%rax), %rdx	#, tmp2053
	movq	%rdi, %rsi	# xb, tmp2054
	subq	%rdx, %rsi	# tmp2053, tmp2054
	xorl	%edx, %edx	# ivtmp.1004
	cmpq	$24, %rsi	#, tmp2054
	ja	.L506	#,
	.p2align 4,,10
	.p2align 3
.L223:
# run.c:357:                     xb[i] += a * v[i];
	vmulss	(%rax,%rdx), %xmm1, %xmm0	# MEM[(float *)_50 + ivtmp.1004_53 * 1], a, tmp2087
# run.c:357:                     xb[i] += a * v[i];
	vaddss	(%rdi,%rdx), %xmm0, %xmm0	# MEM[(float *)xb_218 + ivtmp.1004_53 * 1], tmp2087, tmp2088
	vmovss	%xmm0, (%rdi,%rdx)	# tmp2088, MEM[(float *)xb_218 + ivtmp.1004_53 * 1]
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	addq	$4, %rdx	#, ivtmp.1004
	cmpq	%r14, %rdx	# _538, ivtmp.1004
	jne	.L223	#,
.L224:
# run.c:350:             for (int t = 0; t <= pos; t++) {
	movq	-80(%rbp), %rsi	# %sfp, _1039
	addq	$4, %r8	#, ivtmp.1016
	addq	%rsi, %r13	# _1039, ivtmp.1018
	movq	-112(%rbp), %rsi	# %sfp, _2780
	addq	%rsi, %rax	# _2780, ivtmp.1019
	cmpq	%r8, -64(%rbp)	# ivtmp.1016, %sfp
	jne	.L219	#,
.L204:
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movq	-232(%rbp), %rbx	# %sfp, _568
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	addl	$1, -144(%rbp)	#, %sfp
	movl	-144(%rbp), %eax	# %sfp, h
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	addq	%rbx, %rcx	# _568, ivtmp.1064
	movq	-128(%rbp), %rbx	# %sfp, transformer
	cmpl	%eax, 12(%rbx)	# h, MEM[(struct Config *)transformer_180(D)].n_heads
	jle	.L507	#,
# run.c:327:             float* q = s->q + h * head_size;
	movq	168(%rbx), %rdi	# MEM[(struct RunState *)transformer_180(D) + 128B].q, pretmp_1147
# run.c:329:             float* att = s->att + h * p->seq_len;
	movl	24(%rbx), %eax	# MEM[(struct Config *)transformer_180(D)].seq_len, pretmp_1149
	movq	%rbx, %r11	# transformer, transformer
	jmp	.L187	#
	.p2align 4,,10
	.p2align 3
.L506:
	cmpl	$6, %ebx	#, _2151
	jbe	.L345	#,
	vshufps	$0, %xmm1, %xmm1, %xmm2	# a, vect_cst__1980
	vinsertf128	$1, %xmm2, %ymm2, %ymm2	# vect_cst__1980, vect_cst__1980
	.p2align 4,,10
	.p2align 3
.L217:
# run.c:357:                     xb[i] += a * v[i];
	vmulps	(%rax,%rdx), %ymm2, %ymm0	# MEM <vector(8) float> [(float *)vectp.609_1970 + ivtmp.1008_2754 * 1], vect_cst__1980, vect__112.611
# run.c:357:                     xb[i] += a * v[i];
	vaddps	(%rdi,%rdx), %ymm0, %ymm0	# MEM <vector(8) float> [(float *)xb_218 + ivtmp.1008_2754 * 1], vect__112.611, vect__113.612
	vmovups	%ymm0, (%rdi,%rdx)	# vect__113.612, MEM <vector(8) float> [(float *)xb_218 + ivtmp.1008_2754 * 1]
	addq	$32, %rdx	#, ivtmp.1008
	cmpq	%rdx, %r12	# ivtmp.1008, _2479
	jne	.L217	#,
	movl	-84(%rbp), %esi	# %sfp, _1960
	cmpl	%esi, %r15d	# _1960, tmp1708
	je	.L224	#,
	cmpl	$2, -160(%rbp)	#, %sfp
	movl	-156(%rbp), %r9d	# %sfp, niters.615
	jbe	.L346	#,
	movl	%esi, -72(%rbp)	# _1960, %sfp
	movl	%esi, %edx	# _1960,
.L216:
	movq	-96(%rbp), %r11	# %sfp, _92
	leaq	(%rdx,%rcx), %rsi	#, tmp2061
# run.c:357:                     xb[i] += a * v[i];
	addq	%r13, %rdx	# ivtmp.1018, tmp2063
# run.c:357:                     xb[i] += a * v[i];
	vshufps	$0, %xmm1, %xmm1, %xmm0	# a, tmp2065
	vmulps	(%r10,%rdx,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp.623_2027], tmp2065, vect__1949.625
	movl	%r9d, %edx	# niters.615, niters_vector_mult_vf.617
	leaq	(%r11,%rsi,4), %rsi	#, vectp.620
	andl	$-4, %edx	#, niters_vector_mult_vf.617
# run.c:357:                     xb[i] += a * v[i];
	vaddps	(%rsi), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp.620_2019], vect__1949.625, vect__1950.626
	vmovups	%xmm0, (%rsi)	# vect__1950.626, MEM <vector(4) float> [(float *)vectp.620_2019]
	movl	-72(%rbp), %esi	# %sfp, i
	addl	%esi, %edx	# i, tmp.618
	andl	$3, %r9d	#, niters.615
	je	.L224	#,
.L221:
# run.c:357:                     xb[i] += a * v[i];
	movslq	%edx, %rsi	# tmp.618, _264
	leaq	0(,%rsi,4), %r9	#, _267
# run.c:357:                     xb[i] += a * v[i];
	addq	%r13, %rsi	# ivtmp.1018, tmp2071
# run.c:357:                     xb[i] += a * v[i];
	vmulss	(%r10,%rsi,4), %xmm1, %xmm0	# *_784, a, tmp2072
# run.c:357:                     xb[i] += a * v[i];
	leaq	(%rdi,%r9), %r11	#, _789
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	leal	1(%rdx), %esi	#, i
# run.c:357:                     xb[i] += a * v[i];
	vaddss	(%r11), %xmm0, %xmm0	# *_789, tmp2072, tmp2073
	vmovss	%xmm0, (%r11)	# tmp2073, *_789
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	cmpl	%esi, %r15d	# i, tmp1708
	jle	.L224	#,
# run.c:357:                     xb[i] += a * v[i];
	movslq	%esi, %rsi	# i, i
	leaq	4(%rdi,%r9), %r11	#, _118
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	addl	$2, %edx	#, i
# run.c:357:                     xb[i] += a * v[i];
	addq	%r13, %rsi	# ivtmp.1018, tmp2077
# run.c:357:                     xb[i] += a * v[i];
	vmulss	(%r10,%rsi,4), %xmm1, %xmm0	# *_122, a, tmp2078
# run.c:357:                     xb[i] += a * v[i];
	vaddss	(%r11), %xmm0, %xmm0	# *_118, tmp2078, tmp2079
	vmovss	%xmm0, (%r11)	# tmp2079, *_118
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	cmpl	%edx, %r15d	# i, tmp1708
	jle	.L224	#,
# run.c:357:                     xb[i] += a * v[i];
	movslq	%edx, %rdx	# i, i
	leaq	8(%rdi,%r9), %rsi	#, _1998
# run.c:357:                     xb[i] += a * v[i];
	addq	%r13, %rdx	# ivtmp.1018, tmp2083
# run.c:357:                     xb[i] += a * v[i];
	vmulss	(%r10,%rdx,4), %xmm1, %xmm1	# *_2002, a, tmp2084
# run.c:357:                     xb[i] += a * v[i];
	vaddss	(%rsi), %xmm1, %xmm1	# *_1998, tmp2084, tmp2085
	vmovss	%xmm1, (%rsi)	# tmp2085, *_1998
	jmp	.L224	#
	.p2align 4,,10
	.p2align 3
.L343:
# run.c:354:                 float a = att[t];
	xorl	%edx, %edx	# ivtmp.1004
	jmp	.L223	#
.L345:
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	movl	$0, -72(%rbp)	#, %sfp
# run.c:354:                 float a = att[t];
	movl	%r15d, %r9d	# tmp1708, niters.615
	xorl	%edx, %edx	#
	jmp	.L216	#
.L346:
	movl	%esi, %edx	# _1960, tmp.618
	jmp	.L221	#
.L507:
	vmovss	.LC7(%rip), %xmm7	#, tmp2481
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movl	-428(%rbp), %r11d	# %sfp, dim
	movq	-440(%rbp), %r14	# %sfp, _1954
	movq	136(%rbx), %r13	# MEM[(struct RunState *)transformer_180(D) + 128B].xb, prephitmp_445
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	80(%rbx), %rsi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wo, _115
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	144(%rbx), %rcx	# MEM[(struct RunState *)transformer_180(D) + 128B].xb2, _117
	vmovss	%xmm7, -64(%rbp)	# tmp2481, %sfp
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%r11d, %r11d	# dim
	jle	.L186	#,
.L226:
	movq	-264(%rbp), %rax	# %sfp, _9
	movq	%rcx, -72(%rbp)	# _117, %sfp
	movq	%rcx, %r9	# _117, ivtmp.993
# run.c:262:         float val = 0.0f;
	xorl	%ebx, %ebx	# ivtmp.996
	movq	-344(%rbp), %r12	# %sfp, ivtmp.1164
	movl	%r15d, -96(%rbp)	# tmp1708, %sfp
	movl	-220(%rbp), %r10d	# %sfp, _700
	leaq	(%rax,%rcx), %r8	#, _237
	movq	%r12, %rdi	# ivtmp.1164, ivtmp.997
	.p2align 4,,10
	.p2align 3
.L227:
	cmpl	$6, -116(%rbp)	#, %sfp
	jbe	.L347	#,
	leaq	(%rsi,%rdi,4), %rdx	#, vectp.582
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# ivtmp.985
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
	.p2align 4,,10
	.p2align 3
.L231:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%rdx,%rax), %ymm4	# MEM <vector(8) float> [(float *)vectp.582_1819 + ivtmp.985_1130 * 1], tmp3168
	vmulps	0(%r13,%rax), %ymm4, %ymm2	# MEM <vector(8) float> [(float *)prephitmp_445 + ivtmp.985_1130 * 1], tmp3168, vect__321.587
	addq	$32, %rax	#, ivtmp.985
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_323.588, val, stmp_val_323.588
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp2116, tmp2116, stmp_val_323.588
	vshufps	$255, %xmm2, %xmm2, %xmm3	#, tmp2116, tmp2116, stmp_val_323.588
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_323.588, stmp_val_323.588, stmp_val_323.588
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp2116, tmp2116, stmp_val_323.588
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_323.588, stmp_val_323.588, stmp_val_323.588
	vextractf128	$0x1, %ymm2, %xmm1	# vect__321.587, tmp2120
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp2120, tmp2120, stmp_val_323.588
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_323.588, stmp_val_323.588, stmp_val_323.588
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_323.588, stmp_val_323.588, stmp_val_323.588
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_323.588, stmp_val_323.588, stmp_val_323.588
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp2120, tmp2120, stmp_val_323.588
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp2120, tmp2120, stmp_val_323.588
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_323.588, stmp_val_323.588, stmp_val_323.588
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_323.588, stmp_val_323.588, val
	cmpq	%r14, %rax	# _1954, ivtmp.985
	jne	.L231	#,
	cmpl	%r10d, %r11d	# _700, dim
	je	.L228	#,
	movl	%r10d, %edx	# _700,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r10d, %eax	# _700, tmp.592
.L234:
	movl	%r11d, %ecx	# dim, niters.589
	subl	%edx, %ecx	# _1817, niters.589
	leal	-1(%rcx), %r15d	#, tmp2090
	cmpl	$2, %r15d	#, tmp2090
	jbe	.L229	#,
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	(%rdx,%rdi), %r15	#, tmp2091
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	0(%r13,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_prephitmp.597_1886], vect__1804.598
	movl	%ecx, %edx	# niters.589, niters_vector_mult_vf.591
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%rsi,%r15,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.594_1877], vect__1804.598, vect__1805.599
	andl	$-4, %edx	#, niters_vector_mult_vf.591
	addl	%edx, %eax	# niters_vector_mult_vf.591, tmp.592
	andl	$3, %ecx	#, niters.589
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_1806.600, val, stmp_val_1806.600
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__1805.599, vect__1805.599, stmp_val_1806.600
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_1806.600, stmp_val_1806.600, stmp_val_1806.600
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__1805.599, vect__1805.599, stmp_val_1806.600
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__1805.599, vect__1805.599, stmp_val_1806.600
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_1806.600, stmp_val_1806.600, stmp_val_1806.600
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_1806.600, stmp_val_1806.600, val
	je	.L228	#,
.L229:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rbx,%rax), %edx	#, tmp2099
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %rcx	# tmp.592, tmp.592
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp2099, tmp2100
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%rcx,4), %r15	#, _2136
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rdx	# ivtmp.1164, tmp2101
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rsi,%rdx,4), %xmm1	# *_488, *_488
	vmulss	0(%r13,%rcx,4), %xmm1, %xmm1	# *_2137, *_488, tmp2102
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %edx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2102, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L228	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ebx, %edx	# ivtmp.996, tmp2104
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp2104, tmp2105
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rdx	# ivtmp.1164, tmp2106
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rsi,%rdx,4), %xmm1	# *_653, *_653
	vmulss	4(%r13,%r15), %xmm1, %xmm1	# *_227, *_653, tmp2107
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2107, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r11d	# j, dim
	jle	.L228	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ebx, %eax	# ivtmp.996, tmp2109
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rax	# ivtmp.1164, tmp2111
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rsi,%rax,4), %xmm1	# *_1857, *_1857
	vmulss	8(%r13,%r15), %xmm1, %xmm1	# *_1861, *_1857, tmp2112
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2112, val, val
.L228:
# run.c:261:     for (i = 0; i < d; i++) {
	movq	-192(%rbp), %rax	# %sfp, _8
# run.c:266:         xout[i] = val;
	vmovss	%xmm0, (%r9)	# val, MEM[(float *)_2606]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r9	#, ivtmp.993
	addl	%r11d, %ebx	# dim, ivtmp.996
	addq	%rax, %rdi	# _8, ivtmp.997
	cmpq	%r9, %r8	# ivtmp.993, _237
	jne	.L227	#,
	movl	-116(%rbp), %edi	# %sfp, _2746
	movq	-72(%rbp), %rcx	# %sfp, _117
	movl	-96(%rbp), %r15d	# %sfp, tmp1708
	cmpl	$2, %edi	#, _2746
	jbe	.L348	#,
	movq	-152(%rbp), %rbx	# %sfp, x
	leaq	4(%rcx), %rax	#, tmp2127
	movq	%rbx, %rdx	# x, tmp2128
	subq	%rax, %rdx	# tmp2127, tmp2128
	xorl	%eax, %eax	# ivtmp.973
	cmpq	$24, %rdx	#, tmp2128
	ja	.L508	#,
	movq	-264(%rbp), %rsi	# %sfp, _9
	movq	%rbx, %rdx	# x, x
.L241:
# run.c:367:             x[i] += s->xb2[i];
	vmovss	(%rdx,%rax), %xmm0	# MEM[(float *)x_182 + ivtmp.973_1146 * 1], MEM[(float *)x_182 + ivtmp.973_1146 * 1]
	vaddss	(%rcx,%rax), %xmm0, %xmm0	# MEM[(float *)_1619 + ivtmp.973_1146 * 1], MEM[(float *)x_182 + ivtmp.973_1146 * 1], tmp2148
	vmovss	%xmm0, (%rdx,%rax)	# tmp2148, MEM[(float *)x_182 + ivtmp.973_1146 * 1]
# run.c:366:         for (int i = 0; i < dim; i++) {
	addq	$4, %rax	#, ivtmp.973
	cmpq	%rax, %rsi	# ivtmp.973, _9
	jne	.L241	#,
.L242:
# run.c:371:         rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	cmpl	$6, -116(%rbp)	#, %sfp
	movq	48(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_ffn_weight, _125
	jbe	.L352	#,
.L331:
# run.c:261:     for (i = 0; i < d; i++) {
	movq	-152(%rbp), %rax	# %sfp, ivtmp.963
	movq	-360(%rbp), %rdx	# %sfp, _1965
	vxorps	%xmm0, %xmm0, %xmm0	# ss
.L244:
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%rax), %ymm4	# MEM <vector(8) float> [(float *)_148], tmp3186
	addq	$32, %rax	#, ivtmp.963
	vmulps	%ymm4, %ymm4, %ymm2	#, tmp3186, vect__488.540
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_490.541, ss, stmp_ss_490.541
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp2151, tmp2151, stmp_ss_490.541
	vshufps	$255, %xmm2, %xmm2, %xmm3	#, tmp2151, tmp2151, stmp_ss_490.541
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_490.541, stmp_ss_490.541, stmp_ss_490.541
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp2151, tmp2151, stmp_ss_490.541
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_490.541, stmp_ss_490.541, stmp_ss_490.541
	vextractf128	$0x1, %ymm2, %xmm1	# vect__488.540, tmp2155
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp2155, tmp2155, stmp_ss_490.541
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_ss_490.541, stmp_ss_490.541, stmp_ss_490.541
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_490.541, stmp_ss_490.541, stmp_ss_490.541
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_490.541, stmp_ss_490.541, stmp_ss_490.541
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp2155, tmp2155, stmp_ss_490.541
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp2155, tmp2155, stmp_ss_490.541
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_490.541, stmp_ss_490.541, stmp_ss_490.541
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_490.541, stmp_ss_490.541, ss
	cmpq	%rdx, %rax	# _1965, ivtmp.963
	jne	.L244	#,
	movl	-220(%rbp), %ecx	# %sfp, _700
	movl	%ecx, %eax	# _700,
	cmpl	%eax, %r11d	# _700, dim
	je	.L245	#,
.L243:
	movl	%r11d, %esi	# dim, niters.542
	subl	%eax, %esi	# _1623, niters.542
	leal	-1(%rsi), %edx	#, tmp2161
	cmpl	$2, %edx	#, tmp2161
	jbe	.L246	#,
# run.c:193:         ss += x[j] * x[j];
	movq	-152(%rbp), %rdi	# %sfp, x
	vmovups	(%rdi,%rax,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.547_1670], MEM <vector(4) float> [(float *)vectp_x.547_1670]
	movl	%esi, %eax	# niters.542, niters_vector_mult_vf.544
	andl	$-4, %eax	#, niters_vector_mult_vf.544
# run.c:193:         ss += x[j] * x[j];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.547_1670], MEM <vector(4) float> [(float *)vectp_x.547_1670], vect__1611.549
	addl	%eax, %ecx	# niters_vector_mult_vf.544, tmp.545
	andl	$3, %esi	#, niters.542
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_1612.550, ss, stmp_ss_1612.550
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__1611.549, vect__1611.549, stmp_ss_1612.550
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_1612.550, stmp_ss_1612.550, stmp_ss_1612.550
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__1611.549, vect__1611.549, stmp_ss_1612.550
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__1611.549, vect__1611.549, stmp_ss_1612.550
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_1612.550, stmp_ss_1612.550, stmp_ss_1612.550
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_1612.550, stmp_ss_1612.550, ss
	je	.L245	#,
.L246:
# run.c:193:         ss += x[j] * x[j];
	movq	-152(%rbp), %rdi	# %sfp, x
	movslq	%ecx, %rax	# tmp.545, tmp.545
	leaq	0(,%rax,4), %rdx	#, _626
	vmovss	(%rdi,%rax,4), %xmm1	# *_81, _328
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rcx), %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _328, _328, tmp2169
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2169, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%r11d, %eax	# dim, j
	jge	.L245	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	4(%rdi,%rdx), %xmm1	# *_86, _234
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	2(%rcx), %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _234, _234, tmp2171
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2171, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %r11d	# j, dim
	jle	.L245	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	8(%rdi,%rdx), %xmm1	# *_1654, _1655
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _1655, _1655, tmp2173
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2173, ss, ss
.L245:
# run.c:195:     ss /= size;
	vdivss	-288(%rbp), %xmm0, %xmm0	# %sfp, ss, ss
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp2175
	vucomiss	%xmm0, %xmm1	# ss, tmp2175
	ja	.L482	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _496
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	-64(%rbp), %xmm4	# %sfp, tmp2481
	vdivss	%xmm0, %xmm4, %xmm0	# _496, tmp2481, ss
# run.c:199:     for (int j = 0; j < size; j++) {
	testl	%r11d, %r11d	# dim
	jle	.L186	#,
.L250:
	movl	-116(%rbp), %ecx	# %sfp, _2746
	cmpl	$2, %ecx	#, _2746
	jbe	.L253	#,
	movq	-296(%rbp), %rdi	# %sfp, _2020
	movq	%r13, %rax	# prephitmp_445, tmp2180
	leaq	4(%rbx,%rdi), %rdx	#, tmp2179
	subq	%rdx, %rax	# tmp2179, tmp2180
	cmpq	$24, %rax	#, tmp2180
	jbe	.L253	#,
	movq	-152(%rbp), %rsi	# %sfp, x
	movq	%r13, %rax	# prephitmp_445, tmp2184
	leaq	4(%rsi), %rdx	#, tmp2183
	subq	%rdx, %rax	# tmp2183, tmp2184
	cmpq	$24, %rax	#, tmp2184
	jbe	.L253	#,
	cmpl	$6, %ecx	#, _2746
	jbe	.L353	#,
	vshufps	$0, %xmm0, %xmm0, %xmm2	# ss, vect_cst__1542
	leaq	(%rbx,%rdi), %rcx	#, tmp2480
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# ivtmp.954
	movq	%rsi, %rdx	# x, x
	vinsertf128	$1, %xmm2, %ymm2, %ymm2	# vect_cst__1542, vect_cst__1542
.L255:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rdx,%rax), %ymm2, %ymm1	# MEM <vector(8) float> [(float *)x_182 + ivtmp.954_525 * 1], vect_cst__1542, vect__505.515
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rcx,%rax), %ymm1, %ymm1	# MEM <vector(8) float> [(float *)vectp.510_1534 + ivtmp.954_525 * 1], vect__505.515, vect__507.516
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%ymm1, 0(%r13,%rax)	# vect__507.516, MEM <vector(8) float> [(float *)prephitmp_445 + ivtmp.954_525 * 1]
	addq	$32, %rax	#, ivtmp.954
	cmpq	%r14, %rax	# _1954, ivtmp.954
	jne	.L255	#,
	movl	-220(%rbp), %edi	# %sfp, _700
	cmpl	%edi, %r11d	# _700, dim
	je	.L263	#,
	movl	%r11d, %esi	# dim, niters.519
	subl	%edi, %esi	# _700, niters.519
	leal	-1(%rsi), %eax	#, tmp2192
	cmpl	$2, %eax	#, tmp2192
	jbe	.L260	#,
	movl	%edi, %eax	# _700,
	movl	%edi, %ecx	# _700, j
.L254:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-320(%rbp), %rdi	# %sfp, ivtmp.1162
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vshufps	$0, %xmm0, %xmm0, %xmm1	# ss, tmp2196
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rax,%rdi), %rdx	#, tmp2193
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-152(%rbp), %rdi	# %sfp, x
	vmulps	(%rdi,%rax,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.527_1585], tmp2196, vect__1518.529
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rbx,%rdx,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.524_1578], vect__1518.529, vect__1520.530
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%xmm1, 0(%r13,%rax,4)	# vect__1520.530, MEM <vector(4) float> [(float *)vectp.532_1594]
	movl	%esi, %eax	# niters.519, niters_vector_mult_vf.521
	andl	$-4, %eax	#, niters_vector_mult_vf.521
	andl	$3, %esi	#, niters.519
	leal	(%rax,%rcx), %edi	#, tmp.522
	je	.L263	#,
	movq	-296(%rbp), %rax	# %sfp, _2020
	leaq	(%rbx,%rax), %rcx	#, tmp2480
.L260:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-152(%rbp), %rsi	# %sfp, x
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movslq	%edi, %rdx	# tmp.522, tmp.522
	leaq	0(,%rdx,4), %rax	#, _2394
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rsi,%rdx,4), %xmm0, %xmm1	# *_1511, ss, tmp2204
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rcx,%rax), %xmm1, %xmm1	# *_2397, tmp2204, tmp2205
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 0(%r13,%rdx,4)	# tmp2205, *_1514
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	1(%rdi), %edx	#, j
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L263	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	4(%rsi,%rax), %xmm0, %xmm1	# *_199, ss, tmp2210
	movq	%rsi, %rcx	# x, x
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-296(%rbp), %rsi	# %sfp, _2020
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	4(%rbx,%rax), %rdx	#, tmp2208
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rsi), %xmm1, %xmm1	# *_353, tmp2210, tmp2211
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	2(%rdi), %edx	#, j
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 4(%r13,%rax)	# tmp2211, *_356
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L263	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%rcx,%rax), %xmm0, %xmm0	# *_1560, ss, tmp2216
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	8(%rbx,%rax), %rdx	#, tmp2214
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rsi), %xmm0, %xmm0	# *_1558, tmp2216, tmp2217
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, 8(%r13,%rax)	# tmp2217, *_1563
.L263:
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	88(%rax), %r10	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w1, _127
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	152(%rax), %rax	# MEM[(struct RunState *)transformer_180(D) + 128B].hb, _130
	movq	%rax, -96(%rbp)	# _130, %sfp
# run.c:261:     for (i = 0; i < d; i++) {
	movl	-324(%rbp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L509	#,
.L257:
	movq	-96(%rbp), %r9	# %sfp, _130
	movq	-352(%rbp), %rax	# %sfp, _1012
# run.c:262:         float val = 0.0f;
	xorl	%ecx, %ecx	# ivtmp.942
	movl	%r15d, -136(%rbp)	# tmp1708, %sfp
	movl	-220(%rbp), %r12d	# %sfp, _700
	movq	-312(%rbp), %rbx	# %sfp, ivtmp.1159
	addq	%r9, %rax	# _130, _1068
	movq	%r9, -104(%rbp)	# ivtmp.911, %sfp
	movq	%rax, -72(%rbp)	# _1068, %sfp
	movq	%rax, %r15	# _1068, _1068
	.p2align 4,,10
	.p2align 3
.L252:
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r11d, %r11d	# dim
	jle	.L272	#,
	cmpl	$6, -116(%rbp)	#, %sfp
	jbe	.L355	#,
	movslq	%ecx, %rax	# ivtmp.942, _351
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
	addq	%rbx, %rax	# ivtmp.1159, tmp2222
	leaq	(%r10,%rax,4), %rdx	#, vectp.486
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.932
	.p2align 4,,10
	.p2align 3
.L266:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%rdx,%rax), %ymm7	# MEM <vector(8) float> [(float *)vectp.486_1392 + ivtmp.932_896 * 1], tmp3232
	vmulps	0(%r13,%rax), %ymm7, %ymm2	# MEM <vector(8) float> [(float *)_2162 + ivtmp.932_896 * 1], tmp3232, vect__361.491
	addq	$32, %rax	#, ivtmp.932
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_363.492, val, stmp_val_363.492
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp2226, tmp2226, stmp_val_363.492
	vshufps	$255, %xmm2, %xmm2, %xmm3	#, tmp2226, tmp2226, stmp_val_363.492
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_363.492, stmp_val_363.492, stmp_val_363.492
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp2226, tmp2226, stmp_val_363.492
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_363.492, stmp_val_363.492, stmp_val_363.492
	vextractf128	$0x1, %ymm2, %xmm1	# vect__361.491, tmp2230
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp2230, tmp2230, stmp_val_363.492
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_val_363.492, stmp_val_363.492, stmp_val_363.492
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_363.492, stmp_val_363.492, stmp_val_363.492
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_363.492, stmp_val_363.492, stmp_val_363.492
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp2230, tmp2230, stmp_val_363.492
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp2230, tmp2230, stmp_val_363.492
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_363.492, stmp_val_363.492, stmp_val_363.492
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_363.492, stmp_val_363.492, val
	cmpq	%r14, %rax	# _1954, ivtmp.932
	jne	.L266	#,
	cmpl	%r12d, %r11d	# _700, dim
	je	.L272	#,
	movl	%r12d, %edx	# _700,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r12d, %eax	# _700, tmp.496
.L265:
	movl	%r11d, %r8d	# dim, niters.493
	subl	%edx, %r8d	# _1390, niters.493
	leal	-1(%r8), %esi	#, tmp2236
	cmpl	$2, %esi	#, tmp2236
	jbe	.L268	#,
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	(%rdx,%rbx), %rsi	#, tmp2238
	movslq	%ecx, %rdi	# ivtmp.942, _351
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	0(%r13,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp.501_1459], vect__1377.502
	movl	%r8d, %edx	# niters.493, niters_vector_mult_vf.495
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%rdi, %rsi	# _351, tmp2239
	andl	$-4, %edx	#, niters_vector_mult_vf.495
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%r10,%rsi,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.498_1450], vect__1377.502, vect__1378.503
	addl	%edx, %eax	# niters_vector_mult_vf.495, tmp.496
	andl	$3, %r8d	#, niters.493
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_1379.504, val, stmp_val_1379.504
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__1378.503, vect__1378.503, stmp_val_1379.504
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_1379.504, stmp_val_1379.504, stmp_val_1379.504
	vunpckhps	%xmm1, %xmm1, %xmm2	# vect__1378.503, vect__1378.503, stmp_val_1379.504
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__1378.503, vect__1378.503, stmp_val_1379.504
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_1379.504, stmp_val_1379.504, stmp_val_1379.504
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_1379.504, stmp_val_1379.504, val
	je	.L272	#,
.L268:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rcx,%rax), %edx	#, tmp2247
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %rsi	# tmp.496, tmp.496
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp2247, tmp2248
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%rsi,4), %rdi	#, _508
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%rbx, %rdx	# ivtmp.1159, tmp2249
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rdx,4), %xmm1	# *_505, *_505
	vmulss	0(%r13,%rsi,4), %xmm1, %xmm1	# *_1793, *_505, tmp2250
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %edx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2250, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%edx, %r11d	# j, dim
	jle	.L272	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %edx	# ivtmp.942, tmp2252
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%edx, %rdx	# tmp2252, tmp2253
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%rbx, %rdx	# ivtmp.1159, tmp2254
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rdx,4), %xmm1	# *_1805, *_1805
	vmulss	4(%r13,%rdi), %xmm1, %xmm1	# *_2386, *_1805, tmp2255
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2255, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r11d	# j, dim
	jle	.L272	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %eax	# ivtmp.942, tmp2257
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%rbx, %rax	# ivtmp.1159, tmp2259
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rax,4), %xmm1	# *_1430, *_1430
	vmulss	8(%r13,%rdi), %xmm1, %xmm1	# *_1434, *_1430, tmp2260
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2260, val, val
.L272:
# run.c:266:         xout[i] = val;
	vmovss	%xmm0, (%r9)	# val, MEM[(float *)_1027]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r9	#, ivtmp.940
	addl	%r11d, %ecx	# dim, ivtmp.942
	cmpq	%r9, %r15	# ivtmp.940, _1068
	jne	.L252	#,
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	-104(%rbp), %rsi	# %sfp, ivtmp.911
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	xorl	%ecx, %ecx	# ivtmp.928
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	movl	-136(%rbp), %r15d	# %sfp, tmp1708
	movq	-312(%rbp), %r12	# %sfp, ivtmp.1159
	movq	160(%rax), %rbx	# MEM[(struct RunState *)transformer_180(D) + 128B].hb2, ivtmp.912
	movq	104(%rax), %r10	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w3, _131
	movq	%rsi, -168(%rbp)	# ivtmp.911, %sfp
	movq	-352(%rbp), %rax	# %sfp, _1012
	movl	%r15d, -176(%rbp)	# tmp1708, %sfp
	movq	%rbx, -144(%rbp)	# ivtmp.912, %sfp
	movl	-220(%rbp), %r15d	# %sfp, _700
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	movq	%rbx, %r9	# ivtmp.912, ivtmp.926
	leaq	(%rbx,%rax), %rdx	#, _921
	.p2align 4,,10
	.p2align 3
.L273:
# run.c:262:         float val = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r11d, %r11d	# dim
	jle	.L281	#,
	cmpl	$6, -116(%rbp)	#, %sfp
	jbe	.L356	#,
	movslq	%ecx, %rax	# ivtmp.928, _331
# run.c:262:         float val = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# val
	addq	%r12, %rax	# ivtmp.1159, tmp2263
	leaq	(%r10,%rax,4), %rsi	#, vectp.462
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.919
	.p2align 4,,10
	.p2align 3
.L275:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	0(%r13,%rax), %ymm5	# MEM <vector(8) float> [(float *)_2162 + ivtmp.919_1235 * 1], tmp3239
	vmulps	(%rsi,%rax), %ymm5, %ymm0	# MEM <vector(8) float> [(float *)vectp.462_474 + ivtmp.919_1235 * 1], tmp3239, vect__341.467
	addq	$32, %rax	#, ivtmp.919
	vaddss	%xmm1, %xmm0, %xmm1	# val, stmp_val_343.468, stmp_val_343.468
	vshufps	$85, %xmm0, %xmm0, %xmm2	#, tmp2267, tmp2267, stmp_val_343.468
	vshufps	$255, %xmm0, %xmm0, %xmm3	#, tmp2267, tmp2267, stmp_val_343.468
	vaddss	%xmm1, %xmm2, %xmm2	# stmp_val_343.468, stmp_val_343.468, stmp_val_343.468
	vunpckhps	%xmm0, %xmm0, %xmm1	# tmp2267, tmp2267, stmp_val_343.468
	vextractf128	$0x1, %ymm0, %xmm0	# vect__341.467, tmp2271
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_val_343.468, stmp_val_343.468, stmp_val_343.468
	vshufps	$85, %xmm0, %xmm0, %xmm2	#, tmp2271, tmp2271, stmp_val_343.468
	vaddss	%xmm1, %xmm3, %xmm3	# stmp_val_343.468, stmp_val_343.468, stmp_val_343.468
	vaddss	%xmm3, %xmm0, %xmm1	# stmp_val_343.468, stmp_val_343.468, stmp_val_343.468
	vaddss	%xmm1, %xmm2, %xmm2	# stmp_val_343.468, stmp_val_343.468, stmp_val_343.468
	vunpckhps	%xmm0, %xmm0, %xmm1	# tmp2271, tmp2271, stmp_val_343.468
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, tmp2271, tmp2271, stmp_val_343.468
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_val_343.468, stmp_val_343.468, stmp_val_343.468
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_val_343.468, stmp_val_343.468, val
	cmpq	%r14, %rax	# _1954, ivtmp.919
	jne	.L275	#,
	cmpl	%r15d, %r11d	# _700, dim
	je	.L281	#,
	movl	%r15d, %esi	# _700,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r15d, %eax	# _700, tmp.472
.L274:
	movl	%r11d, %ebx	# dim, niters.469
	subl	%esi, %ebx	# _489, niters.469
	leal	-1(%rbx), %edi	#, tmp2277
	cmpl	$2, %edi	#, tmp2277
	jbe	.L277	#,
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	(%rsi,%r12), %rdi	#, tmp2279
	movslq	%ecx, %r8	# ivtmp.928, _331
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	0(%r13,%rsi,4), %xmm0	# MEM <vector(4) float> [(float *)vectp.477_40], vect__557.478
	movl	%ebx, %esi	# niters.469, niters_vector_mult_vf.471
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rdi	# _331, tmp2280
	andl	$-4, %esi	#, niters_vector_mult_vf.471
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%r10,%rdi,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp.474_592], vect__557.478, vect__555.479
	addl	%esi, %eax	# niters_vector_mult_vf.471, tmp.472
	andl	$3, %ebx	#, niters.469
	vaddss	%xmm1, %xmm0, %xmm1	# val, stmp_val_554.480, stmp_val_554.480
	vshufps	$85, %xmm0, %xmm0, %xmm2	#, vect__555.479, vect__555.479, stmp_val_554.480
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_val_554.480, stmp_val_554.480, stmp_val_554.480
	vunpckhps	%xmm0, %xmm0, %xmm2	# vect__555.479, vect__555.479, stmp_val_554.480
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, vect__555.479, vect__555.479, stmp_val_554.480
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_val_554.480, stmp_val_554.480, stmp_val_554.480
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_val_554.480, stmp_val_554.480, val
	je	.L281	#,
.L277:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rcx,%rax), %esi	#, tmp2288
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %rdi	# tmp.472, tmp.472
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%esi, %rsi	# tmp2288, tmp2289
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%rdi,4), %r8	#, _279
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rsi	# ivtmp.1159, tmp2290
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rsi,4), %xmm0	# *_242, *_242
	vmulss	0(%r13,%rdi,4), %xmm0, %xmm0	# *_280, *_242, tmp2291
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %esi	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2291, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%esi, %r11d	# j, dim
	jle	.L281	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %esi	# ivtmp.928, tmp2293
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%esi, %rsi	# tmp2293, tmp2294
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rsi	# ivtmp.1159, tmp2295
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rsi,4), %xmm0	# *_2503, *_2503
	vmulss	4(%r13,%r8), %xmm0, %xmm0	# *_2507, *_2503, tmp2296
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2296, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r11d	# j, dim
	jle	.L281	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %eax	# ivtmp.928, tmp2298
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r12, %rax	# ivtmp.1159, tmp2300
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rax,4), %xmm0	# *_163, *_163
	vmulss	8(%r13,%r8), %xmm0, %xmm0	# *_98, *_163, tmp2301
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2301, val, val
.L281:
# run.c:266:         xout[i] = val;
	vmovss	%xmm1, (%r9)	# val, MEM[(float *)_967]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r9	#, ivtmp.926
	addl	%r11d, %ecx	# dim, ivtmp.928
	cmpq	%rdx, %r9	# _921, ivtmp.926
	jne	.L273	#,
	movq	-72(%rbp), %rbx	# %sfp, _1068
	movq	%r13, -136(%rbp)	# prephitmp_445, %sfp
	movl	%r11d, -104(%rbp)	# dim, %sfp
	movq	-144(%rbp), %r12	# %sfp, ivtmp.912
	movq	-168(%rbp), %r13	# %sfp, ivtmp.911
	movl	-176(%rbp), %r15d	# %sfp, tmp1708
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L279:
# run.c:380:             float val = s->hb[i];
	vmovss	0(%r13), %xmm1	# MEM[(float *)_1711], val
# run.c:379:         for (int i = 0; i < hidden_dim; i++) {
	addq	$4, %r13	#, ivtmp.911
	addq	$4, %r12	#, ivtmp.912
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vxorps	.LC9(%rip), %xmm1, %xmm0	#, val, tmp2303
	vmovss	%xmm1, -72(%rbp)	# val, %sfp
	call	expf@PLT	#
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vmovss	-64(%rbp), %xmm7	# %sfp, tmp2481
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vmovss	-72(%rbp), %xmm1	# %sfp, val
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vaddss	%xmm7, %xmm0, %xmm0	# tmp2481, tmp2515, tmp2305
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vdivss	%xmm0, %xmm7, %xmm0	# tmp2305, tmp2481, tmp2307
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	vmulss	%xmm1, %xmm0, %xmm0	# val, tmp2307, val
# run.c:384:             val *= s->hb2[i];
	vmulss	-4(%r12), %xmm0, %xmm0	# MEM[(float *)_1567], val, val
# run.c:385:             s->hb[i] = val;
	vmovss	%xmm0, -4(%r13)	# val, MEM[(float *)_1711]
# run.c:379:         for (int i = 0; i < hidden_dim; i++) {
	cmpq	%r13, %rbx	# ivtmp.911, _1068
	jne	.L279	#,
# run.c:389:         matmul(s->xb, s->hb, w->w2 + l*dim*hidden_dim, hidden_dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movl	-104(%rbp), %r11d	# %sfp, dim
	movq	-136(%rbp), %r13	# %sfp, prephitmp_445
	movq	96(%rax), %r10	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w2, _141
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%r11d, %r11d	# dim
	jle	.L251	#,
.L330:
	movq	-264(%rbp), %rax	# %sfp, _9
	movq	%r13, -72(%rbp)	# prephitmp_445, %sfp
	movq	%r13, %r9	# prephitmp_445, ivtmp.905
# run.c:262:         float val = 0.0f;
	xorl	%ecx, %ecx	# ivtmp.907
	movq	-96(%rbp), %rdx	# %sfp, _130
	movl	%r11d, -64(%rbp)	# dim, %sfp
	movq	%r14, -96(%rbp)	# _1954, %sfp
	movl	-324(%rbp), %r12d	# %sfp, hidden_dim
	leaq	(%rax,%r13), %rbx	#, _2640
	movl	%r15d, -104(%rbp)	# tmp1708, %sfp
	movq	-376(%rbp), %r11	# %sfp, _908
	movq	-312(%rbp), %r14	# %sfp, ivtmp.1159
	movl	-328(%rbp), %r15d	# %sfp, _1814
	.p2align 4,,10
	.p2align 3
.L264:
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r12d, %r12d	# hidden_dim
	jle	.L292	#,
	cmpl	$6, -224(%rbp)	#, %sfp
	jbe	.L357	#,
	movslq	%ecx, %rax	# ivtmp.907, _371
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
	addq	%r14, %rax	# ivtmp.1159, tmp2314
	leaq	(%r10,%rax,4), %rsi	#, vectp.438
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.898
	.p2align 4,,10
	.p2align 3
.L286:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%rdx,%rax), %ymm4	# MEM <vector(8) float> [(float *)_1107 + ivtmp.898_803 * 1], tmp3256
	vmulps	(%rsi,%rax), %ymm4, %ymm2	# MEM <vector(8) float> [(float *)vectp.438_763 + ivtmp.898_803 * 1], tmp3256, vect__381.443
	addq	$32, %rax	#, ivtmp.898
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_383.444, val, stmp_val_383.444
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp2318, tmp2318, stmp_val_383.444
	vshufps	$255, %xmm2, %xmm2, %xmm3	#, tmp2318, tmp2318, stmp_val_383.444
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_val_383.444, stmp_val_383.444, stmp_val_383.444
	vunpckhps	%xmm2, %xmm2, %xmm0	# tmp2318, tmp2318, stmp_val_383.444
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_383.444, stmp_val_383.444, stmp_val_383.444
	vextractf128	$0x1, %ymm2, %xmm1	# vect__381.443, tmp2322
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp2322, tmp2322, stmp_val_383.444
	vaddss	%xmm0, %xmm3, %xmm3	# stmp_val_383.444, stmp_val_383.444, stmp_val_383.444
	vaddss	%xmm3, %xmm1, %xmm0	# stmp_val_383.444, stmp_val_383.444, stmp_val_383.444
	vaddss	%xmm0, %xmm2, %xmm2	# stmp_val_383.444, stmp_val_383.444, stmp_val_383.444
	vunpckhps	%xmm1, %xmm1, %xmm0	# tmp2322, tmp2322, stmp_val_383.444
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp2322, tmp2322, stmp_val_383.444
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_383.444, stmp_val_383.444, stmp_val_383.444
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_383.444, stmp_val_383.444, val
	cmpq	%r11, %rax	# _908, ivtmp.898
	jne	.L286	#,
	cmpl	%r12d, %r15d	# hidden_dim, _1814
	je	.L292	#,
	movl	%r15d, %esi	# _1814,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r15d, %eax	# _1814, tmp.448
.L285:
	movl	%r12d, %r13d	# hidden_dim, niters.445
	subl	%esi, %r13d	# _765, niters.445
	leal	-1(%r13), %edi	#, tmp2328
	cmpl	$2, %edi	#, tmp2328
	jbe	.L288	#,
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	(%rsi,%r14), %rdi	#, tmp2330
	movslq	%ecx, %r8	# ivtmp.907, _371
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%rdx,%rsi,4), %xmm1	# MEM <vector(4) float> [(float *)vectp.453_602], vect__778.454
	movl	%r13d, %esi	# niters.445, niters_vector_mult_vf.447
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rdi	# _371, tmp2331
	andl	$-4, %esi	#, niters_vector_mult_vf.447
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%r10,%rdi,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.450_611], vect__778.454, vect__777.455
	addl	%esi, %eax	# niters_vector_mult_vf.447, tmp.448
	andl	$3, %r13d	#, niters.445
	vaddss	%xmm0, %xmm1, %xmm0	# val, stmp_val_776.456, stmp_val_776.456
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__777.455, vect__777.455, stmp_val_776.456
	vaddss	%xmm0, %xmm2, %xmm2	# stmp_val_776.456, stmp_val_776.456, stmp_val_776.456
	vunpckhps	%xmm1, %xmm1, %xmm0	# vect__777.455, vect__777.455, stmp_val_776.456
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__777.455, vect__777.455, stmp_val_776.456
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_val_776.456, stmp_val_776.456, stmp_val_776.456
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_val_776.456, stmp_val_776.456, val
	je	.L292	#,
.L288:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rcx,%rax), %esi	#, tmp2339
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %rdi	# tmp.448, tmp.448
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%esi, %rsi	# tmp2339, tmp2340
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%rdi,4), %r8	#, _2642
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r14, %rsi	# ivtmp.1159, tmp2341
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rsi,4), %xmm1	# *_1200, *_1200
	vmulss	(%rdx,%rdi,4), %xmm1, %xmm1	# *_2643, *_1200, tmp2342
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %esi	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2342, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%esi, %r12d	# j, hidden_dim
	jle	.L292	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %esi	# ivtmp.907, tmp2344
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%esi, %rsi	# tmp2344, tmp2345
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r14, %rsi	# ivtmp.1159, tmp2346
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rsi,4), %xmm1	# *_314, *_314
	vmulss	4(%rdx,%r8), %xmm1, %xmm1	# *_316, *_314, tmp2347
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2347, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r12d	# j, hidden_dim
	jle	.L292	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %eax	# ivtmp.907, tmp2349
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r14, %rax	# ivtmp.1159, tmp2351
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%r10,%rax,4), %xmm1	# *_713, *_713
	vmulss	8(%rdx,%r8), %xmm1, %xmm1	# *_692, *_713, tmp2352
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2352, val, val
.L292:
# run.c:266:         xout[i] = val;
	vmovss	%xmm0, (%r9)	# val, MEM[(float *)_1113]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r9	#, ivtmp.905
	addl	%r12d, %ecx	# hidden_dim, ivtmp.907
	cmpq	%rbx, %r9	# _2640, ivtmp.905
	jne	.L264	#,
	movl	-116(%rbp), %ebx	# %sfp, _2746
	movl	-64(%rbp), %r11d	# %sfp, dim
	movq	-72(%rbp), %r13	# %sfp, prephitmp_445
	movq	-96(%rbp), %r14	# %sfp, _1954
	movl	-104(%rbp), %r15d	# %sfp, tmp1708
	cmpl	$2, %ebx	#, _2746
	jbe	.L358	#,
	movq	-152(%rbp), %rcx	# %sfp, x
	leaq	4(%r13), %rax	#, tmp2354
	movq	%rcx, %rdx	# x, tmp2355
	subq	%rax, %rdx	# tmp2354, tmp2355
	xorl	%eax, %eax	# ivtmp.885
	cmpq	$24, %rdx	#, tmp2355
	ja	.L510	#,
	movq	%rcx, %rdx	# x, x
	movq	-264(%rbp), %rcx	# %sfp, _9
.L300:
# run.c:393:             x[i] += s->xb[i];
	vmovss	(%rdx,%rax), %xmm0	# MEM[(float *)x_182 + ivtmp.885_175 * 1], MEM[(float *)x_182 + ivtmp.885_175 * 1]
	vaddss	0(%r13,%rax), %xmm0, %xmm0	# MEM[(float *)_1253 + ivtmp.885_175 * 1], MEM[(float *)x_182 + ivtmp.885_175 * 1], tmp2375
	vmovss	%xmm0, (%rdx,%rax)	# tmp2375, MEM[(float *)x_182 + ivtmp.885_175 * 1]
# run.c:392:         for (int i = 0; i < dim; i++) {
	addq	$4, %rax	#, ivtmp.885
	cmpq	%rax, %rcx	# ivtmp.885, _9
	jne	.L300	#,
.L251:
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	-128(%rbp), %rax	# %sfp, transformer
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	addq	$1, -304(%rbp)	#, %sfp
	movq	-304(%rbp), %rcx	# %sfp, l
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	-392(%rbp), %rbx	# %sfp, _1971
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movslq	8(%rax), %rax	# MEM[(struct Config *)transformer_180(D)].n_layers, MEM[(struct Config *)transformer_180(D)].n_layers
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	addq	%rbx, -312(%rbp)	# _1971, %sfp
	movq	-192(%rbp), %rbx	# %sfp, _8
	addq	%rbx, -320(%rbp)	# _8, %sfp
	movq	-384(%rbp), %rbx	# %sfp, _1963
	addq	%rbx, -336(%rbp)	# _1963, %sfp
	movq	-400(%rbp), %rbx	# %sfp, _2010
	addq	%rbx, -344(%rbp)	# _2010, %sfp
	cmpq	%rax, %rcx	# MEM[(struct Config *)transformer_180(D)].n_layers, l
	jb	.L283	#,
.L284:
# run.c:398:     rmsnorm(x, x, w->rms_final_weight, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	112(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_final_weight, _151
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	-284(%rbp), %eax	# %sfp, dim
	testl	%eax, %eax	# dim
	jle	.L302	#,
	leal	-1(%rax), %r13d	#, _966
	movl	%eax, %r12d	# dim, niters.389
	cmpl	$6, %r13d	#, _966
	jbe	.L362	#,
	movq	-152(%rbp), %rcx	# %sfp, x
	shrl	$3, %eax	#,
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
	salq	$5, %rax	#, tmp2379
	movq	%rcx, %rdx	# x, ivtmp.878
	addq	%rcx, %rax	# x, _1438
.L304:
# run.c:193:         ss += x[j] * x[j];
	vmovups	(%rdx), %ymm7	# MEM <vector(8) float> [(float *)_1598], tmp3279
	addq	$32, %rdx	#, ivtmp.878
	vmulps	%ymm7, %ymm7, %ymm2	#, tmp3279, vect__514.396
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_516.397, ss, stmp_ss_516.397
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp2381, tmp2381, stmp_ss_516.397
	vaddss	%xmm0, %xmm1, %xmm0	# stmp_ss_516.397, stmp_ss_516.397, stmp_ss_516.397
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp2381, tmp2381, stmp_ss_516.397
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_ss_516.397, stmp_ss_516.397, stmp_ss_516.397
	vshufps	$255, %xmm2, %xmm2, %xmm0	#, tmp2381, tmp2381, stmp_ss_516.397
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_516.397, stmp_ss_516.397, stmp_ss_516.397
	vextractf128	$0x1, %ymm2, %xmm1	# vect__514.396, tmp2385
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp2385, tmp2385, stmp_ss_516.397
	vaddss	%xmm0, %xmm1, %xmm0	# stmp_ss_516.397, stmp_ss_516.397, stmp_ss_516.397
	vaddss	%xmm0, %xmm2, %xmm2	# stmp_ss_516.397, stmp_ss_516.397, stmp_ss_516.397
	vunpckhps	%xmm1, %xmm1, %xmm0	# tmp2385, tmp2385, stmp_ss_516.397
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp2385, tmp2385, stmp_ss_516.397
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_516.397, stmp_ss_516.397, stmp_ss_516.397
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_516.397, stmp_ss_516.397, ss
	cmpq	%rdx, %rax	# ivtmp.878, _1438
	jne	.L304	#,
	movl	-284(%rbp), %ecx	# %sfp, dim
	movl	%ecx, %eax	# dim, tmp.401
	andl	$-8, %eax	#, tmp.401
	movl	%eax, %edx	# tmp.401,
	cmpl	%ecx, %eax	# dim, tmp.401
	je	.L305	#,
.L303:
	movl	-284(%rbp), %ecx	# %sfp, niters.398
	subl	%edx, %ecx	# niters_vector_mult_vf.391, niters.398
	leal	-1(%rcx), %esi	#, tmp2391
	cmpl	$2, %esi	#, tmp2391
	jbe	.L306	#,
# run.c:193:         ss += x[j] * x[j];
	movq	-152(%rbp), %rdi	# %sfp, x
	vmovups	(%rdi,%rdx,4), %xmm1	# MEM <vector(4) float> [(float *)vectp_x.403_912], MEM <vector(4) float> [(float *)vectp_x.403_912]
	movl	%ecx, %edx	# niters.398, niters_vector_mult_vf.400
	andl	$-4, %edx	#, niters_vector_mult_vf.400
# run.c:193:         ss += x[j] * x[j];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.403_912], MEM <vector(4) float> [(float *)vectp_x.403_912], vect__971.405
	addl	%edx, %eax	# niters_vector_mult_vf.400, tmp.401
	andl	$3, %ecx	#, niters.398
	vaddss	%xmm0, %xmm1, %xmm0	# ss, stmp_ss_970.406, stmp_ss_970.406
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, vect__971.405, vect__971.405, stmp_ss_970.406
	vaddss	%xmm0, %xmm2, %xmm2	# stmp_ss_970.406, stmp_ss_970.406, stmp_ss_970.406
	vunpckhps	%xmm1, %xmm1, %xmm0	# vect__971.405, vect__971.405, stmp_ss_970.406
# run.c:193:         ss += x[j] * x[j];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__971.405, vect__971.405, stmp_ss_970.406
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_ss_970.406, stmp_ss_970.406, stmp_ss_970.406
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_ss_970.406, stmp_ss_970.406, ss
	je	.L305	#,
.L306:
# run.c:193:         ss += x[j] * x[j];
	movq	-152(%rbp), %rdi	# %sfp, x
	movslq	%eax, %rcx	# tmp.401, tmp.401
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	-284(%rbp), %esi	# %sfp, dim
# run.c:193:         ss += x[j] * x[j];
	leaq	0(,%rcx,4), %rdx	#, _398
	vmovss	(%rdi,%rcx,4), %xmm1	# *_399, _400
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _400, _400, tmp2399
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2399, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %esi	# j, dim
	jle	.L305	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	4(%rdi,%rdx), %xmm1	# *_447, _448
# run.c:192:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _448, _448, tmp2401
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2401, ss, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %esi	# j, dim
	jle	.L305	#,
# run.c:193:         ss += x[j] * x[j];
	vmovss	8(%rdi,%rdx), %xmm1	# *_928, _927
# run.c:193:         ss += x[j] * x[j];
	vmulss	%xmm1, %xmm1, %xmm1	# _927, _927, tmp2403
# run.c:193:         ss += x[j] * x[j];
	vaddss	%xmm1, %xmm0, %xmm0	# tmp2403, ss, ss
.L305:
# run.c:195:     ss /= size;
	vdivss	-288(%rbp), %xmm0, %xmm0	# %sfp, ss, ss
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp2405
	vucomiss	%xmm0, %xmm1	# ss, tmp2405
	ja	.L486	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _522
.L310:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	.LC7(%rip), %xmm1	#, tmp2406
	vdivss	%xmm0, %xmm1, %xmm0	# _522, tmp2406, ss
	cmpl	$2, %r13d	#, _966
	jbe	.L511	#,
	movq	-152(%rbp), %rcx	# %sfp, x
	leaq	4(%rbx), %rax	#, tmp2411
	movq	%rcx, %rdx	# x, tmp2412
	subq	%rax, %rdx	# tmp2411, tmp2412
	xorl	%eax, %eax	# ivtmp.864
	cmpq	$24, %rdx	#, tmp2412
	ja	.L512	#,
	movq	%rcx, %rdx	# x, x
.L321:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rax), %xmm0, %xmm1	# MEM[(float *)x_182 + ivtmp.864_1890 * 1], ss, tmp2439
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rbx,%rax), %xmm1, %xmm1	# MEM[(float *)_151 + ivtmp.864_1890 * 1], tmp2439, tmp2440
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%rdx,%rax)	# tmp2440, MEM[(float *)x_182 + ivtmp.864_1890 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.864
	cmpq	%rax, -264(%rbp)	# ivtmp.864, %sfp
	jne	.L321	#,
.L302:
# run.c:401:     matmul(s->logits, x, w->wcls, p->dim, p->vocab_size);
	movq	-128(%rbp), %rbx	# %sfp, transformer
	movslq	20(%rbx), %rax	# MEM[(struct Config *)transformer_180(D)].vocab_size,
	movl	(%rbx), %ecx	# MEM[(struct Config *)transformer_180(D)].dim, _153
	movq	120(%rbx), %rdi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wcls, _154
	movq	200(%rbx), %r9	# MEM[(struct RunState *)transformer_180(D) + 128B].logits, <retval>
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%eax, %eax	# _152
	jle	.L130	#,
	movl	%ecx, %edx	# _153, bnd.338
	movl	%ecx, %r10d	# _153, _2253
	movq	-152(%rbp), %r12	# %sfp, x
	movq	%r9, %r8	# <retval>, ivtmp.855
	shrl	$3, %edx	#,
	leaq	(%r9,%rax,4), %rbx	#, _1884
	leal	-1(%rcx), %r11d	#, _1197
	andl	$-8, %r10d	#, _2253
	salq	$5, %rdx	#, _1296
	xorl	%esi, %esi	# ivtmp.857
.L314:
# run.c:262:         float val = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%ecx, %ecx	# _153
	jle	.L329	#,
	cmpl	$6, %r11d	#, _1197
	jbe	.L365	#,
	movslq	%esi, %rax	# ivtmp.857, _391
# run.c:262:         float val = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# val
	leaq	(%rdi,%rax,4), %r13	#, vectp.342
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.848
.L324:
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%r12,%rax), %ymm5	# MEM <vector(8) float> [(float *)x_182 + ivtmp.848_2788 * 1], tmp3310
	vmulps	0(%r13,%rax), %ymm5, %ymm0	# MEM <vector(8) float> [(float *)vectp.342_1188 + ivtmp.848_2788 * 1], tmp3310, vect__402.347
	addq	$32, %rax	#, ivtmp.848
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_val_404.348, val, stmp_val_404.348
	vshufps	$85, %xmm0, %xmm0, %xmm3	#, tmp2445, tmp2445, stmp_val_404.348
	vaddss	%xmm1, %xmm3, %xmm1	# stmp_val_404.348, stmp_val_404.348, stmp_val_404.348
	vunpckhps	%xmm0, %xmm0, %xmm3	# tmp2445, tmp2445, stmp_val_404.348
	vaddss	%xmm1, %xmm3, %xmm3	# stmp_val_404.348, stmp_val_404.348, stmp_val_404.348
	vshufps	$255, %xmm0, %xmm0, %xmm1	#, tmp2445, tmp2445, stmp_val_404.348
	vextractf128	$0x1, %ymm0, %xmm0	# vect__402.347, tmp2449
	vshufps	$85, %xmm0, %xmm0, %xmm2	#, tmp2449, tmp2449, stmp_val_404.348
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_val_404.348, stmp_val_404.348, stmp_val_404.348
	vaddss	%xmm1, %xmm0, %xmm1	# stmp_val_404.348, stmp_val_404.348, stmp_val_404.348
	vaddss	%xmm1, %xmm2, %xmm2	# stmp_val_404.348, stmp_val_404.348, stmp_val_404.348
	vunpckhps	%xmm0, %xmm0, %xmm1	# tmp2449, tmp2449, stmp_val_404.348
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, tmp2449, tmp2449, stmp_val_404.348
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_val_404.348, stmp_val_404.348, stmp_val_404.348
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_val_404.348, stmp_val_404.348, val
	cmpq	%rax, %rdx	# ivtmp.848, _1296
	jne	.L324	#,
	cmpl	%r10d, %ecx	# _2253, _153
	je	.L329	#,
	movl	%r10d, %r13d	# _2253,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r10d, %eax	# _2253, tmp.352
.L323:
	movl	%ecx, %r15d	# _153, niters.349
	subl	%r13d, %r15d	# _1190, niters.349
	leal	-1(%r15), %r14d	#, tmp2455
	cmpl	$2, %r14d	#, tmp2455
	jbe	.L326	#,
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%esi, %r14	# ivtmp.857, _391
# run.c:264:             val += w[i * n + j] * x[j];
	vmovups	(%r12,%r13,4), %xmm0	# MEM <vector(4) float> [(float *)vectp_x.357_1111], vect__1203.358
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r13, %r14	# _1117, tmp2457
	movl	%r15d, %r13d	# niters.349, niters_vector_mult_vf.351
# run.c:264:             val += w[i * n + j] * x[j];
	vmulps	(%rdi,%r14,4), %xmm0, %xmm0	# MEM <vector(4) float> [(float *)vectp.354_1119], vect__1203.358, vect__1202.359
	andl	$-4, %r13d	#, niters_vector_mult_vf.351
	addl	%r13d, %eax	# niters_vector_mult_vf.351, tmp.352
	andl	$3, %r15d	#, niters.349
	vaddss	%xmm1, %xmm0, %xmm1	# val, stmp_val_1201.360, stmp_val_1201.360
	vshufps	$85, %xmm0, %xmm0, %xmm2	#, vect__1202.359, vect__1202.359, stmp_val_1201.360
	vaddss	%xmm1, %xmm2, %xmm2	# stmp_val_1201.360, stmp_val_1201.360, stmp_val_1201.360
	vunpckhps	%xmm0, %xmm0, %xmm1	# vect__1202.359, vect__1202.359, stmp_val_1201.360
# run.c:264:             val += w[i * n + j] * x[j];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, vect__1202.359, vect__1202.359, stmp_val_1201.360
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_val_1201.360, stmp_val_1201.360, stmp_val_1201.360
	vaddss	%xmm0, %xmm1, %xmm1	# stmp_val_1201.360, stmp_val_1201.360, val
	je	.L329	#,
.L326:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rsi,%rax), %r14d	#, tmp2465
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r15	# tmp.352, tmp.352
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r14d, %r14	# tmp2465, tmp2466
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r15,4), %r13	#, _975
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rdi,%r14,4), %xmm0	# *_514, *_514
	vmulss	(%r12,%r15,4), %xmm0, %xmm0	# *_974, *_514, tmp2467
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %r14d	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2467, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%r14d, %ecx	# j, _153
	jle	.L329	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%esi, %r14d	# ivtmp.857, tmp2469
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r14d, %r14	# tmp2469, tmp2470
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rdi,%r14,4), %xmm0	# *_434, *_434
	vmulss	4(%r12,%r13), %xmm0, %xmm0	# *_2738, *_434, tmp2471
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2471, val, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %ecx	# j, _153
	jle	.L329	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%esi, %eax	# ivtmp.857, tmp2473
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	vmovss	(%rdi,%rax,4), %xmm0	# *_1140, *_1140
	vmulss	8(%r12,%r13), %xmm0, %xmm0	# *_1136, *_1140, tmp2475
# run.c:264:             val += w[i * n + j] * x[j];
	vaddss	%xmm0, %xmm1, %xmm1	# tmp2475, val, val
.L329:
# run.c:266:         xout[i] = val;
	vmovss	%xmm1, (%r8)	# val, MEM[(float *)_2025]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %r8	#, ivtmp.855
	addl	%ecx, %esi	# _153, ivtmp.857
	cmpq	%rbx, %r8	# _1884, ivtmp.855
	jne	.L314	#,
.L130:
	vzeroupper
# run.c:403: }
	addq	$416, %rsp	#,
	movq	%r9, %rax	# <retval>,
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
.L190:
	.cfi_restore_state
	movq	%rcx, -64(%rbp)	# ivtmp.1064, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	-104(%rbp), %rdi	# %sfp, _2343
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	xorl	%esi, %esi	#
	movq	%r14, %rdx	# _538,
# run.c:348:             float* xb = s->xb + h * head_size;
	addq	136(%r11), %rdi	# MEM[(struct RunState *)transformer_180(D) + 128B].xb, _2343
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vzeroupper
	call	memset@PLT	#
	movq	-64(%rbp), %rcx	# %sfp, ivtmp.1064
	jmp	.L204	#
.L347:
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%edx, %edx	#
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.592
	jmp	.L234	#
.L498:
	vzeroupper
	jmp	.L211	#
.L336:
	xorl	%edx, %edx	#
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.736
	jmp	.L159	#
.L339:
	vxorps	%xmm0, %xmm0, %xmm0	# tmp2016
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	movq	%r13, %rbx	# ivtmp.1018, ivtmp.1055
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
	vucomiss	%xmm2, %xmm0	# _87, tmp2016
	jbe	.L513	#,
.L487:
	movq	%r12, -72(%rbp)	# _2479, %sfp
	movq	%rbx, %r12	# ivtmp.1055, ivtmp.1055
	movq	%r9, %rbx	# ivtmp.1052, ivtmp.1052
	movq	%r13, -96(%rbp)	# ivtmp.1018, %sfp
	movq	%rdi, %r13	# pretmp_1147, pretmp_1147
	vzeroupper
.L198:
# run.c:339:                 score /= sqrtf(head_size);
	vmovaps	%xmm2, %xmm0	# _87,
	movq	%r8, -456(%rbp)	# ivtmp.1016, %sfp
# run.c:331:             for (int t = 0; t <= pos; t++) {
	addq	$4, %rbx	#, ivtmp.1052
	movq	%rcx, -448(%rbp)	# ivtmp.1064, %sfp
	vmovss	%xmm1, -208(%rbp)	# score, %sfp
	movq	%r10, -216(%rbp)	# pretmp_1157, %sfp
# run.c:339:                 score /= sqrtf(head_size);
	vmovss	%xmm2, -200(%rbp)	# _87, %sfp
	call	sqrtf@PLT	#
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movq	-80(%rbp), %rax	# %sfp, _1039
# run.c:339:                 score /= sqrtf(head_size);
	vmovss	-208(%rbp), %xmm1	# %sfp, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movq	-448(%rbp), %rcx	# %sfp, ivtmp.1064
	movq	-456(%rbp), %r8	# %sfp, ivtmp.1016
# run.c:339:                 score /= sqrtf(head_size);
	vdivss	%xmm0, %xmm1, %xmm0	# tmp2512, score, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	addq	%rax, %r12	# _1039, ivtmp.1055
	movq	-64(%rbp), %rax	# %sfp, _2344
# run.c:341:                 att[t] = score;
	vmovss	%xmm0, -4(%rbx)	# score, MEM[(float *)_649]
# run.c:331:             for (int t = 0; t <= pos; t++) {
	cmpq	%rax, %rbx	# _2344, ivtmp.1052
	je	.L488	#,
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	testl	%r15d, %r15d	# tmp1708
	vmovss	-200(%rbp), %xmm2	# %sfp, _87
	movq	-216(%rbp), %r10	# %sfp, pretmp_1157
# run.c:335:                 float score = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	jle	.L198	#,
	movq	%r13, %rdi	# pretmp_1147, pretmp_1147
	movq	%rbx, %r9	# ivtmp.1052, ivtmp.1052
	movq	-96(%rbp), %r13	# %sfp, ivtmp.1018
	movq	%r12, %rbx	# ivtmp.1055, ivtmp.1055
	movq	-72(%rbp), %r12	# %sfp, _2479
	jmp	.L202	#
	.p2align 4,,10
	.p2align 3
.L357:
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%esi, %esi	#
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.448
	jmp	.L285	#
.L356:
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%esi, %esi	#
# run.c:262:         float val = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.472
	jmp	.L274	#
.L355:
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%edx, %edx	#
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.496
	jmp	.L265	#
.L342:
# run.c:214:     for (int i = 0; i < size; i++) {
	xorl	%eax, %eax	#
# run.c:219:     for (int i = 0; i < size; i++) {
	xorl	%edx, %edx	# tmp.642
	jmp	.L209	#
.L338:
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%edx, %edx	#
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.688
	jmp	.L173	#
.L337:
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%edx, %edx	#
# run.c:262:         float val = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.712
	jmp	.L164	#
.L142:
	movq	-296(%rbp), %rax	# %sfp, _2020
# run.c:199:     for (int j = 0; j < size; j++) {
	movq	-264(%rbp), %rcx	# %sfp, _9
	movq	-152(%rbp), %rsi	# %sfp, x
	leaq	(%rbx,%rax), %rdx	#, _2275
	xorl	%eax, %eax	# ivtmp.1139
.L151:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rsi,%rax), %xmm0, %xmm1	# MEM[(float *)x_182 + ivtmp.1139_2132 * 1], ss, tmp1806
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rax), %xmm1, %xmm1	# MEM[(float *)_2275 + ivtmp.1139_2132 * 1], tmp1806, tmp1807
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 0(%r13,%rax)	# tmp1807, MEM[(float *)_14 + ivtmp.1139_2132 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.1139
	cmpq	%rax, %rcx	# ivtmp.1139, _9
	jne	.L151	#,
	jmp	.L132	#
.L253:
	movq	-296(%rbp), %rdx	# %sfp, _2020
# run.c:199:     for (int j = 0; j < size; j++) {
	movq	-264(%rbp), %rcx	# %sfp, _9
	xorl	%eax, %eax	# ivtmp.950
	movq	-152(%rbp), %rsi	# %sfp, x
	addq	%rbx, %rdx	# _125, _2020
.L262:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rsi,%rax), %xmm0, %xmm1	# MEM[(float *)x_182 + ivtmp.950_1026 * 1], ss, tmp2219
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rdx,%rax), %xmm1, %xmm1	# MEM[(float *)_897 + ivtmp.950_1026 * 1], tmp2219, tmp2220
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, 0(%r13,%rax)	# tmp2220, MEM[(float *)prephitmp_445 + ivtmp.950_1026 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.950
	cmpq	%rax, %rcx	# ivtmp.950, _9
	jne	.L262	#,
	jmp	.L263	#
.L510:
	cmpl	$6, %ebx	#, _2746
	jbe	.L360	#,
# run.c:261:     for (i = 0; i < d; i++) {
	movq	%rcx, %rdx	# x, x
.L295:
# run.c:393:             x[i] += s->xb[i];
	vmovups	0(%r13,%rax), %ymm7	# MEM <vector(8) float> [(float *)_1253 + ivtmp.890_597 * 1], tmp3262
	vaddps	(%rdx,%rax), %ymm7, %ymm0	# MEM <vector(8) float> [(float *)x_182 + ivtmp.890_597 * 1], tmp3262, vect__148.417
	vmovups	%ymm0, (%rdx,%rax)	# vect__148.417, MEM <vector(8) float> [(float *)x_182 + ivtmp.890_597 * 1]
	addq	$32, %rax	#, ivtmp.890
	cmpq	%r14, %rax	# _1954, ivtmp.890
	jne	.L295	#,
	movl	-220(%rbp), %ebx	# %sfp, _700
	cmpl	%ebx, %r11d	# _700, dim
	je	.L251	#,
	movl	%r11d, %ecx	# dim, niters.420
	movl	%ebx, %esi	# _700, i
	subl	%ebx, %ecx	# _700, niters.420
	leal	-1(%rcx), %eax	#, tmp2359
	cmpl	$2, %eax	#, tmp2359
	jbe	.L298	#,
	movl	%ebx, %eax	# _700,
.L294:
	movq	-152(%rbp), %rbx	# %sfp, x
	vmovups	0(%r13,%rax,4), %xmm4	# MEM <vector(4) float> [(float *)vectp.428_807], tmp3267
	leaq	(%rbx,%rax,4), %rdx	#, vectp_x.425
	movl	%ecx, %eax	# niters.420, niters_vector_mult_vf.422
	vaddps	(%rdx), %xmm4, %xmm0	# MEM <vector(4) float> [(float *)vectp_x.425_813], tmp3267, vect__864.430
	andl	$-4, %eax	#, niters_vector_mult_vf.422
	addl	%eax, %esi	# niters_vector_mult_vf.422, tmp.423
	andl	$3, %ecx	#, niters.420
	vmovups	%xmm0, (%rdx)	# vect__864.430, MEM <vector(4) float> [(float *)vectp_x.425_813]
	je	.L251	#,
.L298:
# run.c:393:             x[i] += s->xb[i];
	movslq	%esi, %rdx	# tmp.423, tmp.423
	movq	-152(%rbp), %rbx	# %sfp, x
	leaq	0(,%rdx,4), %rcx	#, _1239
	leaq	(%rbx,%rcx), %rax	#, _661
# run.c:393:             x[i] += s->xb[i];
	vmovss	(%rax), %xmm0	# *_661, *_661
	vaddss	0(%r13,%rdx,4), %xmm0, %xmm0	# *_295, *_661, tmp2367
	vmovss	%xmm0, (%rax)	# tmp2367, *_661
# run.c:392:         for (int i = 0; i < dim; i++) {
	leal	1(%rsi), %eax	#, i
# run.c:392:         for (int i = 0; i < dim; i++) {
	cmpl	%eax, %r11d	# i, dim
	jle	.L251	#,
# run.c:393:             x[i] += s->xb[i];
	leaq	4(%rbx,%rcx), %rax	#, _302
# run.c:393:             x[i] += s->xb[i];
	vmovss	(%rax), %xmm0	# *_302, *_302
	vaddss	4(%r13,%rcx), %xmm0, %xmm0	# *_1215, *_302, tmp2370
	vmovss	%xmm0, (%rax)	# tmp2370, *_302
# run.c:392:         for (int i = 0; i < dim; i++) {
	leal	2(%rsi), %eax	#, i
# run.c:392:         for (int i = 0; i < dim; i++) {
	cmpl	%eax, %r11d	# i, dim
	jle	.L251	#,
# run.c:393:             x[i] += s->xb[i];
	leaq	8(%rbx,%rcx), %rax	#, _831
# run.c:393:             x[i] += s->xb[i];
	vmovss	(%rax), %xmm0	# *_831, *_831
	vaddss	8(%r13,%rcx), %xmm0, %xmm0	# *_829, *_831, tmp2373
	vmovss	%xmm0, (%rax)	# tmp2373, *_831
	jmp	.L251	#
.L358:
# run.c:261:     for (i = 0; i < d; i++) {
	movq	-264(%rbp), %rcx	# %sfp, _9
	movq	-152(%rbp), %rdx	# %sfp, x
	xorl	%eax, %eax	# ivtmp.885
	jmp	.L300	#
.L508:
	cmpl	$6, %edi	#, _2746
	jbe	.L350	#,
	movq	%rbx, %rdx	# x, x
.L237:
# run.c:367:             x[i] += s->xb2[i];
	vmovups	(%rdx,%rax), %ymm4	# MEM <vector(8) float> [(float *)x_182 + ivtmp.977_1114 * 1], tmp3174
	vaddps	(%rcx,%rax), %ymm4, %ymm0	# MEM <vector(8) float> [(float *)_1619 + ivtmp.977_1114 * 1], tmp3174, vect__124.561
	vmovups	%ymm0, (%rdx,%rax)	# vect__124.561, MEM <vector(8) float> [(float *)x_182 + ivtmp.977_1114 * 1]
	addq	$32, %rax	#, ivtmp.977
	cmpq	%r14, %rax	# _1954, ivtmp.977
	jne	.L237	#,
	movl	-220(%rbp), %edi	# %sfp, _700
	cmpl	%edi, %r11d	# _700, dim
	je	.L238	#,
	movl	%r11d, %esi	# dim, niters.564
	subl	%edi, %esi	# _700, niters.564
	leal	-1(%rsi), %eax	#, tmp2132
	cmpl	$2, %eax	#, tmp2132
	jbe	.L239	#,
	movl	%edi, %eax	# _700,
.L236:
	movq	-152(%rbp), %rbx	# %sfp, x
	vmovups	(%rcx,%rax,4), %xmm5	# MEM <vector(4) float> [(float *)vectp.572_1775], tmp3179
	leaq	(%rbx,%rax,4), %rdx	#, vectp_x.569
	movl	%esi, %eax	# niters.564, niters_vector_mult_vf.566
	vaddps	(%rdx), %xmm5, %xmm0	# MEM <vector(4) float> [(float *)vectp_x.569_1769], tmp3179, vect__1718.574
	andl	$-4, %eax	#, niters_vector_mult_vf.566
	addl	%eax, %edi	# niters_vector_mult_vf.566, tmp.567
	andl	$3, %esi	#, niters.564
	vmovups	%xmm0, (%rdx)	# vect__1718.574, MEM <vector(4) float> [(float *)vectp_x.569_1769]
	je	.L242	#,
.L239:
# run.c:367:             x[i] += s->xb2[i];
	movslq	%edi, %rdx	# tmp.567, tmp.567
	movq	-152(%rbp), %rbx	# %sfp, x
	leaq	0(,%rdx,4), %rsi	#, _376
	leaq	(%rbx,%rsi), %rax	#, _377
# run.c:367:             x[i] += s->xb2[i];
	vmovss	(%rax), %xmm0	# *_377, *_377
	vaddss	(%rcx,%rdx,4), %xmm0, %xmm0	# *_379, *_377, tmp2140
	vmovss	%xmm0, (%rax)	# tmp2140, *_377
# run.c:366:         for (int i = 0; i < dim; i++) {
	leal	1(%rdi), %eax	#, i
# run.c:366:         for (int i = 0; i < dim; i++) {
	cmpl	%eax, %r11d	# i, dim
	jle	.L242	#,
# run.c:367:             x[i] += s->xb2[i];
	leaq	4(%rbx,%rsi), %rax	#, _1372
# run.c:367:             x[i] += s->xb2[i];
	vmovss	(%rax), %xmm0	# *_1372, *_1372
	vaddss	4(%rcx,%rsi), %xmm0, %xmm0	# *_1374, *_1372, tmp2143
	vmovss	%xmm0, (%rax)	# tmp2143, *_1372
# run.c:366:         for (int i = 0; i < dim; i++) {
	leal	2(%rdi), %eax	#, i
# run.c:366:         for (int i = 0; i < dim; i++) {
	cmpl	%eax, %r11d	# i, dim
	jle	.L242	#,
# run.c:367:             x[i] += s->xb2[i];
	leaq	8(%rbx,%rsi), %rax	#, _1751
	cmpl	$6, -116(%rbp)	#, %sfp
# run.c:367:             x[i] += s->xb2[i];
	vmovss	(%rax), %xmm0	# *_1751, *_1751
	vaddss	8(%rcx,%rsi), %xmm0, %xmm0	# *_1753, *_1751, tmp2146
	vmovss	%xmm0, (%rax)	# tmp2146, *_1751
# run.c:371:         rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	48(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_ffn_weight, _125
	ja	.L331	#,
.L352:
	xorl	%eax, %eax	#
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%ecx, %ecx	# tmp.545
	jmp	.L243	#
.L143:
# run.c:261:     for (i = 0; i < d; i++) {
	movl	-180(%rbp), %r12d	# %sfp,
	testl	%r12d, %r12d	#
	jg	.L162	#,
.L160:
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movq	-128(%rbp), %rax	# %sfp, transformer
	movl	12(%rax), %r8d	# MEM[(struct Config *)transformer_180(D)].n_heads,
	testl	%r8d, %r8d	#
	jg	.L188	#,
.L186:
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
# run.c:261:     for (i = 0; i < d; i++) {
	movl	-324(%rbp), %edx	# %sfp,
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	88(%rax), %r10	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w1, _127
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	152(%rax), %rax	# MEM[(struct RunState *)transformer_180(D) + 128B].hb, _130
	movq	%rax, -96(%rbp)	# _130, %sfp
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%edx, %edx	#
	jle	.L251	#,
	vmovss	.LC7(%rip), %xmm7	#, tmp2481
	vmovss	%xmm7, -64(%rbp)	# tmp2481, %sfp
	jmp	.L257	#
.L509:
# run.c:389:         matmul(s->xb, s->hb, w->w2 + l*dim*hidden_dim, hidden_dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	96(%rax), %r10	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w2, _141
	jmp	.L330	#
.L501:
# run.c:195:     ss /= size;
	vdivss	-288(%rbp), %xmm0, %xmm0	# %sfp, ss, ss
# run.c:196:     ss += 1e-5f;
	vaddss	.LC6(%rip), %xmm0, %xmm0	#, ss, ss
	vxorps	%xmm1, %xmm1, %xmm1	# tmp1742
	vucomiss	%xmm0, %xmm1	# ss, tmp1742
	ja	.L135	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vsqrtss	%xmm0, %xmm0, %xmm0	# ss, _1207
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	.LC7(%rip), %xmm7	#, tmp2481
	vdivss	%xmm0, %xmm7, %xmm0	# _1207, tmp2481, ss
	jmp	.L137	#
.L503:
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	80(%rax), %rsi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wo, _115
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	144(%rax), %rcx	# MEM[(struct RunState *)transformer_180(D) + 128B].xb2, _117
	jmp	.L226	#
.L365:
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%r13d, %r13d	#
# run.c:262:         float val = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# tmp.352
	jmp	.L323	#
.L502:
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	vxorps	%xmm7, %xmm7, %xmm7	# tmp3066
	leaq	-52(%rbp), %rax	#, tmp2486
	leaq	-56(%rbp), %rbx	#, tmp2485
	xorl	%r8d, %r8d	# i
	vcvtsi2ssl	%r15d, %xmm7, %xmm0	# tmp1708, tmp3066, tmp2519
	vmovss	.LC7(%rip), %xmm5	#, tmp2481
	movq	%rax, -136(%rbp)	# tmp2486, %sfp
	vmovss	%xmm5, -64(%rbp)	# tmp2481, %sfp
	vmovss	.LC8(%rip), %xmm5	#, tmp2482
	vmovss	%xmm0, -72(%rbp)	# tmp2519, %sfp
	vcvtsi2ssl	-120(%rbp), %xmm7, %xmm0	# %sfp, tmp3070, tmp2520
	vmovss	%xmm5, -96(%rbp)	# tmp2482, %sfp
	vmovss	%xmm0, -104(%rbp)	# tmp2520, %sfp
	vzeroupper
	jmp	.L181	#
.L332:
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	#
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%ecx, %ecx	# tmp.785
	jmp	.L133	#
.L348:
# run.c:261:     for (i = 0; i < d; i++) {
	movq	-264(%rbp), %rsi	# %sfp, _9
	movq	-152(%rbp), %rdx	# %sfp, x
	xorl	%eax, %eax	# ivtmp.973
	jmp	.L241	#
.L512:
	cmpl	$6, %r13d	#, _966
	jbe	.L364	#,
	movl	-284(%rbp), %edx	# %sfp, bnd.362
	vshufps	$0, %xmm0, %xmm0, %xmm2	# ss, vect_cst__1037
	vinsertf128	$1, %xmm2, %ymm2, %ymm2	# vect_cst__1037, vect_cst__1037
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, _1674
.L316:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rcx,%rax), %ymm2, %ymm1	# MEM <vector(8) float> [(float *)x_182 + ivtmp.869_1779 * 1], vect_cst__1037, vect__531.371
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rbx,%rax), %ymm1, %ymm1	# MEM <vector(8) float> [(float *)_151 + ivtmp.869_1779 * 1], vect__531.371, vect__533.372
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%ymm1, (%rcx,%rax)	# vect__533.372, MEM <vector(8) float> [(float *)x_182 + ivtmp.869_1779 * 1]
	addq	$32, %rax	#, ivtmp.869
	cmpq	%rax, %rdx	# ivtmp.869, _1674
	jne	.L316	#,
	movl	-284(%rbp), %ecx	# %sfp, dim
	movl	%ecx, %eax	# dim, tmp.378
	andl	$-8, %eax	#, tmp.378
	movl	%eax, %edx	# tmp.378,
	cmpl	%eax, %ecx	# tmp.378, dim
	je	.L302	#,
	subl	%eax, %ecx	# tmp.378, niters.389
	movl	%ecx, %r12d	# niters.389, niters.389
	leal	-1(%rcx), %ecx	#, tmp2420
	cmpl	$2, %ecx	#, tmp2420
	jbe	.L319	#,
.L315:
	movq	-152(%rbp), %rcx	# %sfp, x
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vshufps	$0, %xmm0, %xmm0, %xmm1	# ss, tmp2423
	leaq	(%rcx,%rdx,4), %rcx	#, vectp_x.383
	vmulps	(%rcx), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_x.383_997], tmp2423, vect__1062.385
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulps	(%rbx,%rdx,4), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp.380_1003], vect__1062.385, vect__1061.386
	movl	%r12d, %edx	# niters.389, niters_vector_mult_vf.377
	andl	$-4, %edx	#, niters_vector_mult_vf.377
	addl	%edx, %eax	# niters_vector_mult_vf.377, tmp.378
	andl	$3, %r12d	#, niters.389
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovups	%xmm1, (%rcx)	# vect__1061.386, MEM <vector(4) float> [(float *)vectp_x.383_997]
	je	.L302	#,
.L319:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movslq	%eax, %rsi	# tmp.378, tmp.378
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	-152(%rbp), %rdi	# %sfp, x
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	0(,%rsi,4), %rdx	#, _527
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rdi,%rdx), %rcx	#, _530
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rcx), %xmm0, %xmm1	# *_530, ss, tmp2430
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rbx,%rsi,4), %xmm1, %xmm1	# *_528, tmp2430, tmp2431
# run.c:199:     for (int j = 0; j < size; j++) {
	movl	-284(%rbp), %esi	# %sfp, dim
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%rcx)	# tmp2431, *_530
# run.c:199:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %esi	# j, dim
	jle	.L302	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	4(%rdi,%rdx), %rcx	#, _1062
# run.c:199:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rcx), %xmm0, %xmm1	# *_1062, ss, tmp2434
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	4(%rbx,%rdx), %xmm1, %xmm1	# *_1064, tmp2434, tmp2435
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm1, (%rcx)	# tmp2435, *_1062
# run.c:199:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %esi	# j, dim
	jle	.L302	#,
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	8(%rdi,%rdx), %rax	#, _1020
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	(%rax), %xmm0, %xmm0	# *_1020, ss, tmp2437
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmulss	8(%rbx,%rdx), %xmm0, %xmm0	# *_1022, tmp2437, tmp2438
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	vmovss	%xmm0, (%rax)	# tmp2438, *_1020
	jmp	.L302	#
.L511:
	movq	-152(%rbp), %rdx	# %sfp, x
# run.c:197:     ss = 1.0f / sqrtf(ss);
	xorl	%eax, %eax	# ivtmp.864
	jmp	.L321	#
.L360:
# run.c:261:     for (i = 0; i < d; i++) {
	movl	%r11d, %ecx	# dim, niters.420
# run.c:392:         for (int i = 0; i < dim; i++) {
	xorl	%esi, %esi	# i
# run.c:261:     for (i = 0; i < d; i++) {
	xorl	%eax, %eax	#
	jmp	.L294	#
.L353:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movl	%r11d, %esi	# dim, niters.519
	xorl	%eax, %eax	#
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%ecx, %ecx	# j
	jmp	.L254	#
.L334:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movl	%r11d, %ecx	# dim, niters.759
	xorl	%eax, %eax	#
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%esi, %esi	# j
	jmp	.L145	#
.L362:
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%edx, %edx	#
# run.c:191:     float ss = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.401
	jmp	.L303	#
.L238:
# run.c:371:         rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);
	movq	-128(%rbp), %rax	# %sfp, transformer
	movq	48(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_ffn_weight, _125
	jmp	.L331	#
.L350:
# run.c:261:     for (i = 0; i < d; i++) {
	movl	%r11d, %esi	# dim, niters.564
	xorl	%eax, %eax	#
# run.c:366:         for (int i = 0; i < dim; i++) {
	xorl	%edi, %edi	# i
	jmp	.L236	#
.L131:
# run.c:195:     ss /= size;
	vxorps	%xmm5, %xmm5, %xmm5	# tmp3272
	vcvtsi2ssl	-284(%rbp), %xmm5, %xmm0	# %sfp, tmp3272, tmp2526
	vmovss	%xmm0, -288(%rbp)	# tmp2526, %sfp
	jmp	.L284	#
.L364:
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.378
# run.c:197:     ss = 1.0f / sqrtf(ss);
	xorl	%edx, %edx	#
	jmp	.L315	#
.L488:
	movq	-72(%rbp), %r12	# %sfp, _2479
	movq	-96(%rbp), %r13	# %sfp, ivtmp.1018
	jmp	.L201	#
.L482:
	movl	%r11d, -72(%rbp)	# dim, %sfp
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vzeroupper
	call	sqrtf@PLT	#
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vmovss	-64(%rbp), %xmm5	# %sfp, tmp2481
	movl	-72(%rbp), %r11d	# %sfp, dim
	vdivss	%xmm0, %xmm5, %xmm0	# tmp2514, tmp2481, ss
	jmp	.L250	#
.L135:
	movl	%r11d, -64(%rbp)	# dim, %sfp
# run.c:197:     ss = 1.0f / sqrtf(ss);
	vzeroupper
	call	sqrtf@PLT	#
	movl	-64(%rbp), %r11d	# %sfp, dim
	jmp	.L141	#
.L486:
	vzeroupper
	call	sqrtf@PLT	#
	jmp	.L310	#
	.cfi_endproc
.LFE78:
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
.LFB80:
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
	movq	%rax, 24(%rsp)	# tmp191, D.9564
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
	je	.L531	#,
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
	jne	.L530	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	leaq	20(%rsp), %rax	#, tmp179
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	xorl	%ebx, %ebx	# ivtmp.1180
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%rax, 8(%rsp)	# tmp179, %sfp
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	testl	%r13d, %r13d	# vocab_size
	jle	.L518	#,
	.p2align 4,,10
	.p2align 3
.L517:
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	movq	8(%rbp), %rdi	# t_38(D)->vocab_scores, tmp161
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%r12, %rcx	# file,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	addq	%rbx, %rdi	# ivtmp.1180, tmp161
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	call	fread@PLT	#
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	cmpq	$1, %rax	#, tmp187
	jne	.L530	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	8(%rsp), %rdi	# %sfp,
	movq	%r12, %rcx	# file,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread@PLT	#
# run.c:444:         if (fread(&len, sizeof(int), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	cmpq	$1, %rax	#, tmp188
	jne	.L530	#,
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
	jne	.L530	#,
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movq	0(%rbp), %rdx	# t_38(D)->vocab, t_38(D)->vocab
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movslq	20(%rsp), %rax	# len, len
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movq	(%rdx,%rbx,2), %rdx	# *_28, *_28
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	addq	$4, %rbx	#, ivtmp.1180
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movb	$0, (%rdx,%rax)	#, *_32
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	cmpq	%rbx, (%rsp)	# ivtmp.1180, %sfp
	jne	.L517	#,
.L518:
# run.c:449:     fclose(file);
	movq	%r12, %rdi	# file,
	call	fclose@PLT	#
# run.c:450: }
	movq	24(%rsp), %rax	# D.9564, tmp192
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp192
	jne	.L532	#,
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
.L530:
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
.L531:
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
.L532:
# run.c:450: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE80:
	.size	build_tokenizer, .-build_tokenizer
	.p2align 4
	.globl	free_tokenizer
	.type	free_tokenizer, @function
free_tokenizer:
.LFB81:
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
	jle	.L534	#,
	xorl	%ebx, %ebx	# ivtmp.1187
	.p2align 4,,10
	.p2align 3
.L535:
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	movq	0(%rbp), %rax	# t_13(D)->vocab, t_13(D)->vocab
	movq	(%rax,%rbx,8), %rdi	# *_4, *_4
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	addq	$1, %rbx	#, ivtmp.1187
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	call	free@PLT	#
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	cmpl	%ebx, 24(%rbp)	# ivtmp.1187, t_13(D)->vocab_size
	jg	.L535	#,
.L534:
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
.LFE81:
	.size	free_tokenizer, .-free_tokenizer
	.section	.rodata.str1.1
.LC44:
	.string	"<0x%02hhX>"
	.text
	.p2align 4
	.globl	decode
	.type	decode, @function
decode:
.LFB82:
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
	movq	%rax, 8(%rsp)	# tmp114, D.9587
	xorl	%eax, %eax	# tmp114
# run.c:460:     char *piece = t->vocab[token];
	movq	(%rdi), %rax	# t_15(D)->vocab, t_15(D)->vocab
	movq	(%rax,%rdx,8), %rbx	# *_4, <retval>
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %esi	#, tmp111
	jne	.L539	#,
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	xorl	%eax, %eax	# tmp108
	cmpb	$32, (%rbx)	#, *piece_17
	sete	%al	#, tmp108
	addq	%rax, %rbx	# tmp108, <retval>
.L539:
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	xorl	%eax, %eax	#
	leaq	7(%rsp), %rdx	#, tmp100
	leaq	.LC44(%rip), %rsi	#, tmp101
	movq	%rbx, %rdi	# <retval>,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp113
	jne	.L538	#,
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	7(%rsp), %eax	# byte_val, byte_val
	addl	%eax, %eax	# tmp104
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%rbp,%rax), %rbx	#, <retval>
.L538:
# run.c:470: }
	movq	8(%rsp), %rax	# D.9587, tmp115
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	jne	.L543	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L543:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE82:
	.size	decode, .-decode
	.section	.rodata.str1.1
.LC45:
	.string	"%s"
	.text
	.p2align 4
	.globl	safe_printf
	.type	safe_printf, @function
safe_printf:
.LFB83:
	.cfi_startproc
	endbr64	
# run.c:475:     if (piece == NULL) { return; }
	testq	%rdi, %rdi	# piece
	je	.L558	#,
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
	je	.L556	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%rdi)	#, MEM[(char *)piece_10(D) + 1B]
	jne	.L546	#,
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	call	__ctype_b_loc@PLT	#
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movq	(%rax), %rax	# *_3, *_3
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	testw	$24576, (%rax,%rbp,2)	#, *_7
	je	.L556	#,
.L546:
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
.L556:
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
.L558:
	.cfi_restore 3
	.cfi_restore 6
	ret	
	.cfi_endproc
.LFE83:
	.size	safe_printf, .-safe_printf
	.p2align 4
	.globl	str_lookup
	.type	str_lookup, @function
str_lookup:
.LFB84:
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
.L563:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r15	# __u, __l
	jnb	.L569	#,
.L565:
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
	js	.L567	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L564	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%rbx), %r15	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r15	# __u, __l
	jb	.L565	#,
.L569:
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
.L567:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%rbx, %r14	# __idx, __u
	jmp	.L563	#
	.p2align 4,,10
	.p2align 3
.L564:
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
.LFE84:
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
.LFB85:
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
	je	.L646	#,
# run.c:498:     if (t->sorted_vocab == NULL) {
	cmpq	$0, 16(%rdi)	#, t_129(D)->sorted_vocab
	movq	%rsi, %r15	# tmp308, text
	movl	%edx, %r12d	# tmp309, bos
	je	.L647	#,
.L572:
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
	jne	.L576	#,
# run.c:514:     *n_tokens = 0;
	movl	$0, (%r9)	#, *n_tokens_138(D)
	xorl	%edx, %edx	#
# run.c:523:     if (text[0] != '\0') {
	cmpb	$0, (%r15)	#, *text_127(D)
	jne	.L648	#,
.L578:
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	cmpb	$0, 76(%rsp)	#, %sfp
	je	.L608	#,
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	leal	1(%rdx), %eax	#, tmp292
	movslq	%edx, %rdx	# _96, _96
	movl	%eax, (%r9)	# tmp292, *n_tokens_138(D)
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	movq	64(%rsp), %rax	# %sfp, tokens
	movl	$2, (%rax,%rdx,4)	#, *_100
.L608:
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
.L576:
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
	je	.L578	#,
.L648:
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
.L581:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r11, %r10	# __u, __l
	jnb	.L649	#,
.L583:
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
	jne	.L580	#,
	movzbl	1(%rbp), %esi	# MEM <char[1:2]> [(void *)_179], MEM <char[1:2]> [(void *)_179]
	negl	%esi	# _180
.L580:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:34:       if (__comparison < 0)
	testl	%esi, %esi	# _180
	js	.L609	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L582	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%rax), %r10	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r11, %r10	# __u, __l
	jb	.L583	#,
.L649:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	$-1, %eax	#, iftmp.16_183
.L584:
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
	je	.L645	#,
	movq	%r15, 8(%rsp)	# text, %sfp
	movq	%r14, %rbp	# _27, _27
	movq	%r9, 32(%rsp)	# n_tokens, %sfp
.L585:
# run.c:544:         if ((*c & 0xC0) != 0x80) {
	movl	%eax, %edx	# _10, tmp250
	andl	$192, %edx	#, tmp250
# run.c:544:         if ((*c & 0xC0) != 0x80) {
	cmpl	$128, %edx	#, tmp250
	je	.L650	#,
	movq	$1, 24(%rsp)	#, %sfp
	movq	%rbx, %rdx	# str_buffer, _387
	movl	$1, %ecx	#, _391
.L587:
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
	jne	.L588	#,
	testb	%cl, %cl	# _391
	jne	.L651	#,
.L588:
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movq	16(%rsp), %rax	# %sfp, t
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:27:   __l = 0;
	xorl	%r12d, %r12d	# __l
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movslq	24(%rax), %r13	# t_129(D)->vocab_size, __u
	.p2align 4,,10
	.p2align 3
.L591:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r13, %r12	# __u, __l
	jnb	.L652	#,
.L593:
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
	js	.L611	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L592	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%r15), %r12	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r13, %r12	# __u, __l
	jb	.L593	#,
.L652:
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
.L595:
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
	je	.L597	#,
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
	je	.L597	#,
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
	jne	.L597	#,
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
.L597:
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movq	8(%rsp), %rax	# %sfp, text
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	addq	$1, 8(%rsp)	#, %sfp
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movzbl	1(%rax), %eax	# MEM[(char *)c_60 + 1B], _10
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	testb	%al, %al	# _10
	jne	.L585	#,
.L654:
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movq	32(%rsp), %r9	# %sfp, n_tokens
.L645:
	movl	(%r9), %edx	# *n_tokens_138(D), _96
	movq	64(%rsp), %rbp	# %sfp, tokens
	movq	%r9, %r8	# n_tokens, n_tokens
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	$1, %edx	#, _96
	jle	.L643	#,
	.p2align 4,,10
	.p2align 3
.L653:
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
.L604:
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	16(%rsp), %r14	# %sfp, t
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	40(%rsp), %rdi	# %sfp, tokens
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$2, %esi	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:27:   __l = 0;
	xorl	%r13d, %r13d	# __l
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	8(%rsp), %rdx	# %sfp, ivtmp.1219
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	(%r14), %rax	# t_129(D)->vocab, _59
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movslq	4(%rdi,%rdx,4), %rcx	# MEM[(int *)tokens_142(D) + 4B + ivtmp.1219_272 * 4], MEM[(int *)tokens_142(D) + 4B + ivtmp.1219_272 * 4]
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movslq	(%rdi,%rdx,4), %rdx	# MEM[(int *)tokens_142(D) + ivtmp.1219_272 * 4], MEM[(int *)tokens_142(D) + ivtmp.1219_272 * 4]
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
.L599:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r13	# __u, __l
	jnb	.L602	#,
.L601:
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
	js	.L612	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L600	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%r15), %r13	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r13	# __u, __l
	jb	.L601	#,
.L602:
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movq	48(%rsp), %rax	# %sfp, n_tokens
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	addq	$1, 8(%rsp)	#, %sfp
	movq	8(%rsp), %rcx	# %sfp, ivtmp.1219
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movl	(%rax), %edx	# *n_tokens_138(D), _96
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	leal	-1(%rdx), %eax	#, tmp287
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	%ecx, %eax	# tmp421, tmp287
	jg	.L604	#,
# run.c:595:         if (best_idx == -1) {
	movl	32(%rsp), %esi	# %sfp, best_idx
	movl	24(%rsp), %edi	# %sfp, best_id
	movq	40(%rsp), %rbp	# %sfp, tokens
	movq	48(%rsp), %r8	# %sfp, n_tokens
	cmpl	$-1, %esi	#, best_idx
	je	.L643	#,
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
	jle	.L605	#,
	cltq
	.p2align 4,,10
	.p2align 3
.L606:
# run.c:603:             tokens[i] = tokens[i+1];
	movl	4(%rbp,%rax,4), %edx	# MEM[(int *)tokens_142(D) + 4B + ivtmp.1211_267 * 4], MEM[(int *)tokens_142(D) + 4B + ivtmp.1211_267 * 4]
	movl	%edx, 0(%rbp,%rax,4)	# MEM[(int *)tokens_142(D) + 4B + ivtmp.1211_267 * 4], MEM[(int *)tokens_142(D) + ivtmp.1211_267 * 4]
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	movl	(%r8), %ecx	# *n_tokens_138(D), tmp423
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	addq	$1, %rax	#, ivtmp.1211
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	leal	-1(%rcx), %edx	#, _96
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	cmpl	%eax, %edx	# ivtmp.1211, _96
	jg	.L606	#,
.L605:
# run.c:605:         (*n_tokens)--; // token length decreased
	movl	%edx, (%r8)	# _96, *n_tokens_138(D)
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	$1, %edx	#, _96
	jg	.L653	#,
.L643:
	movq	%r8, %r9	# n_tokens, n_tokens
	jmp	.L578	#
	.p2align 4,,10
	.p2align 3
.L611:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%r15, %r13	# __idx, __u
	jmp	.L591	#
.L592:
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
	je	.L595	#,
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
	jne	.L585	#,
	jmp	.L654	#
	.p2align 4,,10
	.p2align 3
.L612:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%r15, %r14	# __idx, __u
	jmp	.L599	#
	.p2align 4,,10
	.p2align 3
.L600:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	8(%r12), %eax	# MEM[(struct TokenIndex *)__p_208].id, iftmp.16_213
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	cmpl	$-1, %eax	#, iftmp.16_213
	je	.L602	#,
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
	jmp	.L602	#
.L651:
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	addq	$1, 8(%rsp)	#, %sfp
.L589:
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
	jmp	.L587	#
.L609:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%rax, %r11	# __idx, __u
	jmp	.L581	#
.L582:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	8(%rcx), %eax	# MEM[(struct TokenIndex *)__p_178].id, iftmp.16_183
	jmp	.L584	#
.L647:
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
	jle	.L575	#,
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	16(%rsp), %rax	# %sfp, t
	movq	%rdi, %rdx	# _6, ivtmp.1233
	movq	(%rax), %rcx	# t_129(D)->vocab, _7
	xorl	%eax, %eax	# ivtmp.1230
.L574:
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	(%rcx,%rax,8), %rsi	# MEM[(char * *)_7 + ivtmp.1230_276 * 8], _15
# run.c:503:             t->sorted_vocab[i].id = i;
	movl	%eax, 8(%rdx)	# ivtmp.1230, MEM[(int *)_281 + 8B]
# run.c:501:         for (int i = 0; i < t->vocab_size; i++) {
	addq	$1, %rax	#, ivtmp.1230
	addq	$16, %rdx	#, ivtmp.1233
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	%rsi, -16(%rdx)	# _15, MEM[(char * *)_281]
# run.c:501:         for (int i = 0; i < t->vocab_size; i++) {
	cmpq	%rax, %rbx	# ivtmp.1230, _4
	jne	.L574	#,
.L575:
# run.c:505:         qsort(t->sorted_vocab, t->vocab_size, sizeof(TokenIndex), compare_tokens);
	leaq	compare_tokens(%rip), %rcx	#, tmp234
	movl	$16, %edx	#,
	movq	%rbx, %rsi	# _4,
	movq	%r9, 8(%rsp)	# n_tokens, %sfp
	call	qsort@PLT	#
	movq	8(%rsp), %r9	# %sfp, n_tokens
	jmp	.L572	#
.L650:
	movq	$0, 24(%rsp)	#, %sfp
	jmp	.L589	#
.L646:
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
.LFE85:
	.size	encode, .-encode
	.p2align 4
	.globl	sample_argmax
	.type	sample_argmax, @function
sample_argmax:
.LFB86:
	.cfi_startproc
	endbr64	
# run.c:634:     float max_p = probabilities[0];
	vmovss	(%rdi), %xmm0	# *probabilities_12(D), max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %esi	#, n
	jle	.L660	#,
	movl	%esi, %esi	# n, _3
	movl	$1, %eax	#, ivtmp.1244
# run.c:633:     int max_i = 0;
	xorl	%edx, %edx	# <retval>
	.p2align 4,,10
	.p2align 3
.L659:
# run.c:636:         if (probabilities[i] > max_p) {
	vmovss	(%rdi,%rax,4), %xmm1	# MEM[(float *)probabilities_12(D) + ivtmp.1244_7 * 4], _26
# run.c:636:         if (probabilities[i] > max_p) {
	vcomiss	%xmm0, %xmm1	# max_p, _26
# run.c:638:             max_p = probabilities[i];
	vmaxss	%xmm0, %xmm1, %xmm0	# max_p, _26, max_p
	cmova	%eax, %edx	# ivtmp.1244,, <retval>
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1244
	cmpq	%rax, %rsi	# ivtmp.1244, _3
	jne	.L659	#,
# run.c:642: }
	movl	%edx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L660:
# run.c:633:     int max_i = 0;
	xorl	%edx, %edx	# <retval>
# run.c:642: }
	movl	%edx, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE86:
	.size	sample_argmax, .-sample_argmax
	.p2align 4
	.globl	sample_mult
	.type	sample_mult, @function
sample_mult:
.LFB87:
	.cfi_startproc
	endbr64	
# run.c:648:     for (int i = 0; i < n; i++) {
	testl	%esi, %esi	# n
	jle	.L664	#,
	movslq	%esi, %rdx	# n, _5
	xorl	%eax, %eax	# ivtmp.1256
# run.c:647:     float cdf = 0.0f;
	vxorps	%xmm1, %xmm1, %xmm1	# cdf
	jmp	.L668	#
	.p2align 4,,10
	.p2align 3
.L672:
# run.c:648:     for (int i = 0; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1256
	cmpq	%rax, %rdx	# ivtmp.1256, _5
	je	.L664	#,
.L668:
# run.c:649:         cdf += probabilities[i];
	vaddss	(%rdi,%rax,4), %xmm1, %xmm1	# MEM[(float *)probabilities_11(D) + ivtmp.1256_16 * 4], cdf, cdf
# run.c:650:         if (coin < cdf) {
	vcomiss	%xmm0, %xmm1	# coin, cdf
	jbe	.L672	#,
# run.c:655: }
	ret	
	.p2align 4,,10
	.p2align 3
.L664:
# run.c:654:     return n - 1; // in case of rounding errors
	leal	-1(%rsi), %eax	#, <retval>
# run.c:655: }
	ret	
	.cfi_endproc
.LFE87:
	.size	sample_mult, .-sample_mult
	.p2align 4
	.globl	sample_topp
	.type	sample_topp, @function
sample_topp:
.LFB89:
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
	jle	.L674	#,
	movq	%rdi, %rcx	# tmp126, probabilities
	movslq	%esi, %rsi	# n, _59
	xorl	%eax, %eax	# ivtmp.1278
# run.c:671:     int n0 = 0;
	xorl	%ebp, %ebp	# n0
	.p2align 4,,10
	.p2align 3
.L677:
# run.c:677:         if (probabilities[i] >= cutoff) {
	vmovss	(%rcx,%rax,4), %xmm2	# MEM[(float *)probabilities_52(D) + ivtmp.1278_61 * 4], _7
# run.c:677:         if (probabilities[i] >= cutoff) {
	vcomiss	%xmm3, %xmm2	# cutoff, _7
	jb	.L675	#,
# run.c:678:             probindex[n0].index = i;
	movslq	%ebp, %rdx	# n0, n0
# run.c:680:             n0++;
	addl	$1, %ebp	#, n0
# run.c:678:             probindex[n0].index = i;
	leaq	(%rbx,%rdx,8), %rdx	#, _10
# run.c:678:             probindex[n0].index = i;
	movl	%eax, 4(%rdx)	# ivtmp.1278, _10->index
# run.c:679:             probindex[n0].prob = probabilities[i];
	vmovss	%xmm2, (%rdx)	# _7, _10->prob
.L675:
# run.c:676:     for (int i = 0; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1278
	cmpq	%rax, %rsi	# ivtmp.1278, _59
	jne	.L677	#,
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
	jle	.L691	#,
# run.c:686:     float cumulative_prob = 0.0f;
	vmovss	12(%rsp), %xmm0	# %sfp, topp
# run.c:688:     for (int i = 0; i < n0; i++) {
	xorl	%eax, %eax	# ivtmp.1273
# run.c:686:     float cumulative_prob = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# cumulative_prob
	jmp	.L683	#
	.p2align 4,,10
	.p2align 3
.L699:
# run.c:688:     for (int i = 0; i < n0; i++) {
	addq	$1, %rax	#, ivtmp.1273
	cmpq	%rax, %r12	# ivtmp.1273, _11
	je	.L703	#,
.L683:
# run.c:689:         cumulative_prob += probindex[i].prob;
	vaddss	(%rbx,%rax,8), %xmm2, %xmm2	# MEM[(float *)probindex_41(D) + ivtmp.1273_72 * 8], cumulative_prob, cumulative_prob
# run.c:690:         if (cumulative_prob > topp) {
	vcomiss	%xmm0, %xmm2	# topp, cumulative_prob
	jbe	.L699	#,
	movl	%eax, %ecx	# ivtmp.1273, i
.L680:
# run.c:697:     float r = coin * cumulative_prob;
	vmulss	%xmm1, %xmm2, %xmm2	# coin, cumulative_prob, r
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	testl	%ecx, %ecx	# i
	js	.L685	#,
.L690:
	movq	%rbx, %rax	# probindex, ivtmp.1269
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	xorl	%edx, %edx	# i
# run.c:698:     float cdf = 0.0f;
	vxorps	%xmm0, %xmm0, %xmm0	# cdf
	jmp	.L689	#
	.p2align 4,,10
	.p2align 3
.L701:
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	addl	$1, %edx	#, i
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	addq	$8, %rax	#, ivtmp.1269
	cmpl	%edx, %ecx	# i, i
	jl	.L685	#,
.L689:
# run.c:700:         cdf += probindex[i].prob;
	vaddss	(%rax), %xmm0, %xmm0	# MEM[(float *)_18], cdf, cdf
# run.c:701:         if (r < cdf) {
	vcomiss	%xmm2, %xmm0	# r, cdf
	jbe	.L701	#,
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
.L685:
	.cfi_restore_state
# run.c:705:     return probindex[last_idx].index; // in case of rounding errors
	movslq	%ecx, %rcx	# i, i
	salq	$3, %rcx	#, _85
.L679:
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
.L703:
	.cfi_restore_state
# run.c:697:     float r = coin * cumulative_prob;
	vmulss	%xmm1, %xmm2, %xmm2	# coin, cumulative_prob, r
	jmp	.L690	#
	.p2align 4,,10
	.p2align 3
.L674:
# run.c:683:     qsort(probindex, n0, sizeof(ProbIndex), compare);
	leaq	compare(%rip), %rcx	#, tmp121
	movl	$8, %edx	#,
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# probindex,
	call	qsort@PLT	#
	movq	$-8, %rcx	#, _85
	jmp	.L679	#
.L691:
# run.c:686:     float cumulative_prob = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# cumulative_prob
	jmp	.L680	#
	.cfi_endproc
.LFE89:
	.size	sample_topp, .-sample_topp
	.p2align 4
	.type	sample.part.0, @function
sample.part.0:
.LFB102:
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
	jle	.L705	#,
	leal	-1(%r13), %eax	#, _169
	movslq	%r13d, %rcx	# _89, _89
	movl	%eax, -68(%rbp)	# _169, %sfp
	cmpl	$2, %eax	#, _169
	jbe	.L706	#,
	leaq	(%rsi,%rcx,4), %rax	#, tmp225
	leaq	16(%rdi), %rdx	#, tmp226
	cmpq	%rax, %rdx	# tmp225, tmp226
	jnb	.L739	#,
	leaq	20(%rdi), %rax	#, tmp229
	cmpq	%rax, %rsi	# tmp229, logits
	jnb	.L739	#,
.L706:
	movq	%r15, %rax	# logits, ivtmp.1363
	leaq	(%r15,%rcx,4), %rdx	#, _52
	.p2align 4,,10
	.p2align 3
.L714:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vmovss	(%rax), %xmm0	# MEM[(float *)_121], MEM[(float *)_121]
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	addq	$4, %rax	#, ivtmp.1363
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vdivss	16(%r12), %xmm0, %xmm0	# sampler_7(D)->temperature, MEM[(float *)_121], tmp259
	vmovss	%xmm0, -4(%rax)	# tmp259, MEM[(float *)_121]
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	cmpq	%rax, %rdx	# ivtmp.1363, _52
	jne	.L714	#,
# run.c:206:     float max_val = x[0];
	vmovss	(%r15), %xmm1	# *logits_4(D), max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpl	$1, %r13d	#, _89
	je	.L716	#,
.L713:
	leal	-2(%r13), %edx	#, tmp262
	leaq	4(%r15), %rax	#, ivtmp.1356
	leaq	8(%r15,%rdx,4), %rdx	#, _261
	.p2align 4,,10
	.p2align 3
.L719:
# run.c:208:         if (x[i] > max_val) {
	vmovss	(%rax), %xmm0	# MEM[(float *)_140], _115
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.1356
# run.c:209:             max_val = x[i];
	vmaxss	%xmm1, %xmm0, %xmm1	# max_val, _115, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rdx, %rax	# _261, ivtmp.1356
	jne	.L719	#,
.L716:
	leaq	(%r15,%rcx,4), %rax	#, _262
	movq	%r15, %r14	# logits, ivtmp.1346
# run.c:213:     float sum = 0.0f;
	vxorps	%xmm2, %xmm2, %xmm2	# sum
# run.c:209:             max_val = x[i];
	movq	%r15, %rbx	# logits, ivtmp.1350
	movq	%rax, -64(%rbp)	# _262, %sfp
	.p2align 4,,10
	.p2align 3
.L720:
# run.c:215:         x[i] = expf(x[i] - max_val);
	vmovss	(%rbx), %xmm0	# MEM[(float *)_238], MEM[(float *)_238]
	vmovss	%xmm2, -56(%rbp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %rbx	#, ivtmp.1350
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
	cmpq	%rax, %rbx	# _262, ivtmp.1350
# run.c:216:         sum += x[i];
	vaddss	%xmm0, %xmm2, %xmm2	# _64, sum, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	jne	.L720	#,
	cmpl	$6, -68(%rbp)	#, %sfp
	jbe	.L738	#,
	movl	%r13d, %edx	# _89, bnd.1292
	vshufps	$0, %xmm2, %xmm2, %xmm1	# sum, vect_cst__46
	vinsertf128	$1, %xmm1, %ymm1, %ymm1	# vect_cst__46, vect_cst__46
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, tmp282
	addq	%r15, %rdx	# logits, _180
	.p2align 4,,10
	.p2align 3
.L725:
# run.c:220:         x[i] /= sum;
	vmovups	(%r14), %ymm3	# MEM <vector(8) float> [(float *)_227], tmp331
	addq	$32, %r14	#, ivtmp.1346
	vdivps	%ymm1, %ymm3, %ymm0	# vect_cst__46, tmp331, vect__74.1298
	vmovups	%ymm0, -32(%r14)	# vect__74.1298, MEM <vector(8) float> [(float *)_227]
	cmpq	%r14, %rdx	# ivtmp.1346, _180
	jne	.L725	#,
	movl	%r13d, %eax	# _89, tmp.1304
	andl	$-8, %eax	#, tmp.1304
	movl	%eax, %edx	# tmp.1304,
	cmpl	%r13d, %eax	# _89, tmp.1304
	je	.L771	#,
	vzeroupper
.L724:
	movl	%r13d, %ecx	# _89, niters.1301
	subl	%edx, %ecx	# niters_vector_mult_vf.1293, niters.1301
	leal	-1(%rcx), %esi	#, tmp285
	cmpl	$2, %esi	#, tmp285
	jbe	.L728	#,
	leaq	(%r15,%rdx,4), %rdx	#, vectp_logits.1306
	vshufps	$0, %xmm2, %xmm2, %xmm0	# sum, tmp289
	vmovups	(%rdx), %xmm5	# MEM <vector(4) float> [(float *)vectp_logits.1306_150], tmp334
	vdivps	%xmm0, %xmm5, %xmm0	# tmp289, tmp334, vect__95.1308
	vmovups	%xmm0, (%rdx)	# vect__95.1308, MEM <vector(4) float> [(float *)vectp_logits.1306_150]
	movl	%ecx, %edx	# niters.1301, niters_vector_mult_vf.1303
	andl	$-4, %edx	#, niters_vector_mult_vf.1303
	addl	%edx, %eax	# niters_vector_mult_vf.1303, tmp.1304
	andl	$3, %ecx	#, niters.1301
	je	.L705	#,
.L728:
# run.c:220:         x[i] /= sum;
	movslq	%eax, %rdx	# tmp.1304, tmp.1304
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
	jge	.L705	#,
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
	jle	.L705	#,
# run.c:220:         x[i] /= sum;
	leaq	8(%r15,%rdx), %rax	#, _134
# run.c:220:         x[i] /= sum;
	vmovss	(%rax), %xmm0	# *_134, *_134
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_134, tmp302
	vmovss	%xmm0, (%rax)	# tmp302, *_134
.L705:
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
	jnb	.L722	#,
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	vcomiss	.LC7(%rip), %xmm0	#, _27
	jb	.L765	#,
.L722:
# run.c:648:     for (int i = 0; i < n; i++) {
	testl	%r13d, %r13d	# _89
	jle	.L732	#,
	movslq	%r13d, %rdx	# _89, _101
	xorl	%eax, %eax	# ivtmp.1337
	vxorps	%xmm0, %xmm0, %xmm0	# cdf
	jmp	.L736	#
	.p2align 4,,10
	.p2align 3
.L772:
	addq	$1, %rax	#, ivtmp.1337
	cmpq	%rax, %rdx	# ivtmp.1337, _101
	je	.L732	#,
.L736:
# run.c:649:         cdf += probabilities[i];
	vaddss	(%r15,%rax,4), %xmm0, %xmm0	# MEM[(float *)logits_4(D) + ivtmp.1337_86 * 4], cdf, cdf
# run.c:650:         if (coin < cdf) {
	vcomiss	%xmm1, %xmm0	# _26, cdf
	jbe	.L772	#,
.L704:
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
.L739:
	.cfi_restore_state
	cmpl	$6, -68(%rbp)	#, %sfp
	jbe	.L737	#,
	movl	%r13d, %edx	# _89, bnd.1312
	vbroadcastss	16(%r12), %ymm1	# sampler_7(D)->temperature, vect_cst__218
	movq	%r15, %rax	# logits, ivtmp.1367
	shrl	$3, %edx	#,
	salq	$5, %rdx	#, tmp235
	addq	%r15, %rdx	# logits, _167
	.p2align 4,,10
	.p2align 3
.L709:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vmovups	(%rax), %ymm4	# MEM <vector(8) float> [(float *)_76], tmp319
	addq	$32, %rax	#, ivtmp.1367
	vdivps	%ymm1, %ymm4, %ymm0	# vect_cst__218, tmp319, vect__9.1318
	vmovups	%ymm0, -32(%rax)	# vect__9.1318, MEM <vector(8) float> [(float *)_76]
	cmpq	%rdx, %rax	# _167, ivtmp.1367
	jne	.L709	#,
	movl	%r13d, %eax	# _89, tmp.1324
	andl	$-8, %eax	#, tmp.1324
	movl	%eax, %edx	# tmp.1324,
	cmpl	%eax, %r13d	# tmp.1324, _89
	je	.L767	#,
	movl	%r13d, %esi	# _89, niters.1321
	subl	%eax, %esi	# tmp.1324, niters.1321
	leal	-1(%rsi), %r8d	#, tmp238
	cmpl	$2, %r8d	#, tmp238
	jbe	.L773	#,
	vzeroupper
.L708:
	leaq	(%r15,%rdx,4), %rdx	#, vectp_logits.1326
	vbroadcastss	16(%r12), %xmm0	# sampler_7(D)->temperature, tmp242
	vmovups	(%rdx), %xmm6	# MEM <vector(4) float> [(float *)vectp_logits.1326_249], tmp322
	vdivps	%xmm0, %xmm6, %xmm0	# tmp242, tmp322, vect__200.1328
	vmovups	%xmm0, (%rdx)	# vect__200.1328, MEM <vector(4) float> [(float *)vectp_logits.1326_249]
	movl	%esi, %edx	# niters.1321, niters_vector_mult_vf.1323
	andl	$-4, %edx	#, niters_vector_mult_vf.1323
	addl	%edx, %eax	# niters_vector_mult_vf.1323, tmp.1324
	andl	$3, %esi	#, niters.1321
	je	.L710	#,
.L711:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movslq	%eax, %rdx	# tmp.1324, tmp.1324
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
	jle	.L710	#,
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
	jge	.L710	#,
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	leaq	8(%r15,%rdx), %rax	#, _258
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	vmovss	(%rax), %xmm0	# *_258, *_258
	vdivss	16(%r12), %xmm0, %xmm0	# sampler_7(D)->temperature, *_258, tmp255
	vmovss	%xmm0, (%rax)	# tmp255, *_258
# run.c:206:     float max_val = x[0];
	vmovss	(%r15), %xmm1	# *logits_4(D), max_val
	jmp	.L713	#
	.p2align 4,,10
	.p2align 3
.L732:
# run.c:654:     return n - 1; // in case of rounding errors
	leal	-1(%r13), %eax	#, <retval>
	jmp	.L704	#
	.p2align 4,,10
	.p2align 3
.L765:
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
.L767:
	.cfi_restore_state
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L710:
# run.c:206:     float max_val = x[0];
	vmovss	(%r15), %xmm1	# *logits_4(D), max_val
	jmp	.L713	#
	.p2align 4,,10
	.p2align 3
.L771:
	vzeroupper
	jmp	.L705	#
.L738:
# run.c:214:     for (int i = 0; i < size; i++) {
	xorl	%edx, %edx	#
# run.c:219:     for (int i = 0; i < size; i++) {
	xorl	%eax, %eax	# tmp.1304
	jmp	.L724	#
.L737:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movl	%r13d, %esi	# _89, niters.1321
	xorl	%edx, %edx	#
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	xorl	%eax, %eax	# tmp.1324
	jmp	.L708	#
.L773:
	vzeroupper
	jmp	.L711	#
	.cfi_endproc
.LFE102:
	.size	sample.part.0, .-sample.part.0
	.p2align 4
	.globl	build_sampler
	.type	build_sampler, @function
build_sampler:
.LFB90:
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
.LFE90:
	.size	build_sampler, .-build_sampler
	.p2align 4
	.globl	free_sampler
	.type	free_sampler, @function
free_sampler:
.LFB91:
	.cfi_startproc
	endbr64	
# run.c:718:     free(sampler->probindex);
	movq	8(%rdi), %rdi	# sampler_3(D)->probindex, sampler_3(D)->probindex
	jmp	free@PLT	#
	.cfi_endproc
.LFE91:
	.size	free_sampler, .-free_sampler
	.p2align 4
	.globl	random_u32
	.type	random_u32, @function
random_u32:
.LFB92:
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
.LFE92:
	.size	random_u32, .-random_u32
	.p2align 4
	.globl	random_f32
	.type	random_f32, @function
random_f32:
.LFB93:
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
.LFE93:
	.size	random_f32, .-random_f32
	.p2align 4
	.globl	sample
	.type	sample, @function
sample:
.LFB94:
	.cfi_startproc
	endbr64	
# run.c:735:     if (sampler->temperature == 0.0f) {
	vxorps	%xmm0, %xmm0, %xmm0	# tmp92
	vucomiss	16(%rdi), %xmm0	# sampler_9(D)->temperature, tmp92
	jp	.L780	#,
	jne	.L780	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%rdi), %ecx	# sampler_9(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	vmovss	(%rsi), %xmm0	# *logits_10(D), max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %ecx	#, _2
	jle	.L786	#,
	movl	$1, %eax	#, ivtmp.1392
# run.c:633:     int max_i = 0;
	xorl	%edx, %edx	# <retval>
	.p2align 4,,10
	.p2align 3
.L785:
# run.c:636:         if (probabilities[i] > max_p) {
	vmovss	(%rsi,%rax,4), %xmm1	# MEM[(float *)logits_10(D) + ivtmp.1392_6 * 4], _31
# run.c:636:         if (probabilities[i] > max_p) {
	vcomiss	%xmm0, %xmm1	# max_p, _31
# run.c:638:             max_p = probabilities[i];
	vmaxss	%xmm0, %xmm1, %xmm0	# max_p, _31, max_p
	cmova	%eax, %edx	# ivtmp.1392,, <retval>
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1392
	cmpq	%rax, %rcx	# ivtmp.1392, _15
	jne	.L785	#,
.L779:
# run.c:755: }
	movl	%edx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L780:
	jmp	sample.part.0	#
	.p2align 4,,10
	.p2align 3
.L786:
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	xorl	%edx, %edx	# <retval>
# run.c:754:     return next;
	jmp	.L779	#
	.cfi_endproc
.LFE94:
	.size	sample, .-sample
	.p2align 4
	.globl	time_in_ms
	.type	time_in_ms, @function
time_in_ms:
.LFB95:
	.cfi_startproc
	endbr64	
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 48
# run.c:763:     clock_gettime(CLOCK_REALTIME, &time);
	xorl	%edi, %edi	#
# run.c:760: long time_in_ms() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	movq	%rax, 24(%rsp)	# tmp99, D.9867
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
	movq	24(%rsp), %rdx	# D.9867, tmp101
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	jne	.L793	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L793:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE95:
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
.LFB96:
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
	movq	%rax, 88(%rsp)	# tmp235, D.9911
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
	jle	.L851	#,
# run.c:786:     int token = prompt_tokens[0]; // kick off with the first token in the prompt
	movq	32(%rsp), %rcx	# %sfp, prompt_tokens
	movl	(%rcx), %ebp	# *prompt_tokens_36, token
# run.c:788:     while (pos < steps) {
	testl	%r12d, %r12d	# steps
	jle	.L797	#,
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	subl	$1, %eax	#, _149
# run.c:784:     long start = 0;  // used to time our code, only initialized after first iteration
	movq	$0, (%rsp)	#, %sfp
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	xorl	%ebx, %ebx	# ivtmp.1418
	movl	%eax, 20(%rsp)	# _149, %sfp
	movslq	%r12d, %rax	# steps, _117
	movq	%rax, 24(%rsp)	# _117, %sfp
	jmp	.L819	#
	.p2align 4,,10
	.p2align 3
.L854:
# run.c:796:             next = prompt_tokens[pos + 1];
	movq	32(%rsp), %rax	# %sfp, prompt_tokens
	movl	4(%rax,%rbx,4), %r15d	# MEM[(int *)prompt_tokens_36 + 4B + ivtmp.1418_82 * 4], i
.L799:
# run.c:804:         if (next == 1) { break; }
	cmpl	$1, %r15d	#, i
	je	.L818	#,
.L855:
# run.c:460:     char *piece = t->vocab[token];
	movslq	%r15d, %rax	# i, i
	salq	$3, %rax	#, _158
.L802:
# run.c:460:     char *piece = t->vocab[token];
	movq	(%r14), %rdx	# tokenizer_37(D)->vocab, tokenizer_37(D)->vocab
	movq	(%rdx,%rax), %r13	# *_104, piece
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %ebp	#, token
	je	.L852	#,
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	leaq	64(%rsp), %rbp	#, tmp212
	xorl	%eax, %eax	#
	leaq	.LC44(%rip), %rsi	#,
	movq	%r13, %rdi	# piece,
	movq	%rbp, %rdx	# tmp212,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp230
	je	.L812	#,
# run.c:475:     if (piece == NULL) { return; }
	testq	%r13, %r13	# piece
	jne	.L810	#,
.L813:
# run.c:809:         fflush(stdout);
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush@PLT	#
# run.c:813:         if (start == 0) { start = time_in_ms(); }
	cmpq	$0, (%rsp)	#, %sfp
	je	.L853	#,
# run.c:788:     while (pos < steps) {
	movq	24(%rsp), %rcx	# %sfp, _117
	leaq	1(%rbx), %rax	#, ivtmp.1418
	cmpq	%rcx, %rax	# _117, ivtmp.1418
	je	.L818	#,
.L817:
# run.c:772:     if (prompt == NULL) { prompt = empty_prompt; }
	movq	%rax, %rbx	# ivtmp.1418, ivtmp.1418
	movl	%r15d, %ebp	# i, token
.L819:
# run.c:791:         float* logits = forward(transformer, token, pos);
	movq	8(%rsp), %rdi	# %sfp,
	movl	%ebp, %esi	# token,
	movl	%ebx, %edx	# pos,
	movl	%ebx, %r12d	# ivtmp.1418, pos
	call	forward	#
	movq	%rax, %rsi	# tmp226, logits
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	cmpl	%ebx, 20(%rsp)	# ivtmp.1418, %sfp
	jg	.L854	#,
# run.c:735:     if (sampler->temperature == 0.0f) {
	movq	40(%rsp), %rax	# %sfp, sampler
	vxorps	%xmm2, %xmm2, %xmm2	# tmp258
	vucomiss	16(%rax), %xmm2	# sampler_46(D)->temperature, tmp258
	jp	.L800	#,
	jne	.L800	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%rax), %eax	# sampler_46(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	vmovss	(%rsi), %xmm0	# *logits_45, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %eax	#, _76
	jle	.L824	#,
	movl	$1, %edx	#, ivtmp.1411
# run.c:633:     int max_i = 0;
	xorl	%r15d, %r15d	# i
	.p2align 4,,10
	.p2align 3
.L805:
# run.c:636:         if (probabilities[i] > max_p) {
	vmovss	(%rsi,%rdx,4), %xmm1	# MEM[(float *)logits_45 + ivtmp.1411_148 * 4], _141
# run.c:636:         if (probabilities[i] > max_p) {
	vcomiss	%xmm0, %xmm1	# max_p, _141
# run.c:638:             max_p = probabilities[i];
	vmaxss	%xmm0, %xmm1, %xmm0	# max_p, _141, max_p
	cmova	%edx, %r15d	# ivtmp.1411,, i
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rdx	#, ivtmp.1411
	cmpq	%rdx, %rax	# ivtmp.1411, _81
	jne	.L805	#,
# run.c:804:         if (next == 1) { break; }
	cmpl	$1, %r15d	#, i
	jne	.L855	#,
	.p2align 4,,10
	.p2align 3
.L818:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
# run.c:818:     if (pos > 1) {
	testl	%ebx, %ebx	# ivtmp.1418
	je	.L820	#,
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
.L820:
# run.c:823:     free(prompt_tokens);
	movq	88(%rsp), %rax	# D.9911, tmp238
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp238
	jne	.L856	#,
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
.L852:
	.cfi_restore_state
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpb	$32, 0(%r13)	#, *piece_105
	jne	.L850	#,
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	addq	$1, %r13	#, piece
.L850:
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	leaq	64(%rsp), %rbp	#, tmp212
	xorl	%eax, %eax	#
	leaq	.LC44(%rip), %rsi	#,
	movq	%r13, %rdi	# piece,
	movq	%rbp, %rdx	# tmp212,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp228
	jne	.L810	#,
.L812:
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	64(%rsp), %eax	# MEM[(unsigned char *)_84], MEM[(unsigned char *)_84]
	addl	%eax, %eax	# tmp171
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%r14,%rax), %r13	#, piece
.L810:
# run.c:476:     if (piece[0] == '\0') { return; }
	movzbl	0(%r13), %edx	# *piece_126, _91
# run.c:476:     if (piece[0] == '\0') { return; }
	testb	%dl, %dl	# _91
	movb	%dl, 19(%rsp)	# _91, %sfp
	je	.L813	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%r13)	#, MEM[(char *)piece_126 + 1B]
	jne	.L815	#,
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	call	__ctype_b_loc@PLT	#
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movzbl	19(%rsp), %edx	# %sfp,
	movq	(%rax), %rax	# *_94, *_94
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	testw	$24576, (%rax,%rdx,2)	#, *_98
	je	.L813	#,
.L815:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%r13, %rdx	# piece,
	leaq	.LC45(%rip), %rsi	#,
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
	jmp	.L813	#
	.p2align 4,,10
	.p2align 3
.L853:
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
	leaq	1(%rbx), %rax	#, ivtmp.1418
	cmpq	%rax, 24(%rsp)	# ivtmp.1418, %sfp
	jne	.L817	#,
	jmp	.L818	#
	.p2align 4,,10
	.p2align 3
.L800:
	movq	40(%rsp), %rdi	# %sfp,
	call	sample.part.0	#
	movl	%eax, %r15d	# tmp227, i
	jmp	.L799	#
	.p2align 4,,10
	.p2align 3
.L824:
# run.c:635:     for (int i = 1; i < n; i++) {
	xorl	%eax, %eax	# _158
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	xorl	%r15d, %r15d	# i
	jmp	.L802	#
.L797:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
	jmp	.L820	#
.L851:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC51(%rip), %rdi	#, tmp162
	call	fwrite@PLT	#
# run.c:780:         exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L856:
# run.c:823:     free(prompt_tokens);
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE96:
	.size	generate, .-generate
	.p2align 4
	.globl	read_stdin
	.type	read_stdin, @function
read_stdin:
.LFB97:
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
	je	.L865	#,
# run.c:830:         size_t len = strlen(buffer);
	movq	%rbp, %rdi	# buffer,
	call	strlen@PLT	#
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	testq	%rax, %rax	# tmp96
	je	.L865	#,
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	leaq	-1(%rbp,%rax), %rax	#, _4
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	cmpb	$10, (%rax)	#, *_4
	je	.L867	#,
.L865:
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
.L867:
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
.LFE97:
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
.LFB98:
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
	movq	%rax, 2344(%rsp)	# tmp198, D.9957
	xorl	%eax, %eax	# tmp198
# run.c:851:     int num_prompt_tokens = 0;
	movl	$0, 108(%rsp)	#, num_prompt_tokens
# run.c:852:     int* prompt_tokens = (int*)malloc(1152 * sizeof(int));
	call	malloc@PLT	#
	movq	%rax, 88(%rsp)	# tmp191, %sfp
# run.c:861:     while (pos < steps) {
	testl	%r12d, %r12d	# steps
	jle	.L898	#,
# run.c:870:                     read_stdin("Enter system prompt (optional): ", system_prompt, sizeof(system_prompt));
	leaq	160(%rsp), %r12	#, tmp178
	movl	$512, %edx	#,
# run.c:868:                 if (cli_system_prompt == NULL) {
	testq	%r14, %r14	# cli_system_prompt
	je	.L928	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%r14, %rsi	# cli_system_prompt,
	movq	%r12, %rdi	# tmp178,
	call	__strcpy_chk@PLT	#
.L872:
	leaq	672(%rsp), %rax	#, tmp179
	movl	$512, %edx	#,
	movq	%rax, 48(%rsp)	# tmp179, %sfp
# run.c:877:             if (pos == 0 && cli_user_prompt != NULL) {
	testq	%rbx, %rbx	# cli_user_prompt
	je	.L873	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%rbx, %rsi	# cli_user_prompt,
	movq	%rax, %rdi	# tmp179,
	call	__strcpy_chk@PLT	#
.L874:
# run.c:885:             if (pos == 0 && system_prompt[0] != '\0') {
	cmpb	$0, 160(%rsp)	#, system_prompt[0]
	jne	.L929	#,
	leaq	112(%rsp), %rax	#, tmp181
	xorl	%ebx, %ebx	# pos
	movq	%rax, 24(%rsp)	# tmp181, %sfp
	leaq	1184(%rsp), %rax	#, tmp182
	movq	%rax, 80(%rsp)	# tmp182, %sfp
	leaq	108(%rsp), %rax	#, tmp180
	movq	%rax, 32(%rsp)	# tmp180, %sfp
	leaq	.LC57(%rip), %rax	#, tmp177
	movq	%rax, 40(%rsp)	# tmp177, %sfp
.L875:
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
.L876:
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
.L900:
# run.c:900:         if (user_idx < num_prompt_tokens) {
	cmpl	%r14d, %r12d	# pretmp_149, user_idx
	jge	.L877	#,
# run.c:902:             token = prompt_tokens[user_idx++];
	movq	88(%rsp), %rdi	# %sfp, prompt_tokens
# run.c:902:             token = prompt_tokens[user_idx++];
	movslq	%r12d, %rax	# user_idx, user_idx
	addl	$1, %r12d	#, user_idx
# run.c:902:             token = prompt_tokens[user_idx++];
	movl	(%rdi,%rax,4), %r13d	# *_8, next
.L877:
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
	jp	.L878	#,
	jne	.L878	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%r15), %eax	# sampler_54(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	vmovss	(%rsi), %xmm0	# *logits_53, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	movl	$1, %edx	#, ivtmp.1436
# run.c:633:     int max_i = 0;
	xorl	%ecx, %ecx	# i
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %eax	#, _73
	jle	.L930	#,
	.p2align 4,,10
	.p2align 3
.L885:
# run.c:636:         if (probabilities[i] > max_p) {
	vmovss	(%rsi,%rdx,4), %xmm1	# MEM[(float *)logits_53 + ivtmp.1436_168 * 4], _157
# run.c:636:         if (probabilities[i] > max_p) {
	vcomiss	%xmm0, %xmm1	# max_p, _157
# run.c:638:             max_p = probabilities[i];
	vmaxss	%xmm0, %xmm1, %xmm0	# max_p, _157, max_p
	cmova	%edx, %ecx	# ivtmp.1436,, i
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rdx	#, ivtmp.1436
	cmpq	%rdx, %rax	# ivtmp.1436, _78
	jne	.L885	#,
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r14d, %r12d	# pretmp_149, user_idx
	jl	.L887	#,
.L932:
# run.c:460:     char *piece = t->vocab[token];
	movslq	%ecx, %rax	# i, i
	salq	$3, %rax	#, _161
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	$2, %ecx	#, i
	jne	.L881	#,
.L888:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
# run.c:912:         next = sample(sampler, logits);
	movl	$2, %ecx	#, i
.L882:
# run.c:861:     while (pos < steps) {
	cmpl	%ebx, 68(%rsp)	# pos, %sfp
	je	.L898	#,
.L933:
# run.c:864:         if (user_turn) {
	cmpl	$2, %r13d	#, next
	jne	.L931	#,
# run.c:882:                 read_stdin("User: ", user_prompt, sizeof(user_prompt));
	movq	48(%rsp), %rsi	# %sfp,
	movl	$512, %edx	#,
	leaq	.LC55(%rip), %rdi	#, tmp140
	movl	%ecx, 16(%rsp)	# i, %sfp
	call	read_stdin	#
	movl	16(%rsp), %r13d	# %sfp, next
	jmp	.L875	#
	.p2align 4,,10
	.p2align 3
.L878:
	movq	%r15, %rdi	# sampler,
	call	sample.part.0	#
	movl	%eax, %ecx	# tmp193, i
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r14d, %r12d	# pretmp_149, user_idx
	jge	.L932	#,
.L887:
# run.c:921:         if (next == 2) { printf("\n"); }
	cmpl	$2, %ecx	#, i
	je	.L888	#,
# run.c:861:     while (pos < steps) {
	cmpl	%ebx, 68(%rsp)	# pos, %sfp
	jne	.L933	#,
	.p2align 4,,10
	.p2align 3
.L898:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
# run.c:924:     free(prompt_tokens);
	movq	2344(%rsp), %rax	# D.9957, tmp199
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp199
	jne	.L934	#,
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
.L931:
	.cfi_restore_state
# run.c:864:         if (user_turn) {
	movl	%ecx, %r13d	# i, next
	jmp	.L900	#
	.p2align 4,,10
	.p2align 3
.L930:
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r14d, %r12d	# pretmp_149, user_idx
	jl	.L882	#,
	xorl	%eax, %eax	# _161
	.p2align 4,,10
	.p2align 3
.L881:
# run.c:460:     char *piece = t->vocab[token];
	movq	56(%rsp), %rdi	# %sfp, tokenizer
	movq	(%rdi), %rdx	# tokenizer_46(D)->vocab, tokenizer_46(D)->vocab
	movq	(%rdx,%rax), %rdi	# *_101, piece
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %r13d	#, next
	je	.L935	#,
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
	je	.L893	#,
# run.c:475:     if (piece == NULL) { return; }
	movq	8(%rsp), %rdi	# %sfp, piece
	testq	%rdi, %rdi	# piece
	jne	.L892	#,
.L895:
# run.c:919:             fflush(stdout);
	movq	stdout(%rip), %rdi	# stdout,
	movl	%ecx, 16(%rsp)	# i, %sfp
	call	fflush@PLT	#
	movl	16(%rsp), %ecx	# %sfp, i
	jmp	.L882	#
	.p2align 4,,10
	.p2align 3
.L935:
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpb	$32, (%rdi)	#, *piece_102
	movl	%ecx, 8(%rsp)	# i, %sfp
	je	.L936	#,
.L926:
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
	jne	.L892	#,
.L893:
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	107(%rsp), %eax	# byte_val, byte_val
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movq	56(%rsp), %rdi	# %sfp, tokenizer
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	addl	%eax, %eax	# tmp164
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%rdi,%rax), %rdi	#, piece
.L892:
# run.c:476:     if (piece[0] == '\0') { return; }
	movzbl	(%rdi), %edx	# *piece_135, _88
# run.c:476:     if (piece[0] == '\0') { return; }
	testb	%dl, %dl	# _88
	movb	%dl, 16(%rsp)	# _88, %sfp
	je	.L895	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%rdi)	#, MEM[(char *)piece_135 + 1B]
	jne	.L897	#,
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
	je	.L895	#,
.L897:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%rdi, %rdx	# piece,
	leaq	.LC45(%rip), %rsi	#, tmp174
	xorl	%eax, %eax	#
	movl	%ecx, 16(%rsp)	# i, %sfp
	movl	$2, %edi	#,
	call	__printf_chk@PLT	#
	movl	16(%rsp), %ecx	# %sfp, i
	jmp	.L895	#
	.p2align 4,,10
	.p2align 3
.L929:
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
	jmp	.L876	#
.L936:
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	addq	$1, %rdi	#, piece
	jmp	.L926	#
	.p2align 4,,10
	.p2align 3
.L928:
# run.c:870:                     read_stdin("Enter system prompt (optional): ", system_prompt, sizeof(system_prompt));
	movq	%r12, %rsi	# tmp178,
	leaq	.LC54(%rip), %rdi	#, tmp136
	call	read_stdin	#
	jmp	.L872	#
.L934:
# run.c:924:     free(prompt_tokens);
	call	__stack_chk_fail@PLT	#
.L873:
# run.c:882:                 read_stdin("User: ", user_prompt, sizeof(user_prompt));
	movq	%rax, %rsi	# tmp179,
	leaq	.LC55(%rip), %rdi	#, tmp142
	call	read_stdin	#
	jmp	.L874	#
	.cfi_endproc
.LFE98:
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
.LFB99:
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
.LFE99:
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
.LFB100:
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
	movq	%rax, 920(%rsp)	# tmp206, D.9994
	xorl	%eax, %eax	# tmp206
# run.c:961:     if (argc >= 2) { checkpoint_path = argv[1]; } else { error_usage(); }
	cmpl	$1, %edi	#, argc
	jle	.L976	#,
# run.c:961:     if (argc >= 2) { checkpoint_path = argv[1]; } else { error_usage(); }
	movq	8(%rsi), %rax	# MEM[(char * *)argv_84(D) + 8B], checkpoint_path
	movq	%rax, 64(%rsp)	# checkpoint_path, %sfp
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpl	$2, %edi	#, argc
	je	.L966	#,
# run.c:964:         if (i + 1 >= argc) { error_usage(); } // must have arg after flag
	cmpl	$3, %edi	#, argc
	je	.L976	#,
	leal	-4(%rdi), %eax	#, tmp135
	leal	-3(%rdi), %ebp	#, tmp140
# run.c:954:     int steps = 256;            // number of steps to run for
	movl	$256, %r13d	#, steps
	movq	%rsi, %r14	# ivtmp.1460, ivtmp.1460
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
	leaq	.L947(%rip), %rbx	#, tmp194
	leaq	16(%rsi,%rax), %r12	#, _158
# run.c:957:     char *mode = "generate";    // generate|chat
	leaq	.LC70(%rip), %rax	#, tmp190
	addq	%rsi, %rbp	# ivtmp.1460, _165
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
.L944:
# run.c:965:         if (argv[i][0] != '-') { error_usage(); } // must start with dash
	movq	16(%r14), %r15	# MEM[(char * *)_57 + 16B], _5
# run.c:965:         if (argv[i][0] != '-') { error_usage(); } // must start with dash
	cmpb	$45, (%r15)	#, *_5
	jne	.L976	#,
# run.c:966:         if (strlen(argv[i]) != 2) { error_usage(); } // must be -x (one dash, one letter)
	movq	%r15, %rdi	# _5,
	call	strlen@PLT	#
# run.c:966:         if (strlen(argv[i]) != 2) { error_usage(); } // must be -x (one dash, one letter)
	cmpq	$2, %rax	#, tmp197
	jne	.L976	#,
	movzbl	1(%r15), %eax	# MEM[(char *)_5 + 1B], MEM[(char *)_5 + 1B]
	subl	$105, %eax	#, tmp147
	cmpb	$17, %al	#, tmp147
	ja	.L976	#,
	movzbl	%al, %eax	# tmp147, tmp149
	movslq	(%rbx,%rax,4), %rax	#, tmp152
	addq	%rbx, %rax	# tmp194, tmp153
	notrack jmp	*%rax	# tmp153
	.section	.rodata
	.align 4
	.align 4
.L947:
	.long	.L954-.L947
	.long	.L976-.L947
	.long	.L976-.L947
	.long	.L976-.L947
	.long	.L953-.L947
	.long	.L952-.L947
	.long	.L976-.L947
	.long	.L951-.L947
	.long	.L976-.L947
	.long	.L976-.L947
	.long	.L950-.L947
	.long	.L949-.L947
	.long	.L976-.L947
	.long	.L976-.L947
	.long	.L976-.L947
	.long	.L976-.L947
	.long	.L948-.L947
	.long	.L946-.L947
	.section	.text.startup
	.p2align 4,,10
	.p2align 3
.L946:
# run.c:973:         else if (argv[i][1] == 'z') { tokenizer_path = argv[i + 1]; }
	movq	24(%r14), %rax	# MEM[(char * *)_57 + 24B], tokenizer_path
	movq	%rax, 24(%rsp)	# tokenizer_path, %sfp
	.p2align 4,,10
	.p2align 3
.L955:
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpq	%rbp, %r14	# _165, ivtmp.1460
	je	.L977	#,
.L956:
# run.c:964:         if (i + 1 >= argc) { error_usage(); } // must have arg after flag
	addq	$16, %r14	#, ivtmp.1460
	cmpq	%r12, %r14	# _158, ivtmp.1460
	jne	.L944	#,
.L976:
# run.c:1005:         error_usage();
	xorl	%eax, %eax	#
	call	error_usage	#
	.p2align 4,,10
	.p2align 3
.L948:
# run.c:975:         else if (argv[i][1] == 'y') { system_prompt = argv[i + 1]; }
	movq	24(%r14), %rax	# MEM[(char * *)_57 + 24B], system_prompt
	movq	%rax, 48(%rsp)	# system_prompt, %sfp
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpq	%rbp, %r14	# _165, ivtmp.1460
	jne	.L956	#,
	.p2align 4,,10
	.p2align 3
.L977:
# run.c:980:     if (rng_seed <= 0) rng_seed = (unsigned int)time(NULL);
	cmpq	$0, 8(%rsp)	#, %sfp
	vmovss	40(%rsp), %xmm1	# %sfp, temperature
	vmovss	44(%rsp), %xmm0	# %sfp, topp
	vmovss	72(%rsp), %xmm3	# %sfp, tmp186
	vmovss	76(%rsp), %xmm4	# %sfp, topp
	je	.L941	#,
.L957:
# run.c:981:     if (temperature < 0.0) temperature = 0.0;
	vxorps	%xmm2, %xmm2, %xmm2	# tmp159
# run.c:981:     if (temperature < 0.0) temperature = 0.0;
	vcmpnltss	%xmm2, %xmm1, %xmm5	#, tmp159, temperature, tmp192
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	vcomiss	%xmm0, %xmm2	# topp, tmp159
# run.c:981:     if (temperature < 0.0) temperature = 0.0;
	vblendvps	%xmm5, %xmm1, %xmm2, %xmm1	# tmp192, temperature, tmp159, temperature
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	ja	.L968	#,
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	vcmpnltss	%xmm0, %xmm3, %xmm3	#, topp, tmp186, tmp193
	vblendvps	%xmm3, %xmm0, %xmm4, %xmm0	# tmp193, topp, topp, topp
.L959:
# run.c:987:     build_transformer(&transformer, checkpoint_path);
	leaq	112(%rsp), %rbp	#, tmp188
	movq	64(%rsp), %rsi	# %sfp,
	vunpcklps	%xmm0, %xmm1, %xmm5	# topp, temperature, _141
	movq	%rbp, %rdi	# tmp188,
	vmovq	%xmm5, %rbx	# _141, _141
	call	build_transformer	#
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	testl	%r13d, %r13d	# steps
	jg	.L978	#,
.L960:
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	movl	136(%rsp), %r13d	# transformer.config.seq_len, steps
.L961:
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
	je	.L979	#,
# run.c:1001:     } else if (strcmp(mode, "chat") == 0) {
	movq	16(%rsp), %rdi	# %sfp,
	leaq	.LC73(%rip), %rsi	#, tmp175
	call	strcmp@PLT	#
# run.c:1001:     } else if (strcmp(mode, "chat") == 0) {
	testl	%eax, %eax	# tmp205
	jne	.L964	#,
# run.c:1002:         chat(&transformer, &tokenizer, &sampler, prompt, system_prompt, steps);
	movq	48(%rsp), %r8	# %sfp,
	movq	32(%rsp), %rcx	# %sfp,
	movl	%r13d, %r9d	# steps,
	movq	%r12, %rsi	# tmp189,
	leaq	80(%rsp), %rdx	#, tmp176
	movq	%rbp, %rdi	# tmp188,
	call	chat	#
.L963:
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
	movq	920(%rsp), %rax	# D.9994, tmp207
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp207
	jne	.L980	#,
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
.L949:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	movq	24(%r14), %rdi	# MEM[(char * *)_57 + 24B], MEM[(char * *)_57 + 24B]
	xorl	%esi, %esi	#
	call	strtod@PLT	#
# run.c:968:         if (argv[i][1] == 't') { temperature = atof(argv[i + 1]); }
	vcvtsd2ss	%xmm0, %xmm0, %xmm6	# tmp198, temperature
	vmovss	%xmm6, 40(%rsp)	# temperature, %sfp
	jmp	.L955	#
	.p2align 4,,10
	.p2align 3
.L950:
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	24(%r14), %rdi	# MEM[(char * *)_57 + 24B], MEM[(char * *)_57 + 24B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
# run.c:970:         else if (argv[i][1] == 's') { rng_seed = atoi(argv[i + 1]); }
	cltq
	movq	%rax, 8(%rsp)	# rng_seed, %sfp
	jmp	.L955	#
	.p2align 4,,10
	.p2align 3
.L951:
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	movq	24(%r14), %rdi	# MEM[(char * *)_57 + 24B], MEM[(char * *)_57 + 24B]
	xorl	%esi, %esi	#
	call	strtod@PLT	#
# run.c:969:         else if (argv[i][1] == 'p') { topp = atof(argv[i + 1]); }
	vcvtsd2ss	%xmm0, %xmm0, %xmm7	# tmp199, topp
	vmovss	%xmm7, 44(%rsp)	# topp, %sfp
	jmp	.L955	#
	.p2align 4,,10
	.p2align 3
.L952:
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	24(%r14), %rdi	# MEM[(char * *)_57 + 24B], MEM[(char * *)_57 + 24B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, %r13d	# tmp201, steps
	jmp	.L955	#
	.p2align 4,,10
	.p2align 3
.L953:
# run.c:974:         else if (argv[i][1] == 'm') { mode = argv[i + 1]; }
	movq	24(%r14), %rax	# MEM[(char * *)_57 + 24B], mode
	movq	%rax, 16(%rsp)	# mode, %sfp
	jmp	.L955	#
	.p2align 4,,10
	.p2align 3
.L954:
# run.c:972:         else if (argv[i][1] == 'i') { prompt = argv[i + 1]; }
	movq	24(%r14), %rax	# MEM[(char * *)_57 + 24B], prompt
	movq	%rax, 32(%rsp)	# prompt, %sfp
	jmp	.L955	#
.L978:
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	cmpl	136(%rsp), %r13d	# transformer.config.seq_len, steps
	jle	.L961	#,
	jmp	.L960	#
.L968:
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	vmovaps	%xmm4, %xmm0	# topp, topp
	jmp	.L959	#
.L979:
# run.c:1000:         generate(&transformer, &tokenizer, &sampler, prompt, steps);
	movq	32(%rsp), %rcx	# %sfp,
	leaq	80(%rsp), %rdx	#, tmp171
	movl	%r13d, %r8d	# steps,
	movq	%r12, %rsi	# tmp189,
	movq	%rbp, %rdi	# tmp188,
	call	generate	#
	jmp	.L963	#
.L966:
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
.L941:
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
	jmp	.L957	#
.L980:
# run.c:1013: }
	call	__stack_chk_fail@PLT	#
.L964:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	16(%rsp), %rcx	# %sfp,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC74(%rip), %rdx	#, tmp180
	xorl	%eax, %eax	#
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
	jmp	.L976	#
	.cfi_endproc
.LFE100:
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
