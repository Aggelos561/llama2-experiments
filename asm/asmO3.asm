	.file	"run.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	compare
	.type	compare, @function
compare:
.LFB88:
	.cfi_startproc
	endbr64	
# run.c:660:     if (a_->prob > b_->prob) return -1;
	movss	(%rdi), %xmm0	# MEM[(struct ProbIndex *)a_4(D)].prob, _1
# run.c:660:     if (a_->prob > b_->prob) return -1;
	movss	(%rsi), %xmm1	# MEM[(struct ProbIndex *)b_5(D)].prob, _2
# run.c:660:     if (a_->prob > b_->prob) return -1;
	movl	$-1, %eax	#, <retval>
# run.c:660:     if (a_->prob > b_->prob) return -1;
	comiss	%xmm1, %xmm0	# _2, _1
	ja	.L1	#,
# run.c:661:     if (a_->prob < b_->prob) return 1;
	xorl	%eax, %eax	# <retval>
	comiss	%xmm0, %xmm1	# _1, _2
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
	jne	.L14	#,
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
.L14:
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
	je	.L23	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%rax, %rcx	# tmp104,
	movl	$1, %edx	#,
	movl	$28, %esi	#,
	movq	%rbp, %rdi	# config,
	movq	%rax, %rbx	# tmp122, tmp104
	call	fread@PLT	#
# run.c:154:     if (fread(config, sizeof(Config), 1, file) != 1) { exit(EXIT_FAILURE); }
	cmpq	$1, %rax	#, tmp123
	jne	.L22	#,
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	movl	20(%rbp), %eax	# config_15(D)->vocab_size, _2
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	xorl	%ecx, %ecx	# tmp107
# run.c:159:     fseek(file, 0, SEEK_END); // move file pointer to end of file
	movq	%rbx, %rdi	# tmp104,
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	testl	%eax, %eax	# _2
# run.c:157:     config->vocab_size = abs(config->vocab_size);
	movl	%eax, %edx	# _2, tmp127
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	setg	%cl	#, tmp107
# run.c:157:     config->vocab_size = abs(config->vocab_size);
	negl	%edx	# tmp127
	cmovns	%edx, %eax	# tmp127,, tmp109
# run.c:159:     fseek(file, 0, SEEK_END); // move file pointer to end of file
	movl	$2, %edx	#,
	xorl	%esi, %esi	#
# run.c:156:     int shared_weights = config->vocab_size > 0 ? 1 : 0;
	movl	%ecx, 12(%rsp)	# tmp107, %sfp
# run.c:157:     config->vocab_size = abs(config->vocab_size);
	movl	%eax, 20(%rbp)	# tmp109, config_15(D)->vocab_size
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
	je	.L24	#,
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
	je	.L25	#,
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
.L24:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC3(%rip), %rdi	#, tmp111
	call	fwrite@PLT	#
.L22:
# run.c:164:     if (*fd == -1) { fprintf(stderr, "open failed!\n"); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
.L23:
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
.L25:
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
	je	.L29	#,
# run.c:180:     if (t->data != MAP_FAILED) { munmap(t->data, t->file_size); }
	movq	240(%rbx), %rsi	# t_9(D)->file_size, t_9(D)->file_size
	call	munmap@PLT	#
.L29:
# run.c:181:     if (t->fd != -1) { close(t->fd); }
	movl	224(%rbx), %edi	# t_9(D)->fd, _4
# run.c:181:     if (t->fd != -1) { close(t->fd); }
	cmpl	$-1, %edi	#, _4
	je	.L30	#,
# run.c:181:     if (t->fd != -1) { close(t->fd); }
	call	close@PLT	#
.L30:
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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movslq	%ecx, %rbx	# tmp226,
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 64
# run.c:192:     for (int j = 0; j < size; j++) {
	testl	%ebx, %ebx	# size
	jle	.L38	#,
	pxor	%xmm3, %xmm3	# _81
	leal	-1(%rbx), %r15d	#, _176
	movq	%rdx, %r13	# tmp225, weight
	movl	%ebx, %r14d	# size, niters.144
	cvtsi2ssl	%ebx, %xmm3	# size, _81
	cmpl	$2, %r15d	#, _176
	jbe	.L56	#,
	movl	%ebx, %edx	# size, bnd.145
	movq	%rsi, %rax	# x, ivtmp.178
# run.c:191:     float ss = 0.0f;
	pxor	%xmm0, %xmm0	# ss
	shrl	$2, %edx	#,
	salq	$4, %rdx	#, tmp178
	addq	%rsi, %rdx	# x, _113
	.p2align 4,,10
	.p2align 3
.L41:
# run.c:193:         ss += x[j] * x[j];
	movups	(%rax), %xmm1	# MEM <vector(4) float> [(float *)_166], vect__5.151
	addq	$16, %rax	#, ivtmp.178
	mulps	%xmm1, %xmm1	# tmp231, vect__5.151
	addss	%xmm1, %xmm0	# stmp_ss_33.152, stmp_ss_33.152
	movaps	%xmm1, %xmm2	# vect__5.151, tmp180
	shufps	$85, %xmm1, %xmm2	#, vect__5.151, tmp180
	addss	%xmm2, %xmm0	# stmp_ss_33.152, stmp_ss_33.152
	movaps	%xmm1, %xmm2	# vect__5.151, tmp181
	unpckhps	%xmm1, %xmm2	# vect__5.151, tmp181
# run.c:193:         ss += x[j] * x[j];
	shufps	$255, %xmm1, %xmm1	#, vect__5.151, tmp184
	addss	%xmm2, %xmm0	# stmp_ss_33.152, stmp_ss_33.152
	addss	%xmm1, %xmm0	# stmp_ss_33.152, ss
	cmpq	%rax, %rdx	# ivtmp.178, _113
	jne	.L41	#,
	movl	%ebx, %eax	# size, _63
	andl	$-4, %eax	#, _63
	testb	$3, %bl	#, size
	je	.L42	#,
.L40:
# run.c:193:         ss += x[j] * x[j];
	movslq	%eax, %rdx	# _63, _63
	movss	(%rsi,%rdx,4), %xmm1	# *_4, _5
	leaq	0(,%rdx,4), %rcx	#, _3
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %edx	#, j
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _5, tmp186
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp186, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%ebx, %edx	# size, j
	jge	.L42	#,
# run.c:193:         ss += x[j] * x[j];
	movss	4(%rsi,%rcx), %xmm1	# *_14, _15
# run.c:192:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _15, tmp188
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp188, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %ebx	# j, size
	jle	.L42	#,
# run.c:193:         ss += x[j] * x[j];
	movss	8(%rsi,%rcx), %xmm1	# *_169, _170
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _170, tmp190
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp190, ss
.L42:
# run.c:195:     ss /= size;
	divss	%xmm3, %xmm0	# _81, ss
	pxor	%xmm1, %xmm1	# tmp192
# run.c:196:     ss += 1e-5f;
	addss	.LC6(%rip), %xmm0	#, ss
	ucomiss	%xmm0, %xmm1	# ss, tmp192
	ja	.L74	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	sqrtss	%xmm0, %xmm0	# ss, _7
.L45:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	movss	.LC7(%rip), %xmm1	#, tmp193
	divss	%xmm0, %xmm1	# _7, ss
	cmpl	$1, %ebx	#, size
	je	.L47	#,
	leaq	4(%rsi), %rdx	#, tmp194
	movq	%rdi, %rax	# o, tmp195
	subq	%rdx, %rax	# tmp194, tmp195
	cmpq	$8, %rax	#, tmp195
	jbe	.L47	#,
	leaq	4(%r13), %rdx	#, tmp198
	movq	%rdi, %rax	# o, tmp199
	subq	%rdx, %rax	# tmp198, tmp199
	cmpq	$8, %rax	#, tmp199
	jbe	.L47	#,
	cmpl	$2, %r15d	#, _176
	jbe	.L57	#,
	movl	%ebx, %edx	# size, bnd.117
	movaps	%xmm1, %xmm2	# ss, vect_cst__103
	xorl	%eax, %eax	# ivtmp.169
	shrl	$2, %edx	#,
	shufps	$0, %xmm2, %xmm2	# vect_cst__103
	salq	$4, %rdx	#, _156
	.p2align 4,,10
	.p2align 3
.L49:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	(%rsi,%rax), %xmm0	# MEM <vector(4) float> [(float *)x_29(D) + ivtmp.169_1 * 1], vect__15.126
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	0(%r13,%rax), %xmm5	# MEM <vector(4) float> [(float *)weight_28(D) + ivtmp.169_1 * 1], tmp240
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm2, %xmm0	# vect_cst__103, vect__15.126
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm5, %xmm0	# tmp240, vect__17.127
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	%xmm0, (%rdi,%rax)	# vect__17.127, MEM <vector(4) float> [(float *)o_30(D) + ivtmp.169_1 * 1]
	addq	$16, %rax	#, ivtmp.169
	cmpq	%rdx, %rax	# _156, ivtmp.169
	jne	.L49	#,
	movl	%ebx, %eax	# size, tmp.133
	andl	$-4, %eax	#, tmp.133
	movl	%eax, %edx	# tmp.133,
	cmpl	%ebx, %eax	# size, tmp.133
	je	.L38	#,
	subl	%eax, %ebx	# tmp.133, size
	movl	%ebx, %r14d	# size, niters.144
	cmpl	$1, %ebx	#, niters.144
	je	.L52	#,
.L48:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	(%rsi,%rdx,4), %xmm0	# MEM <vector(2) float> [(float *)vectp_x.138_143], vect__12.139
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movaps	%xmm1, %xmm2	# ss, tmp211
	shufps	$0xe0, %xmm2, %xmm2	# tmp211
	mulps	%xmm2, %xmm0	# tmp211, vect__20.140
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	0(%r13,%rdx,4), %xmm2	# MEM <vector(2) float> [(float *)vectp_weight.135_137], vect__21.136
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm2, %xmm0	# vect__21.136, vect__83.141
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movlps	%xmm0, (%rdi,%rdx,4)	# vect__83.141, MEM <vector(2) float> [(float *)vectp_o.143_152]
	testb	$1, %r14b	#, niters.144
	je	.L38	#,
	andl	$-2, %r14d	#, niters_vector_mult_vf.132
	addl	%r14d, %eax	# niters_vector_mult_vf.132, tmp.133
.L52:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	cltq
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%rsi,%rax,4), %xmm1	# *_120, tmp218
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	0(%r13,%rax,4), %xmm1	# *_118, tmp219
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	%xmm1, (%rdi,%rax,4)	# tmp219, *_123
.L38:
# run.c:202: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
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
.L47:
	.cfi_restore_state
	salq	$2, %rbx	#, _175
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# ivtmp.164
	.p2align 4,,10
	.p2align 3
.L54:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	(%rsi,%rax), %xmm0	# MEM[(float *)x_29(D) + ivtmp.164_165 * 1], tmp221
	mulss	%xmm1, %xmm0	# ss, tmp221
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	0(%r13,%rax), %xmm0	# MEM[(float *)weight_28(D) + ivtmp.164_165 * 1], tmp222
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	%xmm0, (%rdi,%rax)	# tmp222, MEM[(float *)o_30(D) + ivtmp.164_165 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.164
	cmpq	%rbx, %rax	# _175, ivtmp.164
	jne	.L54	#,
# run.c:202: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L56:
	.cfi_restore_state
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# _63
# run.c:191:     float ss = 0.0f;
	pxor	%xmm0, %xmm0	# ss
	jmp	.L40	#
.L57:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	xorl	%edx, %edx	#
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.133
	jmp	.L48	#
.L74:
	movq	%rsi, 8(%rsp)	# x, %sfp
	movq	%rdi, (%rsp)	# o, %sfp
# run.c:197:     ss = 1.0f / sqrtf(ss);
	call	sqrtf@PLT	#
	movq	8(%rsp), %rsi	# %sfp, x
	movq	(%rsp), %rdi	# %sfp, o
	jmp	.L45	#
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
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%esi, %r12d	# tmp163, size
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp	# tmp162, x
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 64
# run.c:206:     float max_val = x[0];
	movss	(%rdi), %xmm1	# *x_27(D), max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpl	$1, %esi	#, size
	jle	.L77	#,
	leal	-2(%rsi), %edx	#, tmp134
	leaq	4(%rdi), %rax	#, ivtmp.227
	leaq	8(%rdi,%rdx,4), %rdx	#, _55
	.p2align 4,,10
	.p2align 3
.L79:
# run.c:208:         if (x[i] > max_val) {
	movss	(%rax), %xmm0	# MEM[(float *)_17], _39
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.227
# run.c:209:             max_val = x[i];
	maxss	%xmm1, %xmm0	# max_val, _39
	movaps	%xmm0, %xmm1	# _39, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rdx, %rax	# _55, ivtmp.227
	jne	.L79	#,
.L80:
	movslq	%r12d, %rax	# size, size
	movq	%rbp, %r14	# x, ivtmp.214
# run.c:213:     float sum = 0.0f;
	pxor	%xmm2, %xmm2	# sum
# run.c:209:             max_val = x[i];
	movq	%rbp, %rbx	# x, ivtmp.221
	leaq	0(%rbp,%rax,4), %r13	#, _48
	.p2align 4,,10
	.p2align 3
.L82:
# run.c:215:         x[i] = expf(x[i] - max_val);
	movss	(%rbx), %xmm0	# MEM[(float *)_122], MEM[(float *)_122]
	movss	%xmm2, 12(%rsp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %rbx	#, ivtmp.221
# run.c:215:         x[i] = expf(x[i] - max_val);
	movss	%xmm1, 8(%rsp)	# max_val, %sfp
	subss	%xmm1, %xmm0	# max_val, tmp139
	call	expf@PLT	#
# run.c:216:         sum += x[i];
	movss	12(%rsp), %xmm2	# %sfp, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	movss	8(%rsp), %xmm1	# %sfp, max_val
# run.c:215:         x[i] = expf(x[i] - max_val);
	movss	%xmm0, -4(%rbx)	# _10, MEM[(float *)_122]
# run.c:214:     for (int i = 0; i < size; i++) {
	cmpq	%rbx, %r13	# ivtmp.221, _48
# run.c:216:         sum += x[i];
	addss	%xmm0, %xmm2	# _10, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	jne	.L82	#,
	leal	-1(%r12), %eax	#, tmp141
	cmpl	$2, %eax	#, tmp141
	jbe	.L90	#,
	movl	%r12d, %eax	# size, bnd.190
	movaps	%xmm2, %xmm1	# sum, vect_cst__79
	shrl	$2, %eax	#,
	shufps	$0, %xmm1, %xmm1	# vect_cst__79
	salq	$4, %rax	#, tmp145
	addq	%rbp, %rax	# x, _99
	.p2align 4,,10
	.p2align 3
.L85:
# run.c:220:         x[i] /= sum;
	movups	(%r14), %xmm0	# MEM <vector(4) float> [(float *)_98], vect__17.196
	addq	$16, %r14	#, ivtmp.214
	divps	%xmm1, %xmm0	# vect_cst__79, vect__17.196
	movups	%xmm0, -16(%r14)	# vect__17.196, MEM <vector(4) float> [(float *)_98]
	cmpq	%r14, %rax	# ivtmp.214, _99
	jne	.L85	#,
	movl	%r12d, %eax	# size, tmp.202
	andl	$-4, %eax	#, tmp.202
	movl	%eax, %edx	# tmp.202,
	cmpl	%eax, %r12d	# tmp.202, size
	je	.L76	#,
.L84:
	subl	%edx, %r12d	# niters_vector_mult_vf.191, niters.199
	cmpl	$1, %r12d	#, niters.199
	je	.L87	#,
	leaq	0(%rbp,%rdx,4), %rdx	#, vectp_x.204
	movaps	%xmm2, %xmm1	# sum, tmp151
# run.c:220:         x[i] /= sum;
	movq	(%rdx), %xmm0	# MEM <vector(2) float> [(float *)vectp_x.204_108], vect__54.205
# run.c:220:         x[i] /= sum;
	shufps	$0xe0, %xmm1, %xmm1	# tmp151
	movhps	.LC8(%rip), %xmm1	#, tmp154
	divps	%xmm1, %xmm0	# tmp154, tmp155
	movlps	%xmm0, (%rdx)	# vect__55.206, MEM <vector(2) float> [(float *)vectp_x.204_108]
	testb	$1, %r12b	#, niters.199
	je	.L76	#,
	andl	$-2, %r12d	#, niters_vector_mult_vf.201
	addl	%r12d, %eax	# niters_vector_mult_vf.201, tmp.202
.L87:
# run.c:220:         x[i] /= sum;
	cltq
	leaq	0(%rbp,%rax,4), %rax	#, _93
# run.c:220:         x[i] /= sum;
	movss	(%rax), %xmm0	# *_93, *_93
	divss	%xmm2, %xmm0	# sum, tmp160
	movss	%xmm0, (%rax)	# tmp160, *_93
.L76:
# run.c:222: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L77:
	.cfi_restore_state
# run.c:214:     for (int i = 0; i < size; i++) {
	je	.L80	#,
# run.c:222: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L90:
	.cfi_restore_state
# run.c:214:     for (int i = 0; i < size; i++) {
	xorl	%edx, %edx	#
# run.c:219:     for (int i = 0; i < size; i++) {
	xorl	%eax, %eax	# tmp.202
	jmp	.L84	#
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
	jle	.L116	#,
	movl	%ecx, %r9d	# tmp180, n
	movq	%rdx, %r10	# tmp179, w
	movl	%ecx, %edx	# n, bnd.237
# run.c:256: void matmul(float* xout, float* x, float* w, int n, int d) {
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movslq	%r8d, %r8	# d, d
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	shrl	$2, %edx	#,
	leal	-1(%rcx), %r11d	#, _41
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	leaq	(%rdi,%r8,4), %r8	#, _99
	salq	$4, %rdx	#, _2
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%ecx, %ebp	# n, _85
# run.c:261:     for (i = 0; i < d; i++) {
	xorl	%ecx, %ecx	# ivtmp.263
# run.c:256: void matmul(float* xout, float* x, float* w, int n, int d) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%r9d, %ebx	# n, tmp175
	andl	$-4, %ebp	#, _85
	andl	$3, %ebx	#, tmp175
	.p2align 4,,10
	.p2align 3
.L104:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r9d, %r9d	# n
	jle	.L109	#,
	cmpl	$2, %r11d	#, _41
	jbe	.L110	#,
	movslq	%ecx, %rax	# ivtmp.263, _1
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	leaq	(%r10,%rax,4), %r12	#, vectp.241
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.253
	.p2align 4,,10
	.p2align 3
.L106:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	(%r12,%rax), %xmm0	# MEM <vector(4) float> [(float *)vectp.241_18 + ivtmp.253_92 * 1], vect__11.246
	movups	(%rsi,%rax), %xmm3	# MEM <vector(4) float> [(float *)x_27(D) + ivtmp.253_92 * 1], tmp187
	addq	$16, %rax	#, ivtmp.253
	mulps	%xmm3, %xmm0	# tmp187, vect__11.246
	addss	%xmm0, %xmm1	# stmp_val_28.247, stmp_val_28.247
	movaps	%xmm0, %xmm2	# vect__11.246, tmp156
	shufps	$85, %xmm0, %xmm2	#, vect__11.246, tmp156
	addss	%xmm2, %xmm1	# stmp_val_28.247, stmp_val_28.247
	movaps	%xmm0, %xmm2	# vect__11.246, tmp157
	unpckhps	%xmm0, %xmm2	# vect__11.246, tmp157
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__11.246, tmp160
	addss	%xmm2, %xmm1	# stmp_val_28.247, stmp_val_28.247
	addss	%xmm0, %xmm1	# stmp_val_28.247, val
	cmpq	%rax, %rdx	# ivtmp.253, _2
	jne	.L106	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%ebp, %eax	# _85, j
	testl	%ebx, %ebx	# tmp175
	je	.L109	#,
.L105:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rcx,%rax), %r13d	#, tmp163
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r14	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r13d, %r13	# tmp163, tmp164
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r14,4), %r12	#, _9
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r10,%r13,4), %xmm0	# *_6, *_6
	mulss	(%rsi,%r14,4), %xmm0	# *_10, tmp165
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %r13d	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp165, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%r13d, %r9d	# j, n
	jle	.L109	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %r13d	# ivtmp.263, tmp167
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r13d, %r13	# tmp167, tmp168
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r10,%r13,4), %xmm0	# *_61, *_61
	mulss	4(%rsi,%r12), %xmm0	# *_87, tmp169
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp169, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r9d	# j, n
	jle	.L109	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%ecx, %eax	# ivtmp.263, tmp171
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r10,%rax,4), %xmm0	# *_52, *_52
	mulss	8(%rsi,%r12), %xmm0	# *_48, tmp173
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp173, val
.L109:
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%rdi)	# val, MEM[(float *)_95]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %rdi	#, ivtmp.261
	addl	%r9d, %ecx	# n, ivtmp.263
	cmpq	%r8, %rdi	# _99, ivtmp.261
	jne	.L104	#,
# run.c:268: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L110:
	.cfi_restore_state
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	jmp	.L105	#
.L116:
	.cfi_def_cfa_offset 8
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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15	# tmp1797, transformer
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edx, %r13d	# tmp1799, pos
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$424, %rsp	#,
	.cfi_def_cfa_offset 480
# run.c:278:     float *x = s->x;
	movq	128(%rdi), %r11	# MEM[(struct RunState *)transformer_180(D) + 128B].x, x
# run.c:279:     int dim = p->dim;
	movl	(%rdi), %eax	# MEM[(struct Config *)transformer_180(D)].dim, dim
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movl	12(%r15), %ecx	# MEM[(struct Config *)transformer_180(D)].n_heads, _3
# run.c:282:     int hidden_dim =  p->hidden_dim;
	movl	4(%r15), %r9d	# MEM[(struct Config *)transformer_180(D)].hidden_dim, hidden_dim
# run.c:272: float* forward(Transformer* transformer, int token, int pos) {
	movq	%rdi, 72(%rsp)	# transformer, %sfp
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	movl	16(%rdi), %edi	# MEM[(struct Config *)transformer_180(D)].n_kv_heads, _1
# run.c:279:     int dim = p->dim;
	movl	%eax, %ebx	# dim, dim
# run.c:272: float* forward(Transformer* transformer, int token, int pos) {
	movl	%edx, 88(%rsp)	# pos, %sfp
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	movslq	%ebx, %r14	# dim,
# run.c:282:     int hidden_dim =  p->hidden_dim;
	movl	%r9d, 252(%rsp)	# hidden_dim, %sfp
	movl	%r9d, %ebp	# hidden_dim, hidden_dim
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	imull	%edi, %eax	# _1, tmp1212
# run.c:283:     int head_size = dim / p->n_heads;
	movl	%ebx, 216(%rsp)	# dim, %sfp
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	movq	%r14, 288(%rsp)	# _8, %sfp
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r11, 192(%rsp)	# x, %sfp
# run.c:280:     int kv_dim = (p->dim * p->n_kv_heads) / p->n_heads;
	cltd
	idivl	%ecx	# _3
	movl	%eax, 248(%rsp)	# tmp1212, %sfp
# run.c:281:     int kv_mul = p->n_heads / p->n_kv_heads; // integer multiplier of the kv sharing in multiquery
	movl	%ecx, %eax	# _3, tmp1215
	cltd
	idivl	%edi	# _1
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r11, %rdi	# x,
# run.c:281:     int kv_mul = p->n_heads / p->n_kv_heads; // integer multiplier of the kv sharing in multiquery
	movl	%eax, 208(%rsp)	# tmp1215, %sfp
# run.c:283:     int head_size = dim / p->n_heads;
	movl	%ebx, %eax	# dim, tmp1217
	cltd
	idivl	%ecx	# _3
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	movq	32(%r15), %rdx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].token_embedding_table, MEM[(struct TransformerWeights *)transformer_180(D) + 32B].token_embedding_table
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	leaq	0(,%r14,4), %rcx	#, _9
	movq	%rcx, 168(%rsp)	# _9, %sfp
# run.c:283:     int head_size = dim / p->n_heads;
	movl	%eax, %r12d	# tmp1217, tmp1217
# run.c:287:     memcpy(x, content_row, dim*sizeof(*x));
	movq	%r14, %rax	#,
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	imull	%esi, %eax	# tmp1798, tmp1219
	cltq
# run.c:286:     float* content_row = w->token_embedding_table + token * dim;
	leaq	(%rdx,%rax,4), %rsi	#, content_row
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%rcx, %rdx	# _9,
	call	memcpy@PLT	#
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movl	8(%r15), %eax	# MEM[(struct Config *)transformer_180(D)].n_layers,
	testl	%eax, %eax	#
	je	.L120	#,
# run.c:345:             softmax(att, pos + 1);
	leal	1(%r13), %r8d	#, _342
# run.c:195:     ss /= size;
	pxor	%xmm5, %xmm5	# _1042
	movl	%r13d, %ecx	# pos, _1399
	movl	%ebx, %r15d	# dim, dim
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movl	248(%rsp), %esi	# %sfp, tmp1213
# run.c:345:             softmax(att, pos + 1);
	movl	%r8d, %edi	# _342, _342
# run.c:195:     ss /= size;
	cvtsi2ssl	%ebx, %xmm5	# dim, _1042
# run.c:345:             softmax(att, pos + 1);
	movl	%r8d, 92(%rsp)	# _342, %sfp
	movq	192(%rsp), %r10	# %sfp, x
	andl	$-4, %edi	#, niters_vector_mult_vf.530
# run.c:195:     ss /= size;
	movq	$0, 264(%rsp)	#, %sfp
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movl	%esi, %eax	# tmp1213, tmp1229
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movslq	%esi, %rsi	# tmp1213,
	movl	%edi, 212(%rsp)	# niters_vector_mult_vf.530, %sfp
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	imull	%r13d, %eax	# pos, tmp1229
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movq	%rsi, 40(%rsp)	# _1039, %sfp
# run.c:195:     ss /= size;
	movq	$0, 256(%rsp)	#, %sfp
	movq	$0, 240(%rsp)	#, %sfp
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	cltq
	movl	%r12d, 140(%rsp)	# tmp1217, %sfp
	movq	%rax, 296(%rsp)	# _26, %sfp
# run.c:349:             memset(xb, 0, head_size * sizeof(float));
	movslq	%r12d, %rax	# tmp1217, _568
	movq	%rax, 144(%rsp)	# _568, %sfp
	salq	$2, %rax	#, _538
	movq	%rax, 312(%rsp)	# _538, %sfp
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movslq	%ebp, %rax	# hidden_dim,
	movq	%rsi, %rbp	# _1039, _1039
# run.c:195:     ss /= size;
	movq	$0, 232(%rsp)	#, %sfp
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	%rax, %r9	#,
	movq	%r14, %rax	# _8, _8
# run.c:195:     ss /= size;
	movss	%xmm5, 220(%rsp)	# _1042, %sfp
	imulq	%r9, %r14	# _1041, _1723
	movl	%r9d, %edi	# hidden_dim, hidden_dim
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	$0, 224(%rsp)	#, %sfp
	andl	$-4, %edi	#, _2036
	movl	%edi, 376(%rsp)	# _2036, %sfp
	movq	%r14, 344(%rsp)	# _1723, %sfp
	movq	%rax, %r14	# _8, _1639
	imulq	%rsi, %r14	# _1039, _1639
	movq	%rax, %rsi	# _8, _1642
	imulq	%rax, %rsi	# _8, _1642
	leal	-1(%rbx), %eax	#, _2087
	movl	%eax, 136(%rsp)	# _2087, %sfp
	movl	%ebx, %eax	# dim, bnd.625
	andl	$-4, %ebx	#, _1915
	shrl	$2, %eax	#,
	movq	%r14, 328(%rsp)	# _1639, %sfp
	salq	$4, %rax	#, bnd.625
	movq	%rsi, 336(%rsp)	# _1642, %sfp
	movq	%rax, %rsi	# bnd.625, _56
	leaq	(%rax,%r10), %rax	#, _2064
	movq	%rax, 280(%rsp)	# _2064, %sfp
	leal	-1(%r12), %eax	#, _1750
	movl	%eax, 28(%rsp)	# _1750, %sfp
	movl	%r12d, %eax	# tmp1217, bnd.549
	shrl	$2, %eax	#,
	salq	$4, %rax	#, bnd.549
	movq	%rax, %r11	# bnd.549, _219
	movl	%r12d, %eax	# tmp1217, _196
	movq	%rsi, %r12	# _56, _56
	andl	$-4, %eax	#, _196
	movq	%r11, 352(%rsp)	# _219, %sfp
	movl	%ebx, %r11d	# _1915, _1915
	movl	%eax, 320(%rsp)	# _196, %sfp
	movslq	%r13d, %rax	# pos, pos
	salq	$2, %rax	#, _1632
	movq	%rax, 184(%rsp)	# _1632, %sfp
	movl	%r8d, %eax	# _342, bnd.529
	shrl	$2, %eax	#,
	salq	$4, %rax	#, bnd.529
	movq	%rax, 176(%rsp)	# bnd.529, %sfp
	leaq	0(,%rbp,4), %rax	#, _1691
	movq	%rax, 64(%rsp)	# _1691, %sfp
	leaq	0(,%r9,4), %rax	#, _1077
	movq	%rax, 272(%rsp)	# _1077, %sfp
	leal	-1(%r9), %eax	#, _879
	movl	%eax, 324(%rsp)	# _879, %sfp
	movl	%r9d, %eax	# hidden_dim, bnd.390
	shrl	$2, %eax	#,
	salq	$4, %rax	#, bnd.390
	movq	%rax, 304(%rsp)	# bnd.390, %sfp
	leaq	4(,%rcx,4), %rax	#, tmp1795
	movq	%rax, 160(%rsp)	# tmp1795, %sfp
.L259:
	movq	240(%rsp), %rdi	# %sfp, ivtmp.990
# run.c:293:         rmsnorm(s->xb, x, w->rms_att_weight + l*dim, dim);
	movq	72(%rsp), %rax	# %sfp, transformer
	salq	$2, %rdi	#, _1638
	movq	40(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_att_weight, _10
# run.c:293:         rmsnorm(s->xb, x, w->rms_att_weight + l*dim, dim);
	movq	136(%rax), %r13	# MEM[(struct RunState *)transformer_180(D) + 128B].xb, prephitmp_779
	movq	%rdi, 200(%rsp)	# _1638, %sfp
# run.c:192:     for (int j = 0; j < size; j++) {
	testl	%r15d, %r15d	# dim
	jle	.L121	#,
	cmpl	$2, 136(%rsp)	#, %sfp
	jbe	.L302	#,
# run.c:191:     float ss = 0.0f;
	movq	280(%rsp), %rdx	# %sfp, _2064
# run.c:192:     for (int j = 0; j < size; j++) {
	movq	%r10, %rax	# x, ivtmp.980
# run.c:191:     float ss = 0.0f;
	pxor	%xmm0, %xmm0	# ss
.L123:
# run.c:193:         ss += x[j] * x[j];
	movups	(%rax), %xmm2	# MEM <vector(4) float> [(float *)_53], vect__434.631
	addq	$16, %rax	#, ivtmp.980
	mulps	%xmm2, %xmm2	# tmp2337, vect__434.631
	addss	%xmm2, %xmm0	# stmp_ss_436.632, stmp_ss_436.632
	movaps	%xmm2, %xmm1	# vect__434.631, tmp1240
	shufps	$85, %xmm2, %xmm1	#, vect__434.631, tmp1240
	addss	%xmm1, %xmm0	# stmp_ss_436.632, stmp_ss_436.632
	movaps	%xmm2, %xmm1	# vect__434.631, tmp1241
	unpckhps	%xmm2, %xmm1	# vect__434.631, tmp1241
# run.c:193:         ss += x[j] * x[j];
	shufps	$255, %xmm2, %xmm2	#, vect__434.631, tmp1244
	addss	%xmm1, %xmm0	# stmp_ss_436.632, stmp_ss_436.632
	addss	%xmm2, %xmm0	# stmp_ss_436.632, ss
	cmpq	%rdx, %rax	# _2064, ivtmp.980
	jne	.L123	#,
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	%r11d, %edx	# _1915, j
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L124	#,
.L122:
# run.c:193:         ss += x[j] * x[j];
	movslq	%edx, %rax	# j, j
	movss	(%r10,%rax,4), %xmm1	# *_1244, _1243
	leaq	0(,%rax,4), %rcx	#, _1245
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rdx), %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _1243, tmp1246
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp1246, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %r15d	# j, dim
	jle	.L125	#,
# run.c:193:         ss += x[j] * x[j];
	movss	4(%r10,%rcx), %xmm1	# *_482, _462
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	2(%rdx), %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _462, tmp1248
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp1248, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %r15d	# j, dim
	jle	.L124	#,
# run.c:193:         ss += x[j] * x[j];
	movss	8(%r10,%rcx), %xmm1	# *_2080, _2081
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _2081, tmp1250
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp1250, ss
.L124:
# run.c:195:     ss /= size;
	divss	220(%rsp), %xmm0	# %sfp, ss
	pxor	%xmm1, %xmm1	# tmp1258
# run.c:196:     ss += 1e-5f;
	addss	.LC6(%rip), %xmm0	#, ss
	ucomiss	%xmm0, %xmm1	# ss, tmp1258
	ja	.L127	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	sqrtss	%xmm0, %xmm0	# ss, _880
# run.c:197:     ss = 1.0f / sqrtf(ss);
	movss	.LC7(%rip), %xmm2	#, tmp1772
	divss	%xmm0, %xmm2	# _880, ss
.L129:
	movq	200(%rsp), %rdi	# %sfp, _1638
	movq	%r13, %rax	# prephitmp_779, tmp1272
	leaq	4(%rbx,%rdi), %rdx	#, tmp1271
	subq	%rdx, %rax	# tmp1271, tmp1272
	cmpq	$8, %rax	#, tmp1272
	jbe	.L134	#,
	leaq	4(%r10), %rdx	#, tmp1275
	movq	%r13, %rax	# prephitmp_779, tmp1276
	subq	%rdx, %rax	# tmp1275, tmp1276
	cmpq	$8, %rax	#, tmp1276
	jbe	.L134	#,
	cmpl	$2, 136(%rsp)	#, %sfp
	jbe	.L303	#,
	movaps	%xmm2, %xmm1	# ss, vect_cst__2012
	leaq	(%rbx,%rdi), %rdx	#, tmp1775
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# ivtmp.971
	shufps	$0, %xmm1, %xmm1	# vect_cst__2012
.L138:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	(%r10,%rax), %xmm0	# MEM <vector(4) float> [(float *)x_182 + ivtmp.971_236 * 1], vect__451.606
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	(%rdx,%rax), %xmm7	# MEM <vector(4) float> [(float *)vectp.601_2004 + ivtmp.971_236 * 1], tmp2368
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm1, %xmm0	# vect_cst__2012, vect__451.606
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm7, %xmm0	# tmp2368, vect__453.607
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	%xmm0, 0(%r13,%rax)	# vect__453.607, MEM <vector(4) float> [(float *)_14 + ivtmp.971_236 * 1]
	addq	$16, %rax	#, ivtmp.971
	cmpq	%r12, %rax	# _56, ivtmp.971
	jne	.L138	#,
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L121	#,
	movl	%r15d, %ecx	# dim, niters.610
	subl	%r11d, %ecx	# _1915, niters.610
	cmpl	$1, %ecx	#, niters.610
	je	.L304	#,
	movl	%r11d, %eax	# _1915,
	movl	%r11d, %esi	# _1915, j
.L137:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	(%r10,%rax,4), %xmm1	# MEM <vector(2) float> [(float *)vectp_x.618_2054], vect__1987.619
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movaps	%xmm2, %xmm3	# ss, tmp1287
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	240(%rsp), %rdi	# %sfp, ivtmp.990
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	shufps	$0xe0, %xmm3, %xmm3	# tmp1287
	mulps	%xmm3, %xmm1	# tmp1287, vect__1988.620
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rdi,%rax), %rdx	#, tmp1284
	movq	(%rbx,%rdx,4), %xmm0	# MEM <vector(2) float> [(float *)vectp.615_2047], vect__1985.616
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm1, %xmm0	# vect__1988.620, vect__1990.621
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movlps	%xmm0, 0(%r13,%rax,4)	# vect__1990.621, MEM <vector(2) float> [(float *)vectp.623_2063]
	testb	$1, %cl	#, niters.610
	je	.L121	#,
	movq	200(%rsp), %rdi	# %sfp, _1638
	movl	%ecx, %eax	# niters.610, niters.610
	andl	$-2, %eax	#, niters.610
	addl	%esi, %eax	# j, tmp.613
	leaq	(%rbx,%rdi), %rdx	#, tmp1775
.L141:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	cltq
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%r10,%rax,4), %xmm2	# *_2030, tmp1295
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%rdx,%rax,4), %xmm2	# *_2028, tmp1296
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	%xmm2, 0(%r13,%rax,4)	# tmp1296, *_2033
.L121:
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movq	72(%rsp), %rbx	# %sfp, transformer
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movl	248(%rsp), %eax	# %sfp, tmp1264
	movl	224(%rsp), %edi	# %sfp, tmp2346
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	movl	24(%rbx), %ecx	# MEM[(struct Config *)transformer_180(D)].seq_len, pretmp_1149
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movdqu	208(%rbx), %xmm4	# MEM <vector(2) long unsigned int> [(float * *)transformer_180(D) + 208B], vect__23.664
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	56(%rbx), %r9	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wq, _33
# run.c:301:         matmul(s->q, s->xb, w->wq + l*dim*dim, dim, dim);
	movq	168(%rbx), %r14	# MEM[(struct RunState *)transformer_180(D) + 128B].q, pretmp_1147
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	imull	%ecx, %eax	# pretmp_1149, tmp1264
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movaps	%xmm4, (%rsp)	# vect__23.664, %sfp
# run.c:296:         int loff = l * p->seq_len * kv_dim; // kv cache layer offset for convenience
	imull	%edi, %eax	# tmp2346, loff
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movq	296(%rsp), %rdi	# %sfp, _26
	cltq
	movq	%rax, 152(%rsp)	# _24, %sfp
	addq	%rdi, %rax	# _26, tmp1266
	salq	$2, %rax	#, _28
	movq	%rax, %xmm0	# _28, _28
	punpcklqdq	%xmm0, %xmm0	# tmp1268
	paddq	%xmm4, %xmm0	#, vect__29.665
# run.c:297:         s->k = s->key_cache + loff + pos * kv_dim;
	movups	%xmm0, 176(%rbx)	# vect__29.665, MEM <vector(2) long unsigned int> [(float * *)transformer_180(D) + 176B]
	movq	%xmm0, %rbp	# vect__29.665, ivtmp.913
# run.c:302:         matmul(s->k, s->xb, w->wk + l*dim*kv_dim, dim, kv_dim);
	movq	64(%rbx), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wk, pretmp_1350
	movhps	%xmm0, 32(%rsp)	# vect__29.665, %sfp
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%r15d, %r15d	# dim
	jle	.L135	#,
	movq	168(%rsp), %r8	# %sfp, _9
	movq	264(%rsp), %rax	# %sfp, ivtmp.992
	movl	%ecx, 96(%rsp)	# pretmp_1149, %sfp
	movq	%r14, %rdi	# pretmp_1147, ivtmp.956
	movq	%rbx, 104(%rsp)	# pretmp_1350, %sfp
	movl	136(%rsp), %ebp	# %sfp, _2087
	leaq	(%r8,%r14), %rsi	#, _411
	movq	%r10, 48(%rsp)	# x, %sfp
	leaq	(%r9,%rax,4), %rdx	#, ivtmp.959
	movq	%rax, %r10	# ivtmp.992, ivtmp.992
	movq	%rsi, (%rsp)	# _411, %sfp
	xorl	%esi, %esi	# ivtmp.958
	movq	%r14, 80(%rsp)	# pretmp_1147, %sfp
	movq	%r8, %r14	# _9, _9
	movq	%xmm0, 56(%rsp)	# ivtmp.913, %sfp
	.p2align 4,,10
	.p2align 3
.L136:
	cmpl	$2, %ebp	#, _2087
	jbe	.L305	#,
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.948
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	.p2align 4,,10
	.p2align 3
.L146:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	(%rdx,%rax), %xmm0	# MEM <vector(4) float> [(float *)vectp.589_1925 + ivtmp.948_295 * 1], vect__302.594
	movups	0(%r13,%rax), %xmm4	# MEM <vector(4) float> [(float *)_14 + ivtmp.948_295 * 1], tmp2377
	addq	$16, %rax	#, ivtmp.948
	mulps	%xmm4, %xmm0	# tmp2377, vect__302.594
	addss	%xmm0, %xmm1	# stmp_val_304.595, stmp_val_304.595
	movaps	%xmm0, %xmm2	# vect__302.594, tmp1318
	shufps	$85, %xmm0, %xmm2	#, vect__302.594, tmp1318
	addss	%xmm2, %xmm1	# stmp_val_304.595, stmp_val_304.595
	movaps	%xmm0, %xmm2	# vect__302.594, tmp1319
	unpckhps	%xmm0, %xmm2	# vect__302.594, tmp1319
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__302.594, tmp1322
	addss	%xmm2, %xmm1	# stmp_val_304.595, stmp_val_304.595
	addss	%xmm0, %xmm1	# stmp_val_304.595, val
	cmpq	%rax, %r12	# ivtmp.948, _56
	jne	.L146	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r11d, %eax	# _1915, j
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L145	#,
.L149:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rsi,%rax), %ecx	#, tmp1301
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r8	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1301, tmp1302
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r8,4), %rbx	#, _1342
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rcx	# ivtmp.992, tmp1303
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r9,%rcx,4), %xmm0	# *_577, *_577
	mulss	0(%r13,%r8,4), %xmm0	# *_1338, tmp1304
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1304, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%ecx, %r15d	# j, dim
	jle	.L145	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%esi, %ecx	# ivtmp.958, tmp1306
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1306, tmp1307
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rcx	# ivtmp.992, tmp1308
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r9,%rcx,4), %xmm0	# *_1257, *_1257
	mulss	4(%r13,%rbx), %xmm0	# *_1253, tmp1309
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1309, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r15d	# j, dim
	jle	.L145	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%esi, %eax	# ivtmp.958, tmp1311
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rax	# ivtmp.992, tmp1313
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r9,%rax,4), %xmm0	# *_1907, *_1907
	mulss	8(%r13,%rbx), %xmm0	# *_1911, tmp1314
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1314, val
.L145:
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%rdi)	# val, MEM[(float *)_62]
# run.c:261:     for (i = 0; i < d; i++) {
	addl	%r15d, %esi	# dim, ivtmp.958
	addq	$4, %rdi	#, ivtmp.956
	addq	%r14, %rdx	# _9, ivtmp.959
	cmpq	%rdi, (%rsp)	# ivtmp.956, %sfp
	jne	.L136	#,
	movl	248(%rsp), %eax	# %sfp,
	movq	48(%rsp), %r10	# %sfp, x
	movq	56(%rsp), %rbp	# %sfp, ivtmp.913
	movq	80(%rsp), %r14	# %sfp, pretmp_1147
	movl	96(%rsp), %ecx	# %sfp, pretmp_1149
	movq	104(%rsp), %rbx	# %sfp, pretmp_1350
	testl	%eax, %eax	#
	jle	.L453	#,
.L152:
	movq	%r10, (%rsp)	# x, %sfp
# run.c:262:         float val = 0.0f;
	movq	%rbp, %rdi	# ivtmp.913, ivtmp.942
	xorl	%edx, %edx	# ivtmp.944
# run.c:261:     for (i = 0; i < d; i++) {
	xorl	%esi, %esi	# i
	movl	%ecx, 80(%rsp)	# pretmp_1149, %sfp
	movq	256(%rsp), %r8	# %sfp, ivtmp.991
	movq	%rbp, 48(%rsp)	# ivtmp.913, %sfp
	movl	248(%rsp), %ebp	# %sfp, tmp1213
	movq	%r14, 56(%rsp)	# pretmp_1147, %sfp
	movl	136(%rsp), %r14d	# %sfp, _2087
	.p2align 4,,10
	.p2align 3
.L151:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r15d, %r15d	# dim
	jle	.L159	#,
	cmpl	$2, %r14d	#, _2087
	jbe	.L306	#,
	movslq	%edx, %rax	# ivtmp.944, _273
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	addq	%r8, %rax	# ivtmp.991, tmp1324
	leaq	(%rbx,%rax,4), %rcx	#, vectp.577
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.934
	.p2align 4,,10
	.p2align 3
.L155:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	(%rcx,%rax), %xmm0	# MEM <vector(4) float> [(float *)vectp.577_1871 + ivtmp.934_1983 * 1], vect__283.582
	movups	0(%r13,%rax), %xmm5	# MEM <vector(4) float> [(float *)_14 + ivtmp.934_1983 * 1], tmp2384
	addq	$16, %rax	#, ivtmp.934
	mulps	%xmm5, %xmm0	# tmp2384, vect__283.582
	addss	%xmm0, %xmm1	# stmp_val_285.583, stmp_val_285.583
	movaps	%xmm0, %xmm2	# vect__283.582, tmp1328
	shufps	$85, %xmm0, %xmm2	#, vect__283.582, tmp1328
	addss	%xmm2, %xmm1	# stmp_val_285.583, stmp_val_285.583
	movaps	%xmm0, %xmm2	# vect__283.582, tmp1329
	unpckhps	%xmm0, %xmm2	# vect__283.582, tmp1329
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__283.582, tmp1332
	addss	%xmm2, %xmm1	# stmp_val_285.583, stmp_val_285.583
	addss	%xmm0, %xmm1	# stmp_val_285.583, val
	cmpq	%rax, %r12	# ivtmp.934, _56
	jne	.L155	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r11d, %eax	# _1915, j
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L159	#,
.L154:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rdx,%rax), %ecx	#, tmp1334
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r9	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1334, tmp1335
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r9,4), %r10	#, _1536
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rcx	# ivtmp.991, tmp1336
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rbx,%rcx,4), %xmm0	# *_112, *_112
	mulss	0(%r13,%r9,4), %xmm0	# *_1538, tmp1337
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1337, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%ecx, %r15d	# j, dim
	jle	.L159	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %ecx	# ivtmp.944, tmp1339
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1339, tmp1340
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rcx	# ivtmp.991, tmp1341
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rbx,%rcx,4), %xmm0	# *_1334, *_1334
	mulss	4(%r13,%r10), %xmm0	# *_1348, tmp1342
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1342, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r15d	# j, dim
	jle	.L159	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %eax	# ivtmp.944, tmp1344
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rax	# ivtmp.991, tmp1346
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rbx,%rax,4), %xmm0	# *_1853, *_1853
	mulss	8(%r13,%r10), %xmm0	# *_1857, tmp1347
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1347, val
.L159:
# run.c:261:     for (i = 0; i < d; i++) {
	addl	$1, %esi	#, i
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%rdi)	# val, *_289
# run.c:261:     for (i = 0; i < d; i++) {
	addl	%r15d, %edx	# dim, ivtmp.944
	addq	$4, %rdi	#, ivtmp.942
	cmpl	%esi, %ebp	# i, tmp1213
	jg	.L151	#,
# run.c:303:         matmul(s->v, s->xb, w->wv + l*dim*kv_dim, dim, kv_dim);
	movl	80(%rsp), %ecx	# %sfp, pretmp_1149
	movq	48(%rsp), %rbp	# %sfp, ivtmp.913
	xorl	%edx, %edx	# ivtmp.930
# run.c:261:     for (i = 0; i < d; i++) {
	xorl	%esi, %esi	# i
# run.c:303:         matmul(s->v, s->xb, w->wv + l*dim*kv_dim, dim, kv_dim);
	movq	56(%rsp), %r14	# %sfp, pretmp_1147
	movq	72(%rsp), %rax	# %sfp, transformer
	movl	%ecx, 56(%rsp)	# pretmp_1149, %sfp
	movq	32(%rsp), %r8	# %sfp, ivtmp.928
	movq	%r14, 48(%rsp)	# pretmp_1147, %sfp
	movq	72(%rax), %rdi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wv, _42
	movq	%rbp, 32(%rsp)	# ivtmp.913, %sfp
	movq	256(%rsp), %r9	# %sfp, ivtmp.991
	movl	136(%rsp), %r14d	# %sfp, _2087
	movl	248(%rsp), %ebp	# %sfp, tmp1213
	.p2align 4,,10
	.p2align 3
.L160:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r15d, %r15d	# dim
	jle	.L166	#,
	cmpl	$2, %r14d	#, _2087
	jbe	.L307	#,
	movslq	%edx, %rax	# ivtmp.930, _254
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	addq	%r9, %rax	# ivtmp.991, tmp1350
	leaq	(%rdi,%rax,4), %rcx	#, vectp.565
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.920
	.p2align 4,,10
	.p2align 3
.L162:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	(%rcx,%rax), %xmm0	# MEM <vector(4) float> [(float *)vectp.565_1821 + ivtmp.920_251 * 1], vect__264.570
	movups	0(%r13,%rax), %xmm4	# MEM <vector(4) float> [(float *)_14 + ivtmp.920_251 * 1], tmp2389
	addq	$16, %rax	#, ivtmp.920
	mulps	%xmm4, %xmm0	# tmp2389, vect__264.570
	addss	%xmm0, %xmm1	# stmp_val_266.571, stmp_val_266.571
	movaps	%xmm0, %xmm2	# vect__264.570, tmp1354
	shufps	$85, %xmm0, %xmm2	#, vect__264.570, tmp1354
	addss	%xmm2, %xmm1	# stmp_val_266.571, stmp_val_266.571
	movaps	%xmm0, %xmm2	# vect__264.570, tmp1355
	unpckhps	%xmm0, %xmm2	# vect__264.570, tmp1355
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__264.570, tmp1358
	addss	%xmm2, %xmm1	# stmp_val_266.571, stmp_val_266.571
	addss	%xmm0, %xmm1	# stmp_val_266.571, val
	cmpq	%rax, %r12	# ivtmp.920, _56
	jne	.L162	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r11d, %eax	# _1915, j
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L166	#,
.L161:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rdx,%rax), %ecx	#, tmp1360
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r10	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1360, tmp1361
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r10,4), %rbx	#, _974
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r9, %rcx	# ivtmp.991, tmp1362
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rcx,4), %xmm0	# *_977, *_977
	mulss	0(%r13,%r10,4), %xmm0	# *_973, tmp1363
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1363, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%ecx, %r15d	# j, dim
	jle	.L166	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %ecx	# ivtmp.930, tmp1365
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1365, tmp1366
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r9, %rcx	# ivtmp.991, tmp1367
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rcx,4), %xmm0	# *_1656, *_1656
	mulss	4(%r13,%rbx), %xmm0	# *_1660, tmp1368
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1368, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%r15d, %eax	# dim, j
	jge	.L166	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %eax	# ivtmp.930, tmp1370
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r9, %rax	# ivtmp.991, tmp1372
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rax,4), %xmm0	# *_1803, *_1803
	mulss	8(%r13,%rbx), %xmm0	# *_1807, tmp1373
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1373, val
.L166:
# run.c:261:     for (i = 0; i < d; i++) {
	addl	$1, %esi	#, i
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%r8)	# val, *_270
# run.c:261:     for (i = 0; i < d; i++) {
	addl	%r15d, %edx	# dim, ivtmp.930
	addq	$4, %r8	#, ivtmp.928
	cmpl	%esi, %ebp	# i, tmp1213
	jg	.L160	#,
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	movq	(%rsp), %r10	# %sfp, x
	movq	32(%rsp), %rbp	# %sfp, ivtmp.913
	movq	48(%rsp), %r14	# %sfp, pretmp_1147
	movl	56(%rsp), %ecx	# %sfp, pretmp_1149
	testl	%r15d, %r15d	# dim
	jle	.L150	#,
	movl	248(%rsp), %eax	# %sfp, tmp1213
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	pxor	%xmm7, %xmm7	# _1384
	pxor	%xmm5, %xmm5	# tmp1774
	movss	.LC7(%rip), %xmm2	#, tmp1772
	cvtsi2ssl	140(%rsp), %xmm7	# %sfp, _1384
	movss	.LC9(%rip), %xmm4	#, tmp1773
	movq	%r10, 104(%rsp)	# x, %sfp
	leaq	412(%rsp), %rbx	#, tmp1770
	cvtsi2ssl	88(%rsp), %xmm5	# %sfp, tmp1774
	cmpl	%eax, %r15d	# tmp1213, dim
	movl	%ecx, 128(%rsp)	# pretmp_1149, %sfp
	cmovle	%r15d, %eax	# dim,, _1286
	movl	%r11d, 360(%rsp)	# _1915, %sfp
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	xorl	%r9d, %r9d	# i
	movq	%rbx, 56(%rsp)	# tmp1770, %sfp
	leaq	408(%rsp), %rbx	#, tmp1769
	movq	%r12, 96(%rsp)	# _56, %sfp
	movq	%r14, %r12	# ivtmp.912, ivtmp.912
	movq	%r13, 112(%rsp)	# prephitmp_779, %sfp
	movl	%r9d, %r13d	# i, i
	movq	%r14, 120(%rsp)	# pretmp_1147, %sfp
	movl	%eax, %r14d	# _1286, _1286
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	movss	%xmm7, (%rsp)	# _1384, %sfp
	movss	%xmm4, 32(%rsp)	# tmp1773, %sfp
	movss	%xmm5, 48(%rsp)	# tmp1774, %sfp
	movss	%xmm2, 80(%rsp)	# tmp1772, %sfp
.L168:
# run.c:307:             int head_dim = i % head_size;
	movl	%r13d, %eax	# i, tmp1377
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	pxor	%xmm1, %xmm1	# tmp1378
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addl	$2, %r13d	#, i
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addq	$8, %r12	#, ivtmp.912
# run.c:307:             int head_dim = i % head_size;
	cltd
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	movss	32(%rsp), %xmm0	# %sfp,
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addq	$8, %rbp	#, ivtmp.913
# run.c:307:             int head_dim = i % head_size;
	idivl	140(%rsp)	# %sfp
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	cvtsi2ssl	%edx, %xmm1	# head_dim, tmp1378
	divss	(%rsp), %xmm1	# %sfp,
	call	powf@PLT	#
	movq	56(%rsp), %rdi	# %sfp,
	movq	%rbx, %rsi	# tmp1769,
	movaps	%xmm0, %xmm1	#, tmp1801
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	movss	80(%rsp), %xmm0	# %sfp, freq
	divss	%xmm1, %xmm0	# tmp1801, freq
# run.c:309:             float val = pos * freq;
	mulss	48(%rsp), %xmm0	# %sfp, val
	call	sincosf@PLT	#
# run.c:315:                 float v0 = vec[i];
	movss	-8(%r12), %xmm3	# MEM[(float *)_444], v0
	movss	408(%rsp), %xmm5	#, sincostmp_1812
	movss	412(%rsp), %xmm4	#, sincostmp_1812
# run.c:316:                 float v1 = vec[i+1];
	movss	-4(%r12), %xmm0	# MEM[(float *)_444 + 4B], v1
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	movaps	%xmm5, %xmm1	# sincostmp_1812, tmp1388
	mulss	%xmm3, %xmm1	# v0, tmp1388
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	movaps	%xmm4, %xmm6	# sincostmp_1812, tmp1389
	mulss	%xmm0, %xmm6	# v1, tmp1389
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	mulss	%xmm4, %xmm3	# sincostmp_1812, tmp1392
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	mulss	%xmm5, %xmm0	# sincostmp_1812, tmp1391
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	subss	%xmm6, %xmm1	# tmp1389, tmp1390
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	addss	%xmm3, %xmm0	# tmp1392, tmp1393
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	unpcklps	%xmm0, %xmm1	# tmp1393, tmp1387
	movlps	%xmm1, -8(%r12)	# tmp1387, MEM <vector(2) float> [(float *)_444]
# run.c:315:                 float v0 = vec[i];
	movss	-8(%rbp), %xmm3	# *_1234, v0
# run.c:316:                 float v1 = vec[i+1];
	movss	-4(%rbp), %xmm0	# *_1232, v1
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	movaps	%xmm3, %xmm1	# v0, tmp1395
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	movaps	%xmm0, %xmm6	# v1, tmp1396
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	mulss	%xmm5, %xmm1	# sincostmp_1812, tmp1395
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	mulss	%xmm4, %xmm6	# sincostmp_1812, tmp1396
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	mulss	%xmm5, %xmm0	# sincostmp_1812, tmp1398
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	mulss	%xmm4, %xmm3	# sincostmp_1812, tmp1399
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	subss	%xmm6, %xmm1	# tmp1396, tmp1397
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	addss	%xmm3, %xmm0	# tmp1399, tmp1400
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	unpcklps	%xmm0, %xmm1	# tmp1400, tmp1394
	movlps	%xmm1, -8(%rbp)	# tmp1394, MEM <vector(2) float> [(float *)_1234]
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	cmpl	%r14d, %r13d	# _1286, i
	jl	.L168	#,
	movl	%r13d, %r9d	# i, i
	movq	96(%rsp), %r12	# %sfp, _56
	movq	104(%rsp), %r10	# %sfp, x
	movq	120(%rsp), %r14	# %sfp, pretmp_1147
	movl	128(%rsp), %ecx	# %sfp, pretmp_1149
	movq	112(%rsp), %r13	# %sfp, prephitmp_779
	movl	360(%rsp), %r11d	# %sfp, _1915
	movss	80(%rsp), %xmm2	# %sfp, tmp1772
	cmpl	%r9d, %r15d	# i, dim
	jle	.L171	#,
.L167:
	movslq	%r9d, %rbp	# i, ivtmp.899
	movq	%r10, 96(%rsp)	# x, %sfp
	movl	%ecx, 112(%rsp)	# pretmp_1149, %sfp
	movl	%r11d, 120(%rsp)	# _1915, %sfp
	movq	%r13, 104(%rsp)	# prephitmp_779, %sfp
	movq	%rbp, %r13	# ivtmp.899, ivtmp.899
	movq	%rbx, %rbp	# tmp1769, tmp1769
	movl	140(%rsp), %ebx	# %sfp, tmp1217
	movq	%r12, 80(%rsp)	# _56, %sfp
	movq	56(%rsp), %r12	# %sfp, tmp1770
	movss	%xmm2, 56(%rsp)	# tmp1772, %sfp
	.p2align 4,,10
	.p2align 3
.L170:
# run.c:307:             int head_dim = i % head_size;
	movl	%r13d, %eax	# ivtmp.899, tmp1404
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	movss	32(%rsp), %xmm0	# %sfp,
	pxor	%xmm1, %xmm1	# tmp1405
# run.c:307:             int head_dim = i % head_size;
	cltd
	idivl	%ebx	# tmp1217
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	cvtsi2ssl	%edx, %xmm1	# head_dim, tmp1405
	divss	(%rsp), %xmm1	# %sfp,
	call	powf@PLT	#
	movq	%rbp, %rsi	# tmp1769,
	movq	%r12, %rdi	# tmp1770,
	movaps	%xmm0, %xmm1	#, tmp1802
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	movss	56(%rsp), %xmm0	# %sfp, freq
	divss	%xmm1, %xmm0	# tmp1802, freq
# run.c:309:             float val = pos * freq;
	mulss	48(%rsp), %xmm0	# %sfp, val
	call	sincosf@PLT	#
# run.c:315:                 float v0 = vec[i];
	movss	(%r14,%r13,4), %xmm3	# MEM[(float *)_37 + ivtmp.899_360 * 4], v0
# run.c:316:                 float v1 = vec[i+1];
	movss	4(%r14,%r13,4), %xmm0	# MEM[(float *)_37 + 4B + ivtmp.899_360 * 4], v1
	movss	408(%rsp), %xmm5	#, sincostmp_415
	movss	412(%rsp), %xmm4	#, sincostmp_415
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	movaps	%xmm3, %xmm1	# v0, tmp1415
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	movaps	%xmm0, %xmm6	# v1, tmp1416
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	mulss	%xmm5, %xmm1	# sincostmp_415, tmp1415
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	mulss	%xmm4, %xmm6	# sincostmp_415, tmp1416
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	mulss	%xmm5, %xmm0	# sincostmp_415, tmp1418
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	mulss	%xmm4, %xmm3	# sincostmp_415, tmp1419
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	subss	%xmm6, %xmm1	# tmp1416, tmp1417
# run.c:318:                 vec[i+1] = v0 * fci + v1 * fcr;
	addss	%xmm3, %xmm0	# tmp1419, tmp1420
# run.c:317:                 vec[i]   = v0 * fcr - v1 * fci;
	unpcklps	%xmm0, %xmm1	# tmp1420, tmp1414
	movlps	%xmm1, (%r14,%r13,4)	# tmp1414, MEM <vector(2) float> [(float *)_37 + ivtmp.899_360 * 4]
# run.c:306:         for (int i = 0; i < dim; i+=2) {
	addq	$2, %r13	#, ivtmp.899
	cmpl	%r13d, %r15d	# ivtmp.899, dim
	jg	.L170	#,
	movq	80(%rsp), %r12	# %sfp, _56
	movq	96(%rsp), %r10	# %sfp, x
	movq	104(%rsp), %r13	# %sfp, prephitmp_779
	movl	112(%rsp), %ecx	# %sfp, pretmp_1149
	movl	120(%rsp), %r11d	# %sfp, _1915
	movss	56(%rsp), %xmm2	# %sfp, tmp1772
.L171:
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movq	72(%rsp), %rax	# %sfp, transformer
	movl	12(%rax), %ebx	# MEM[(struct Config *)transformer_180(D)].n_heads,
	testl	%ebx, %ebx	#
	jle	.L454	#,
.L174:
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movl	$0, 80(%rsp)	#, %sfp
	movl	%ecx, %eax	# pretmp_1149, pretmp_1149
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	xorl	%r8d, %r8d	# ivtmp.893
	movq	%r14, %rsi	# pretmp_1147, pretmp_1147
	movq	%r10, 368(%rsp)	# x, %sfp
	movl	320(%rsp), %r9d	# %sfp, _196
	movl	%r15d, 380(%rsp)	# dim, %sfp
	movq	352(%rsp), %rbx	# %sfp, _219
	movl	%r11d, 384(%rsp)	# _1915, %sfp
	movq	312(%rsp), %r13	# %sfp, _538
	movq	%r12, 360(%rsp)	# _56, %sfp
	movq	72(%rsp), %rcx	# %sfp, transformer
	movl	140(%rsp), %r12d	# %sfp, tmp1217
	.p2align 4,,10
	.p2align 3
.L173:
# run.c:329:             float* att = s->att + h * p->seq_len;
	movl	80(%rsp), %r10d	# %sfp, h
	leaq	0(,%r8,4), %rdi	#, _354
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movl	88(%rsp), %r11d	# %sfp,
	movq	%rdi, 48(%rsp)	# _354, %sfp
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	192(%rcx), %rdi	# MEM[(struct RunState *)transformer_180(D) + 128B].att, _68
# run.c:329:             float* att = s->att + h * p->seq_len;
	imull	%r10d, %eax	# h, tmp1421
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rdi, 96(%rsp)	# _68, %sfp
# run.c:329:             float* att = s->att + h * p->seq_len;
	movslq	%eax, %rdx	# tmp1421, _71
# run.c:329:             float* att = s->att + h * p->seq_len;
	leaq	(%rdi,%rdx,4), %rdi	#, att
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rdx, 104(%rsp)	# _71, %sfp
# run.c:329:             float* att = s->att + h * p->seq_len;
	movq	%rdi, 56(%rsp)	# att, %sfp
# run.c:331:             for (int t = 0; t <= pos; t++) {
	testl	%r11d, %r11d	#
	js	.L176	#,
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movl	%r10d, %eax	# h, tmp1424
# run.c:339:                 score /= sqrtf(head_size);
	pxor	%xmm2, %xmm2	# _87
	movq	%rdi, %r15	# att, ivtmp.845
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movq	208(%rcx), %r10	# MEM[(struct RunState *)transformer_180(D) + 128B].key_cache, pretmp_1157
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	cltd
# run.c:339:                 score /= sqrtf(head_size);
	cvtsi2ssl	%r12d, %xmm2	# tmp1217, _87
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	idivl	208(%rsp)	# %sfp
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	imull	%r12d, %eax	# tmp1217, tmp1426
# run.c:333:                 float* k = s->key_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movslq	%eax, %rbp	# tmp1426, tmp1427
	movq	152(%rsp), %rax	# %sfp, _24
	addq	%rax, %rbp	# _24, ivtmp.847
	movq	160(%rsp), %rax	# %sfp, tmp1795
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	movq	%rbp, %rcx	# ivtmp.847, ivtmp.883
	leaq	(%rax,%rdi), %r14	#, _1430
	testl	%r12d, %r12d	# tmp1217
	jle	.L308	#,
.L186:
	cmpl	$2, 28(%rsp)	#, %sfp
	jbe	.L309	#,
	.p2align 4,,10
	.p2align 3
.L455:
	movq	48(%rsp), %rax	# %sfp, _354
	leaq	(%r10,%rcx,4), %rdx	#, vectp.556
# run.c:335:                 float score = 0.0f;
	pxor	%xmm1, %xmm1	# score
	leaq	(%rsi,%rax), %r11	#, vectp.553
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	xorl	%eax, %eax	# ivtmp.873
	.p2align 4,,10
	.p2align 3
.L179:
# run.c:337:                     score += q[i] * k[i];
	movups	(%r11,%rax), %xmm0	# MEM <vector(4) float> [(float *)vectp.553_1757 + ivtmp.873_1647 * 1], vect__86.558
	movups	(%rdx,%rax), %xmm5	# MEM <vector(4) float> [(float *)vectp.556_1763 + ivtmp.873_1647 * 1], tmp2437
	addq	$16, %rax	#, ivtmp.873
	mulps	%xmm5, %xmm0	# tmp2437, vect__86.558
	addss	%xmm0, %xmm1	# stmp_score_233.559, stmp_score_233.559
	movaps	%xmm0, %xmm7	# vect__86.558, tmp1433
	movaps	%xmm0, %xmm6	# vect__86.558, tmp1434
	shufps	$85, %xmm0, %xmm7	#, vect__86.558, tmp1433
	unpckhps	%xmm0, %xmm6	# vect__86.558, tmp1434
# run.c:337:                     score += q[i] * k[i];
	shufps	$255, %xmm0, %xmm0	#, vect__86.558, tmp1437
	addss	%xmm7, %xmm1	# stmp_score_233.559, stmp_score_233.559
	addss	%xmm6, %xmm1	# stmp_score_233.559, stmp_score_233.559
	addss	%xmm0, %xmm1	# stmp_score_233.559, score
	cmpq	%rax, %rbx	# ivtmp.873, _219
	jne	.L179	#,
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	movl	%r9d, %eax	# _196, i
	cmpl	%r9d, %r12d	# _196, tmp1217
	je	.L177	#,
.L178:
# run.c:337:                     score += q[i] * k[i];
	movslq	%eax, %rdx	# i, _258
	leaq	(%rdx,%r8), %r11	#, tmp1438
# run.c:337:                     score += q[i] * k[i];
	addq	%rcx, %rdx	# ivtmp.883, tmp1439
# run.c:337:                     score += q[i] * k[i];
	movss	(%rsi,%r11,4), %xmm0	# *_261, *_261
	mulss	(%r10,%rdx,4), %xmm0	# *_267, tmp1440
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	leal	1(%rax), %edx	#, i
# run.c:337:                     score += q[i] * k[i];
	addss	%xmm0, %xmm1	# tmp1440, score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	cmpl	%r12d, %edx	# tmp1217, i
	jge	.L177	#,
# run.c:337:                     score += q[i] * k[i];
	movslq	%edx, %rdx	# i, _123
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	addl	$2, %eax	#, i
# run.c:337:                     score += q[i] * k[i];
	leaq	(%rdx,%r8), %r11	#, tmp1442
# run.c:337:                     score += q[i] * k[i];
	addq	%rcx, %rdx	# ivtmp.883, tmp1443
# run.c:337:                     score += q[i] * k[i];
	movss	(%rsi,%r11,4), %xmm0	# *_669, *_669
	mulss	(%r10,%rdx,4), %xmm0	# *_198, tmp1444
# run.c:337:                     score += q[i] * k[i];
	addss	%xmm0, %xmm1	# tmp1444, score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	cmpl	%eax, %r12d	# i, tmp1217
	jle	.L177	#,
# run.c:337:                     score += q[i] * k[i];
	cltq
	leaq	(%r8,%rax), %rdx	#, tmp1446
# run.c:337:                     score += q[i] * k[i];
	addq	%rcx, %rax	# ivtmp.883, tmp1447
# run.c:337:                     score += q[i] * k[i];
	movss	(%rsi,%rdx,4), %xmm0	# *_1739, *_1739
	mulss	(%r10,%rax,4), %xmm0	# *_1743, tmp1448
# run.c:337:                     score += q[i] * k[i];
	addss	%xmm0, %xmm1	# tmp1448, score
.L177:
	pxor	%xmm4, %xmm4	# tmp2440
	ucomiss	%xmm2, %xmm4	# _87, tmp2440
	ja	.L437	#,
.L463:
	movaps	%xmm2, %xmm0	# _87, _229
	sqrtss	%xmm0, %xmm0	# _229, _229
.L187:
# run.c:339:                 score /= sqrtf(head_size);
	divss	%xmm0, %xmm1	# _229, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movq	40(%rsp), %rax	# %sfp, _1039
	addq	$4, %rdi	#, ivtmp.881
	addq	%rax, %rcx	# _1039, ivtmp.883
# run.c:341:                 att[t] = score;
	movss	%xmm1, -4(%rdi)	# score, MEM[(float *)_1375]
# run.c:331:             for (int t = 0; t <= pos; t++) {
	cmpq	%r14, %rdi	# _1430, ivtmp.881
	je	.L185	#,
# run.c:335:                 float score = 0.0f;
	pxor	%xmm1, %xmm1	# score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	testl	%r12d, %r12d	# tmp1217
	jle	.L187	#,
	cmpl	$2, 28(%rsp)	#, %sfp
	ja	.L455	#,
.L309:
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	xorl	%eax, %eax	# i
# run.c:335:                 float score = 0.0f;
	pxor	%xmm1, %xmm1	# score
	jmp	.L178	#
.L438:
	movq	%r13, %r8	# ivtmp.893, ivtmp.893
	movq	(%rsp), %rbx	# %sfp, _219
	movq	32(%rsp), %r13	# %sfp, _538
	movq	112(%rsp), %rbp	# %sfp, ivtmp.847
	.p2align 4,,10
	.p2align 3
.L185:
# run.c:206:     float max_val = x[0];
	movq	56(%rsp), %rax	# %sfp, att
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpl	$1, 92(%rsp)	#, %sfp
# run.c:206:     float max_val = x[0];
	movss	(%rax), %xmm1	# *att_215, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	jle	.L189	#,
	movq	184(%rsp), %rdi	# %sfp, _1632
	leaq	(%rax,%rdi), %rdx	#, _1646
	.p2align 4,,10
	.p2align 3
.L191:
# run.c:208:         if (x[i] > max_val) {
	movss	4(%rax), %xmm0	# MEM[(float *)_1628 + 4B], _1281
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.867
# run.c:209:             max_val = x[i];
	maxss	%xmm1, %xmm0	# max_val, _1281
	movaps	%xmm0, %xmm1	# _1281, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rdx, %rax	# _1646, ivtmp.867
	jne	.L191	#,
.L189:
# run.c:209:             max_val = x[i];
	movq	56(%rsp), %rax	# %sfp, ivtmp.861
# run.c:213:     float sum = 0.0f;
	movq	%r8, 112(%rsp)	# ivtmp.893, %sfp
	pxor	%xmm2, %xmm2	# sum
	movl	%r9d, 120(%rsp)	# _196, %sfp
	movq	%rbx, 128(%rsp)	# _219, %sfp
	movq	%rax, %rbx	# ivtmp.861, ivtmp.861
	movss	%xmm1, 32(%rsp)	# max_val, %sfp
	.p2align 4,,10
	.p2align 3
.L192:
# run.c:215:         x[i] = expf(x[i] - max_val);
	movss	(%rbx), %xmm0	# MEM[(float *)_1571], MEM[(float *)_1571]
	subss	32(%rsp), %xmm0	# %sfp, tmp1459
	movss	%xmm2, (%rsp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %rbx	#, ivtmp.861
# run.c:215:         x[i] = expf(x[i] - max_val);
	call	expf@PLT	#
# run.c:216:         sum += x[i];
	movss	(%rsp), %xmm2	# %sfp, sum
# run.c:215:         x[i] = expf(x[i] - max_val);
	movss	%xmm0, -4(%rbx)	# _470, MEM[(float *)_1571]
# run.c:216:         sum += x[i];
	addss	%xmm0, %xmm2	# _470, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	cmpq	%rbx, %r14	# ivtmp.861, _1430
	jne	.L192	#,
	cmpl	$2, 88(%rsp)	#, %sfp
	movq	112(%rsp), %r8	# %sfp, ivtmp.893
	movl	120(%rsp), %r9d	# %sfp, _196
	movq	128(%rsp), %rbx	# %sfp, _219
	jbe	.L311	#,
	movq	56(%rsp), %rax	# %sfp, att
	movq	176(%rsp), %rdi	# %sfp, _1562
	movaps	%xmm2, %xmm1	# sum, vect_cst__1679
	shufps	$0, %xmm1, %xmm1	# vect_cst__1679
	leaq	(%rax,%rdi), %rdx	#, _1561
	.p2align 4,,10
	.p2align 3
.L194:
# run.c:220:         x[i] /= sum;
	movups	(%rax), %xmm0	# MEM <vector(4) float> [(float *)_1512], vect__480.535
	addq	$16, %rax	#, ivtmp.854
	divps	%xmm1, %xmm0	# vect_cst__1679, vect__480.535
	movups	%xmm0, -16(%rax)	# vect__480.535, MEM <vector(4) float> [(float *)_1512]
	cmpq	%rdx, %rax	# _1561, ivtmp.854
	jne	.L194	#,
	testb	$3, 92(%rsp)	#, %sfp
	je	.L195	#,
	movl	212(%rsp), %eax	# %sfp, niters_vector_mult_vf.530
	movl	%eax, %edx	# niters_vector_mult_vf.530,
.L193:
	movl	92(%rsp), %ecx	# %sfp, niters.538
	subl	%edx, %ecx	# _1671, niters.538
	cmpl	%edx, 88(%rsp)	# _1671, %sfp
	je	.L196	#,
	movq	104(%rsp), %rdi	# %sfp, _71
	movaps	%xmm2, %xmm1	# sum, tmp1469
	shufps	$0xe0, %xmm1, %xmm1	# tmp1469
	movhps	.LC8(%rip), %xmm1	#, tmp1472
	addq	%rdi, %rdx	# _71, tmp1466
	movq	96(%rsp), %rdi	# %sfp, _68
	leaq	(%rdi,%rdx,4), %rdx	#, vectp.543
# run.c:220:         x[i] /= sum;
	movq	(%rdx), %xmm0	# MEM <vector(2) float> [(float *)vectp.543_1711], vect__1659.544
# run.c:220:         x[i] /= sum;
	divps	%xmm1, %xmm0	# tmp1472, tmp1473
	movlps	%xmm0, (%rdx)	# vect__1660.545, MEM <vector(2) float> [(float *)vectp.543_1711]
	testb	$1, %cl	#, niters.538
	je	.L195	#,
	andl	$-2, %ecx	#, niters_vector_mult_vf.540
	addl	%ecx, %eax	# niters_vector_mult_vf.540, tmp.541
.L196:
# run.c:220:         x[i] /= sum;
	movq	56(%rsp), %rdi	# %sfp, att
	cltq
	leaq	(%rdi,%rax,4), %rax	#, _1697
# run.c:220:         x[i] /= sum;
	movss	(%rax), %xmm0	# *_1697, *_1697
	divss	%xmm2, %xmm0	# sum, tmp1478
	movss	%xmm0, (%rax)	# tmp1478, *_1697
.L195:
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	72(%rsp), %rax	# %sfp, transformer
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	48(%rsp), %rcx	# %sfp, _354
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	xorl	%esi, %esi	#
	movq	%r13, %rdx	# _538,
	movl	%r9d, 56(%rsp)	# _196, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	136(%rax), %rdi	# MEM[(struct RunState *)transformer_180(D) + 128B].xb, _92
	movq	%r8, (%rsp)	# ivtmp.893, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	addq	%rdi, %rcx	# _92, _354
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	%rdi, 32(%rsp)	# _92, %sfp
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	movq	%rcx, %rdi	# xb,
	call	memset@PLT	#
	testl	%r12d, %r12d	# tmp1217
	movq	(%rsp), %r8	# %sfp, ivtmp.893
	movl	56(%rsp), %r9d	# %sfp, _196
	movq	%rax, %rcx	#, xb
# run.c:352:                 float* v = s->value_cache + loff + t * kv_dim + (h / kv_mul) * head_size;
	movq	72(%rsp), %rax	# %sfp, transformer
	movq	216(%rax), %rdi	# MEM[(struct RunState *)transformer_180(D) + 128B].value_cache, _95
	jle	.L188	#,
	movl	%r12d, %eax	# tmp1217, niters.514
	movq	40(%rsp), %r11	# %sfp, _1039
	leaq	(%rdi,%rbp,4), %rdx	#, ivtmp.848
	subl	%r9d, %eax	# _196, niters.514
	movl	%eax, 56(%rsp)	# niters.514, %sfp
	.p2align 4,,10
	.p2align 3
.L203:
# run.c:354:                 float a = att[t];
	movss	(%r15), %xmm1	# MEM[(float *)_1726], a
	cmpl	$1, %r12d	#, tmp1217
	je	.L312	#,
	leaq	4(%rdx), %rax	#, tmp1485
	movq	%rcx, %rsi	# xb, tmp1486
	subq	%rax, %rsi	# tmp1485, tmp1486
	xorl	%eax, %eax	# ivtmp.833
	cmpq	$8, %rsi	#, tmp1486
	ja	.L456	#,
	.p2align 4,,10
	.p2align 3
.L207:
# run.c:357:                     xb[i] += a * v[i];
	movss	(%rdx,%rax), %xmm0	# MEM[(float *)_1296 + ivtmp.833_2052 * 1], tmp1507
	mulss	%xmm1, %xmm0	# a, tmp1507
# run.c:357:                     xb[i] += a * v[i];
	addss	(%rcx,%rax), %xmm0	# MEM[(float *)xb_218 + ivtmp.833_2052 * 1], tmp1508
	movss	%xmm0, (%rcx,%rax)	# tmp1508, MEM[(float *)xb_218 + ivtmp.833_2052 * 1]
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	addq	$4, %rax	#, ivtmp.833
	cmpq	%rax, %r13	# ivtmp.833, _538
	jne	.L207	#,
	.p2align 4,,10
	.p2align 3
.L208:
# run.c:350:             for (int t = 0; t <= pos; t++) {
	movq	64(%rsp), %rax	# %sfp, _1691
	addq	$4, %r15	#, ivtmp.845
	addq	%r11, %rbp	# _1039, ivtmp.847
	addq	%rax, %rdx	# _1691, ivtmp.848
	cmpq	%r14, %r15	# _1430, ivtmp.845
	jne	.L203	#,
.L188:
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movq	144(%rsp), %rdi	# %sfp, _568
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	addl	$1, 80(%rsp)	#, %sfp
	movl	80(%rsp), %eax	# %sfp, h
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	addq	%rdi, %r8	# _568, ivtmp.893
	movq	72(%rsp), %rdi	# %sfp, transformer
	cmpl	%eax, 12(%rdi)	# h, MEM[(struct Config *)transformer_180(D)].n_heads
	jle	.L457	#,
# run.c:327:             float* q = s->q + h * head_size;
	movq	168(%rdi), %rsi	# MEM[(struct RunState *)transformer_180(D) + 128B].q, pretmp_1147
# run.c:329:             float* att = s->att + h * p->seq_len;
	movl	24(%rdi), %eax	# MEM[(struct Config *)transformer_180(D)].seq_len, pretmp_1149
	movq	%rdi, %rcx	# transformer, transformer
	jmp	.L173	#
	.p2align 4,,10
	.p2align 3
.L456:
	cmpl	$2, 28(%rsp)	#, %sfp
	jbe	.L314	#,
	movaps	%xmm1, %xmm2	# a, vect_cst__1577
	shufps	$0, %xmm2, %xmm2	# vect_cst__1577
	.p2align 4,,10
	.p2align 3
.L201:
# run.c:357:                     xb[i] += a * v[i];
	movups	(%rdx,%rax), %xmm0	# MEM <vector(4) float> [(float *)vectp.508_1567 + ivtmp.837_1223 * 1], vect__112.510
# run.c:357:                     xb[i] += a * v[i];
	movups	(%rcx,%rax), %xmm4	# MEM <vector(4) float> [(float *)xb_218 + ivtmp.837_1223 * 1], tmp2474
# run.c:357:                     xb[i] += a * v[i];
	mulps	%xmm2, %xmm0	# vect_cst__1577, vect__112.510
# run.c:357:                     xb[i] += a * v[i];
	addps	%xmm4, %xmm0	# tmp2474, vect__113.511
	movups	%xmm0, (%rcx,%rax)	# vect__113.511, MEM <vector(4) float> [(float *)xb_218 + ivtmp.837_1223 * 1]
	addq	$16, %rax	#, ivtmp.837
	cmpq	%rax, %rbx	# ivtmp.837, _219
	jne	.L201	#,
	cmpl	%r9d, %r12d	# _196, tmp1217
	je	.L208	#,
	movl	56(%rsp), %eax	# %sfp, niters.514
	movl	%eax, (%rsp)	# niters.514, %sfp
	cmpl	$1, %eax	#, niters.514
	je	.L315	#,
	movl	%r9d, 48(%rsp)	# _196, %sfp
	movl	%r9d, %esi	# _196,
.L200:
	leaq	(%r8,%rsi), %r10	#, tmp1492
# run.c:357:                     xb[i] += a * v[i];
	addq	%rbp, %rsi	# ivtmp.847, tmp1494
# run.c:357:                     xb[i] += a * v[i];
	movaps	%xmm1, %xmm2	# a, tmp1496
	movq	32(%rsp), %rax	# %sfp, _92
# run.c:357:                     xb[i] += a * v[i];
	movq	(%rdi,%rsi,4), %xmm0	# MEM <vector(2) float> [(float *)vectp.522_1623], vect__1545.523
# run.c:357:                     xb[i] += a * v[i];
	shufps	$0xe0, %xmm2, %xmm2	# tmp1496
	leaq	(%rax,%r10,4), %r10	#, vectp.519
	movl	(%rsp), %eax	# %sfp, niters.514
	mulps	%xmm2, %xmm0	# tmp1496, vect__1546.524
# run.c:357:                     xb[i] += a * v[i];
	movq	(%r10), %xmm2	# MEM <vector(2) float> [(float *)vectp.519_1615], vect__1541.520
# run.c:357:                     xb[i] += a * v[i];
	addps	%xmm2, %xmm0	# vect__1541.520, vect__1547.525
	movlps	%xmm0, (%r10)	# vect__1547.525, MEM <vector(2) float> [(float *)vectp.519_1615]
	testb	$1, %al	#, niters.514
	je	.L208	#,
	movl	48(%rsp), %esi	# %sfp, i
	andl	$-2, %eax	#, niters.514
	addl	%esi, %eax	# i, tmp.517
.L205:
# run.c:357:                     xb[i] += a * v[i];
	cltq
	leaq	(%rcx,%rax,4), %rsi	#, _1595
# run.c:357:                     xb[i] += a * v[i];
	addq	%rbp, %rax	# ivtmp.847, tmp1503
# run.c:357:                     xb[i] += a * v[i];
	mulss	(%rdi,%rax,4), %xmm1	# *_1599, tmp1504
# run.c:357:                     xb[i] += a * v[i];
	addss	(%rsi), %xmm1	# *_1595, tmp1505
	movss	%xmm1, (%rsi)	# tmp1505, *_1595
	jmp	.L208	#
	.p2align 4,,10
	.p2align 3
.L312:
# run.c:354:                 float a = att[t];
	xorl	%eax, %eax	# ivtmp.833
	jmp	.L207	#
.L314:
	movl	%r12d, (%rsp)	# tmp1217, %sfp
	xorl	%esi, %esi	#
# run.c:356:                 for (int i = 0; i < head_size; i++) {
	movl	$0, 48(%rsp)	#, %sfp
	jmp	.L200	#
.L315:
	movl	%r9d, %eax	# _196, tmp.517
	jmp	.L205	#
.L457:
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movl	380(%rsp), %r15d	# %sfp, dim
	movq	360(%rsp), %r12	# %sfp, _56
	movq	368(%rsp), %r10	# %sfp, x
	movl	384(%rsp), %r11d	# %sfp, _1915
	movq	136(%rdi), %r13	# MEM[(struct RunState *)transformer_180(D) + 128B].xb, prephitmp_779
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	80(%rdi), %r8	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wo, _115
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	144(%rdi), %rcx	# MEM[(struct RunState *)transformer_180(D) + 128B].xb2, _117
	movss	.LC7(%rip), %xmm2	#, tmp1772
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%r15d, %r15d	# dim
	jle	.L172	#,
.L210:
	movq	264(%rsp), %rax	# %sfp, ivtmp.992
	movq	%rcx, (%rsp)	# _117, %sfp
	movq	%rcx, %rdi	# _117, ivtmp.823
# run.c:262:         float val = 0.0f;
	xorl	%esi, %esi	# ivtmp.825
	movq	168(%rsp), %r14	# %sfp, _9
	movq	%r10, 32(%rsp)	# x, %sfp
	leaq	(%r8,%rax,4), %rdx	#, ivtmp.826
	movq	%rax, %r10	# ivtmp.992, ivtmp.992
	leaq	(%r14,%rcx), %rbx	#, _2058
	.p2align 4,,10
	.p2align 3
.L211:
	cmpl	$2, 136(%rsp)	#, %sfp
	jbe	.L316	#,
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.815
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	.p2align 4,,10
	.p2align 3
.L213:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	(%rdx,%rax), %xmm0	# MEM <vector(4) float> [(float *)vectp.493_1475 + ivtmp.815_164 * 1], vect__321.498
	movups	0(%r13,%rax), %xmm4	# MEM <vector(4) float> [(float *)prephitmp_779 + ivtmp.815_164 * 1], tmp2493
	addq	$16, %rax	#, ivtmp.815
	mulps	%xmm4, %xmm0	# tmp2493, vect__321.498
	addss	%xmm0, %xmm1	# stmp_val_323.499, stmp_val_323.499
	movaps	%xmm0, %xmm3	# vect__321.498, tmp1529
	shufps	$85, %xmm0, %xmm3	#, vect__321.498, tmp1529
	addss	%xmm3, %xmm1	# stmp_val_323.499, stmp_val_323.499
	movaps	%xmm0, %xmm3	# vect__321.498, tmp1530
	unpckhps	%xmm0, %xmm3	# vect__321.498, tmp1530
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__321.498, tmp1533
	addss	%xmm3, %xmm1	# stmp_val_323.499, stmp_val_323.499
	addss	%xmm0, %xmm1	# stmp_val_323.499, val
	cmpq	%rax, %r12	# ivtmp.815, _56
	jne	.L213	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r11d, %eax	# _1915, j
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L212	#,
.L216:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rsi,%rax), %ecx	#, tmp1512
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r9	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1512, tmp1513
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r9,4), %rbp	#, _190
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rcx	# ivtmp.992, tmp1514
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r8,%rcx,4), %xmm0	# *_677, *_677
	mulss	0(%r13,%r9,4), %xmm0	# *_409, tmp1515
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1515, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%ecx, %r15d	# j, dim
	jle	.L212	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%esi, %ecx	# ivtmp.825, tmp1517
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1517, tmp1518
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rcx	# ivtmp.992, tmp1519
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r8,%rcx,4), %xmm0	# *_485, *_485
	mulss	4(%r13,%rbp), %xmm0	# *_491, tmp1520
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1520, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r15d	# j, dim
	jle	.L212	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%esi, %eax	# ivtmp.825, tmp1522
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rax	# ivtmp.992, tmp1524
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r8,%rax,4), %xmm0	# *_1457, *_1457
	mulss	8(%r13,%rbp), %xmm0	# *_1461, tmp1525
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1525, val
.L212:
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%rdi)	# val, MEM[(float *)_1861]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %rdi	#, ivtmp.823
	addl	%r15d, %esi	# dim, ivtmp.825
	addq	%r14, %rdx	# _9, ivtmp.826
	cmpq	%rbx, %rdi	# _2058, ivtmp.823
	jne	.L211	#,
	movq	(%rsp), %rcx	# %sfp, _117
	movq	32(%rsp), %r10	# %sfp, x
	cmpl	$1, %r15d	#, dim
	je	.L317	#,
	leaq	4(%rcx), %rax	#, tmp1534
	movq	%r10, %rdx	# x, tmp1535
	subq	%rax, %rdx	# tmp1534, tmp1535
	xorl	%eax, %eax	# ivtmp.803
	cmpq	$8, %rdx	#, tmp1535
	ja	.L458	#,
	movq	168(%rsp), %rdx	# %sfp, _9
.L223:
# run.c:367:             x[i] += s->xb2[i];
	movss	(%r10,%rax), %xmm0	# MEM[(float *)x_182 + ivtmp.803_995 * 1], MEM[(float *)x_182 + ivtmp.803_995 * 1]
	addss	(%rcx,%rax), %xmm0	# MEM[(float *)_1472 + ivtmp.803_995 * 1], tmp1548
	movss	%xmm0, (%r10,%rax)	# tmp1548, MEM[(float *)x_182 + ivtmp.803_995 * 1]
# run.c:366:         for (int i = 0; i < dim; i++) {
	addq	$4, %rax	#, ivtmp.803
	cmpq	%rax, %rdx	# ivtmp.803, _9
	jne	.L223	#,
.L224:
# run.c:371:         rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);
	movq	72(%rsp), %rax	# %sfp, transformer
	cmpl	$2, 136(%rsp)	#, %sfp
	movq	48(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_ffn_weight, _125
	jbe	.L321	#,
.L301:
# run.c:261:     for (i = 0; i < d; i++) {
	movq	280(%rsp), %rdx	# %sfp, _2064
	movq	%r10, %rax	# x, ivtmp.793
	pxor	%xmm1, %xmm1	# ss
.L226:
# run.c:193:         ss += x[j] * x[j];
	movups	(%rax), %xmm0	# MEM <vector(4) float> [(float *)_1027], vect__488.460
	addq	$16, %rax	#, ivtmp.793
	mulps	%xmm0, %xmm0	# tmp2506, vect__488.460
	addss	%xmm0, %xmm1	# stmp_ss_490.461, stmp_ss_490.461
	movaps	%xmm0, %xmm3	# vect__488.460, tmp1551
	shufps	$85, %xmm0, %xmm3	#, vect__488.460, tmp1551
	addss	%xmm1, %xmm3	# stmp_ss_490.461, stmp_ss_490.461
	movaps	%xmm0, %xmm1	# vect__488.460, tmp1552
	unpckhps	%xmm0, %xmm1	# vect__488.460, tmp1552
# run.c:193:         ss += x[j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__488.460, tmp1555
	addss	%xmm3, %xmm1	# stmp_ss_490.461, stmp_ss_490.461
	addss	%xmm0, %xmm1	# stmp_ss_490.461, ss
	cmpq	%rdx, %rax	# _2064, ivtmp.793
	jne	.L226	#,
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	%r11d, %edx	# _1915, j
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L227	#,
.L225:
# run.c:193:         ss += x[j] * x[j];
	movslq	%edx, %rax	# j, j
	movss	(%r10,%rax,4), %xmm0	# *_355, _356
	leaq	0(,%rax,4), %rcx	#, _201
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rdx), %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm0, %xmm0	# _356, tmp1557
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm0, %xmm1	# tmp1557, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %r15d	# j, dim
	jle	.L227	#,
# run.c:193:         ss += x[j] * x[j];
	movss	4(%r10,%rcx), %xmm0	# *_81, _328
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	2(%rdx), %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm0, %xmm0	# _328, tmp1559
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm0, %xmm1	# tmp1559, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%r15d, %eax	# dim, j
	jge	.L227	#,
# run.c:193:         ss += x[j] * x[j];
	movss	8(%r10,%rcx), %xmm0	# *_171, _168
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm0, %xmm0	# _168, tmp1561
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm0, %xmm1	# tmp1561, ss
.L227:
# run.c:196:     ss += 1e-5f;
	movss	.LC6(%rip), %xmm0	#, ss
# run.c:195:     ss /= size;
	divss	220(%rsp), %xmm1	# %sfp, ss
# run.c:196:     ss += 1e-5f;
	addss	%xmm1, %xmm0	# ss, ss
	pxor	%xmm1, %xmm1	# tmp1563
	ucomiss	%xmm0, %xmm1	# ss, tmp1563
	ja	.L432	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	sqrtss	%xmm0, %xmm0	# ss, _496
# run.c:197:     ss = 1.0f / sqrtf(ss);
	movaps	%xmm2, %xmm1	# tmp1772, ss
	divss	%xmm0, %xmm1	# _496, ss
# run.c:199:     for (int j = 0; j < size; j++) {
	testl	%r15d, %r15d	# dim
	jle	.L172	#,
.L230:
	cmpl	$1, %r15d	#, dim
	je	.L233	#,
	movq	200(%rsp), %rdi	# %sfp, _1638
	movq	%r13, %rax	# prephitmp_779, tmp1568
	leaq	4(%rbx,%rdi), %rdx	#, tmp1567
	subq	%rdx, %rax	# tmp1567, tmp1568
	cmpq	$8, %rax	#, tmp1568
	jbe	.L233	#,
	leaq	4(%r10), %rdx	#, tmp1571
	movq	%r13, %rax	# prephitmp_779, tmp1572
	subq	%rdx, %rax	# tmp1571, tmp1572
	cmpq	$8, %rax	#, tmp1572
	jbe	.L233	#,
	cmpl	$2, 136(%rsp)	#, %sfp
	jbe	.L322	#,
	movaps	%xmm1, %xmm3	# ss, vect_cst__588
	leaq	(%rbx,%rdi), %rdx	#, vectp.430
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# ivtmp.785
	shufps	$0, %xmm3, %xmm3	# vect_cst__588
.L235:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	(%r10,%rax), %xmm0	# MEM <vector(4) float> [(float *)x_182 + ivtmp.785_2037 * 1], vect__505.435
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	(%rdx,%rax), %xmm5	# MEM <vector(4) float> [(float *)vectp.430_598 + ivtmp.785_2037 * 1], tmp2525
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm3, %xmm0	# vect_cst__588, vect__505.435
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm5, %xmm0	# tmp2525, vect__507.436
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	%xmm0, 0(%r13,%rax)	# vect__507.436, MEM <vector(4) float> [(float *)prephitmp_779 + ivtmp.785_2037 * 1]
	addq	$16, %rax	#, ivtmp.785
	cmpq	%rax, %r12	# ivtmp.785, _56
	jne	.L235	#,
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L243	#,
	movl	%r15d, %ecx	# dim, niters.439
	subl	%r11d, %ecx	# _1915, niters.439
	cmpl	$1, %ecx	#, niters.439
	je	.L323	#,
	movl	%r11d, %esi	# _1915, j
	movl	%r11d, %eax	# _1915,
.L234:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	(%r10,%rax,4), %xmm3	# MEM <vector(2) float> [(float *)vectp_x.447_429], vect__616.448
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movaps	%xmm1, %xmm4	# ss, tmp1583
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	240(%rsp), %rdi	# %sfp, ivtmp.990
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	shufps	$0xe0, %xmm4, %xmm4	# tmp1583
	mulps	%xmm4, %xmm3	# tmp1583, vect__615.449
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rax,%rdi), %rdx	#, tmp1580
	movq	(%rbx,%rdx,4), %xmm0	# MEM <vector(2) float> [(float *)vectp.444_474], vect__618.445
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm3, %xmm0	# vect__615.449, vect__613.450
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movlps	%xmm0, 0(%r13,%rax,4)	# vect__613.450, MEM <vector(2) float> [(float *)vectp.452_322]
	testb	$1, %cl	#, niters.439
	je	.L243	#,
	movl	%ecx, %eax	# niters.439, niters.439
	andl	$-2, %eax	#, niters.439
	addl	%esi, %eax	# j, tmp.442
.L240:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	cltq
	leaq	(%rbx,%rax,4), %rdx	#, tmp1590
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	200(%rsp), %rbx	# %sfp, _1638
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%r10,%rax,4), %xmm1	# *_561, tmp1589
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%rdx,%rbx), %xmm1	# *_567, tmp1592
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	%xmm1, 0(%r13,%rax,4)	# tmp1592, *_555
.L243:
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	72(%rsp), %rax	# %sfp, transformer
# run.c:261:     for (i = 0; i < d; i++) {
	movl	252(%rsp), %edx	# %sfp,
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	88(%rax), %rdi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w1, _127
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	152(%rax), %rbx	# MEM[(struct RunState *)transformer_180(D) + 128B].hb, _130
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%edx, %edx	#
	jle	.L459	#,
.L237:
	movq	%r10, 48(%rsp)	# x, %sfp
	movq	%rbx, %rbp	# _130, ivtmp.741
# run.c:262:         float val = 0.0f;
	movq	%rbx, %rsi	# _130, ivtmp.770
	xorl	%edx, %edx	# ivtmp.772
	movq	272(%rsp), %rax	# %sfp, _1077
	movq	232(%rsp), %r8	# %sfp, ivtmp.987
	movq	%rbx, 32(%rsp)	# _130, %sfp
	movl	136(%rsp), %r14d	# %sfp, _2087
	addq	%rbx, %rax	# _130, _1237
	movq	%rax, (%rsp)	# _1237, %sfp
	movq	%rax, %rbx	# _1237, _1237
	.p2align 4,,10
	.p2align 3
.L232:
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r15d, %r15d	# dim
	jle	.L250	#,
	cmpl	$2, %r14d	#, _2087
	jbe	.L324	#,
	movslq	%edx, %rax	# ivtmp.772, _351
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	addq	%r8, %rax	# ivtmp.987, tmp1596
	leaq	(%rdi,%rax,4), %rcx	#, vectp.418
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.763
	.p2align 4,,10
	.p2align 3
.L246:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	0(%r13,%rax), %xmm0	# MEM <vector(4) float> [(float *)_280 + ivtmp.763_1107 * 1], vect__361.423
	movups	(%rcx,%rax), %xmm5	# MEM <vector(4) float> [(float *)vectp.418_772 + ivtmp.763_1107 * 1], tmp2540
	addq	$16, %rax	#, ivtmp.763
	mulps	%xmm5, %xmm0	# tmp2540, vect__361.423
	addss	%xmm0, %xmm1	# stmp_val_363.424, stmp_val_363.424
	movaps	%xmm0, %xmm3	# vect__361.423, tmp1600
	shufps	$85, %xmm0, %xmm3	#, vect__361.423, tmp1600
	addss	%xmm1, %xmm3	# stmp_val_363.424, stmp_val_363.424
	movaps	%xmm0, %xmm1	# vect__361.423, tmp1601
	unpckhps	%xmm0, %xmm1	# vect__361.423, tmp1601
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__361.423, tmp1604
	addss	%xmm3, %xmm1	# stmp_val_363.424, stmp_val_363.424
	addss	%xmm0, %xmm1	# stmp_val_363.424, val
	cmpq	%rax, %r12	# ivtmp.763, _56
	jne	.L246	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r11d, %eax	# _1915, j
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L250	#,
.L245:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rdx,%rax), %ecx	#, tmp1606
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r9	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1606, tmp1607
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r9,4), %r10	#, _501
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rcx	# ivtmp.987, tmp1608
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rcx,4), %xmm0	# *_499, *_499
	mulss	0(%r13,%r9,4), %xmm0	# *_502, tmp1609
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1609, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%ecx, %r15d	# j, dim
	jle	.L250	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %ecx	# ivtmp.772, tmp1611
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1611, tmp1612
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rcx	# ivtmp.987, tmp1613
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rcx,4), %xmm0	# *_633, *_633
	mulss	4(%r13,%r10), %xmm0	# *_615, tmp1614
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1614, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r15d	# j, dim
	jle	.L250	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %eax	# ivtmp.772, tmp1616
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rax	# ivtmp.987, tmp1618
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rax,4), %xmm0	# *_790, *_790
	mulss	8(%r13,%r10), %xmm0	# *_786, tmp1619
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1619, val
.L250:
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%rsi)	# val, MEM[(float *)_539]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %rsi	#, ivtmp.770
	addl	%r15d, %edx	# dim, ivtmp.772
	cmpq	%rbx, %rsi	# _1237, ivtmp.770
	jne	.L232	#,
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	movq	72(%rsp), %rax	# %sfp, transformer
	movq	48(%rsp), %r10	# %sfp, x
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	xorl	%edx, %edx	# ivtmp.758
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	movq	32(%rsp), %rbx	# %sfp, _130
	movq	232(%rsp), %r8	# %sfp, ivtmp.987
	movq	160(%rax), %r14	# MEM[(struct RunState *)transformer_180(D) + 128B].hb2, ivtmp.742
	movq	104(%rax), %rdi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w3, _131
	movq	%r10, 80(%rsp)	# x, %sfp
	movq	272(%rsp), %rax	# %sfp, _1077
	movq	%rbx, 56(%rsp)	# _130, %sfp
	movq	%r14, 32(%rsp)	# ivtmp.742, %sfp
# run.c:376:         matmul(s->hb2, s->xb, w->w3 + l*dim*hidden_dim, dim, hidden_dim);
	movq	%r14, %rsi	# ivtmp.742, ivtmp.756
	addq	%r14, %rax	# ivtmp.742, _1090
	movl	136(%rsp), %r14d	# %sfp, _2087
	movq	%rax, %rbx	# _1090, _1090
	.p2align 4,,10
	.p2align 3
.L251:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r15d, %r15d	# dim
	jle	.L257	#,
	cmpl	$2, %r14d	#, _2087
	jbe	.L325	#,
	movslq	%edx, %rax	# ivtmp.758, _331
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	addq	%r8, %rax	# ivtmp.987, tmp1622
	leaq	(%rdi,%rax,4), %rcx	#, vectp.406
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.749
	.p2align 4,,10
	.p2align 3
.L253:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	0(%r13,%rax), %xmm0	# MEM <vector(4) float> [(float *)_280 + ivtmp.749_1124 * 1], vect__341.411
	movups	(%rcx,%rax), %xmm4	# MEM <vector(4) float> [(float *)vectp.406_822 + ivtmp.749_1124 * 1], tmp2548
	addq	$16, %rax	#, ivtmp.749
	mulps	%xmm4, %xmm0	# tmp2548, vect__341.411
	addss	%xmm0, %xmm1	# stmp_val_343.412, stmp_val_343.412
	movaps	%xmm0, %xmm3	# vect__341.411, tmp1626
	shufps	$85, %xmm0, %xmm3	#, vect__341.411, tmp1626
	addss	%xmm1, %xmm3	# stmp_val_343.412, stmp_val_343.412
	movaps	%xmm0, %xmm1	# vect__341.411, tmp1627
	unpckhps	%xmm0, %xmm1	# vect__341.411, tmp1627
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__341.411, tmp1630
	addss	%xmm3, %xmm1	# stmp_val_343.412, stmp_val_343.412
	addss	%xmm0, %xmm1	# stmp_val_343.412, val
	cmpq	%rax, %r12	# ivtmp.749, _56
	jne	.L253	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r11d, %eax	# _1915, j
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L257	#,
.L252:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rdx,%rax), %ecx	#, tmp1632
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r9	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1632, tmp1633
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r9,4), %r10	#, _665
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rcx	# ivtmp.987, tmp1634
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rcx,4), %xmm0	# *_1989, *_1989
	mulss	0(%r13,%r9,4), %xmm0	# *_313, tmp1635
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1635, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%ecx, %r15d	# j, dim
	jle	.L257	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %ecx	# ivtmp.758, tmp1637
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%ecx, %rcx	# tmp1637, tmp1638
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rcx	# ivtmp.987, tmp1639
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rcx,4), %xmm0	# *_324, *_324
	mulss	4(%r13,%r10), %xmm0	# *_241, tmp1640
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1640, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r15d	# j, dim
	jle	.L257	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %eax	# ivtmp.758, tmp1642
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r8, %rax	# ivtmp.987, tmp1644
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rax,4), %xmm0	# *_840, *_840
	mulss	8(%r13,%r10), %xmm0	# *_836, tmp1645
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1645, val
.L257:
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%rsi)	# val, MEM[(float *)_1694]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %rsi	#, ivtmp.756
	addl	%r15d, %edx	# dim, ivtmp.758
	cmpq	%rsi, %rbx	# ivtmp.756, _1090
	jne	.L251	#,
	movq	(%rsp), %rbx	# %sfp, _1237
	movq	%r12, 48(%rsp)	# _56, %sfp
	movl	%r11d, %r14d	# _1915, _1915
	movq	%rbp, %r12	# ivtmp.741, ivtmp.741
	movq	32(%rsp), %rbp	# %sfp, ivtmp.742
	movss	%xmm2, 32(%rsp)	# tmp1772, %sfp
	.p2align 4,,10
	.p2align 3
.L255:
# run.c:380:             float val = s->hb[i];
	movss	(%r12), %xmm3	# MEM[(float *)_1064], val
# run.c:379:         for (int i = 0; i < hidden_dim; i++) {
	addq	$4, %r12	#, ivtmp.741
	addq	$4, %rbp	#, ivtmp.742
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	movaps	%xmm3, %xmm0	# val, tmp1647
	xorps	.LC10(%rip), %xmm0	#, tmp1647
	movss	%xmm3, (%rsp)	# val, %sfp
	call	expf@PLT	#
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	movss	32(%rsp), %xmm4	# %sfp, tmp1772
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	movss	(%rsp), %xmm3	# %sfp, val
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	movaps	%xmm0, %xmm1	# tmp1806, tmp1806
	addss	%xmm4, %xmm1	# tmp1772, tmp1806
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	divss	%xmm1, %xmm4	# tmp1649, tmp1651
	movaps	%xmm4, %xmm0	# tmp1651, tmp1651
# run.c:382:             val *= (1.0f / (1.0f + expf(-val)));
	mulss	%xmm3, %xmm0	# val, val
# run.c:384:             val *= s->hb2[i];
	mulss	-4(%rbp), %xmm0	# MEM[(float *)_1049], val
# run.c:385:             s->hb[i] = val;
	movss	%xmm0, -4(%r12)	# val, MEM[(float *)_1064]
# run.c:379:         for (int i = 0; i < hidden_dim; i++) {
	cmpq	%rbx, %r12	# _1237, ivtmp.741
	jne	.L255	#,
# run.c:389:         matmul(s->xb, s->hb, w->w2 + l*dim*hidden_dim, hidden_dim, dim);
	movq	72(%rsp), %rax	# %sfp, transformer
	movq	48(%rsp), %r12	# %sfp, _56
	movl	%r14d, %r11d	# _1915, _1915
	movq	56(%rsp), %rbx	# %sfp, _130
	movq	80(%rsp), %r10	# %sfp, x
	movq	96(%rax), %rdi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w2, _141
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%r15d, %r15d	# dim
	jle	.L231	#,
.L300:
	movl	252(%rsp), %r9d	# %sfp, hidden_dim
	movq	%r12, (%rsp)	# _56, %sfp
	movq	%r13, %rsi	# prephitmp_779, ivtmp.735
# run.c:262:         float val = 0.0f;
	xorl	%edx, %edx	# ivtmp.737
	movq	168(%rsp), %rax	# %sfp, _9
	movq	%r13, 56(%rsp)	# prephitmp_779, %sfp
	movq	%r10, 32(%rsp)	# x, %sfp
	movl	%r9d, %r14d	# hidden_dim, tmp1779
	movq	304(%rsp), %rcx	# %sfp, _58
	movl	%r15d, 48(%rsp)	# dim, %sfp
	movq	232(%rsp), %r10	# %sfp, ivtmp.987
	leaq	(%rax,%r13), %rbp	#, _718
	andl	$3, %r14d	#, tmp1779
	movl	%r11d, 80(%rsp)	# _1915, %sfp
	movl	324(%rsp), %r15d	# %sfp, _879
	movl	376(%rsp), %r11d	# %sfp, _2036
	.p2align 4,,10
	.p2align 3
.L244:
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%r9d, %r9d	# hidden_dim
	jle	.L266	#,
	cmpl	$2, %r15d	#, _879
	jbe	.L326	#,
	movslq	%edx, %rax	# ivtmp.737, _371
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	addq	%r10, %rax	# ivtmp.987, tmp1658
	leaq	(%rdi,%rax,4), %r8	#, vectp.394
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.728
	.p2align 4,,10
	.p2align 3
.L262:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	(%rbx,%rax), %xmm0	# MEM <vector(4) float> [(float *)_605 + ivtmp.728_2086 * 1], vect__381.399
	movups	(%r8,%rax), %xmm5	# MEM <vector(4) float> [(float *)vectp.394_872 + ivtmp.728_2086 * 1], tmp2569
	addq	$16, %rax	#, ivtmp.728
	mulps	%xmm5, %xmm0	# tmp2569, vect__381.399
	addss	%xmm0, %xmm1	# stmp_val_383.400, stmp_val_383.400
	movaps	%xmm0, %xmm2	# vect__381.399, tmp1662
	shufps	$85, %xmm0, %xmm2	#, vect__381.399, tmp1662
	addss	%xmm1, %xmm2	# stmp_val_383.400, stmp_val_383.400
	movaps	%xmm0, %xmm1	# vect__381.399, tmp1663
	unpckhps	%xmm0, %xmm1	# vect__381.399, tmp1663
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__381.399, tmp1666
	addss	%xmm2, %xmm1	# stmp_val_383.400, stmp_val_383.400
	addss	%xmm0, %xmm1	# stmp_val_383.400, val
	cmpq	%rcx, %rax	# _58, ivtmp.728
	jne	.L262	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r11d, %eax	# _2036, j
	testl	%r14d, %r14d	# tmp1779
	je	.L266	#,
.L261:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rdx,%rax), %r8d	#, tmp1669
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r12	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r8d, %r8	# tmp1669, tmp1670
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r12,4), %r13	#, _451
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %r8	# ivtmp.987, tmp1671
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%r8,4), %xmm0	# *_448, *_448
	mulss	(%rbx,%r12,4), %xmm0	# *_452, tmp1672
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %r8d	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1672, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%r8d, %r9d	# j, hidden_dim
	jle	.L266	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %r8d	# ivtmp.737, tmp1674
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r8d, %r8	# tmp1674, tmp1675
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %r8	# ivtmp.987, tmp1676
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%r8,4), %xmm0	# *_298, *_298
	mulss	4(%rbx,%r13), %xmm0	# *_302, tmp1677
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1677, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %r9d	# j, hidden_dim
	jle	.L266	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%edx, %eax	# ivtmp.737, tmp1679
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	addq	%r10, %rax	# ivtmp.987, tmp1681
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%rdi,%rax,4), %xmm0	# *_890, *_890
	mulss	8(%rbx,%r13), %xmm0	# *_886, tmp1682
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1682, val
.L266:
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%rsi)	# val, MEM[(float *)_1278]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %rsi	#, ivtmp.735
	addl	%r9d, %edx	# hidden_dim, ivtmp.737
	cmpq	%rbp, %rsi	# _718, ivtmp.735
	jne	.L244	#,
	movl	48(%rsp), %r15d	# %sfp, dim
	movq	(%rsp), %r12	# %sfp, _56
	movq	32(%rsp), %r10	# %sfp, x
	movq	56(%rsp), %r13	# %sfp, prephitmp_779
	movl	80(%rsp), %r11d	# %sfp, _1915
	cmpl	$1, %r15d	#, dim
	je	.L327	#,
	leaq	4(%r13), %rax	#, tmp1684
	movq	%r10, %rdx	# x, tmp1685
	subq	%rax, %rdx	# tmp1684, tmp1685
	xorl	%eax, %eax	# ivtmp.715
	cmpq	$8, %rdx	#, tmp1685
	ja	.L460	#,
	movq	168(%rsp), %rdx	# %sfp, _9
.L274:
# run.c:393:             x[i] += s->xb[i];
	movss	(%r10,%rax), %xmm0	# MEM[(float *)x_182 + ivtmp.715_1994 * 1], MEM[(float *)x_182 + ivtmp.715_1994 * 1]
	addss	0(%r13,%rax), %xmm0	# MEM[(float *)_826 + ivtmp.715_1994 * 1], tmp1698
	movss	%xmm0, (%r10,%rax)	# tmp1698, MEM[(float *)x_182 + ivtmp.715_1994 * 1]
# run.c:392:         for (int i = 0; i < dim; i++) {
	addq	$4, %rax	#, ivtmp.715
	cmpq	%rax, %rdx	# ivtmp.715, _9
	jne	.L274	#,
.L231:
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	72(%rsp), %rax	# %sfp, transformer
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movq	344(%rsp), %rdi	# %sfp, _1723
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	addq	$1, 224(%rsp)	#, %sfp
	movq	224(%rsp), %rbx	# %sfp, l
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	movslq	8(%rax), %rax	# MEM[(struct Config *)transformer_180(D)].n_layers, MEM[(struct Config *)transformer_180(D)].n_layers
# run.c:290:     for(unsigned long long l = 0; l < p->n_layers; l++) {
	addq	%rdi, 232(%rsp)	# _1723, %sfp
	movq	288(%rsp), %rdi	# %sfp, _8
	addq	%rdi, 240(%rsp)	# _8, %sfp
	movq	328(%rsp), %rdi	# %sfp, _1639
	addq	%rdi, 256(%rsp)	# _1639, %sfp
	movq	336(%rsp), %rdi	# %sfp, _1642
	addq	%rdi, 264(%rsp)	# _1642, %sfp
	cmpq	%rax, %rbx	# MEM[(struct Config *)transformer_180(D)].n_layers, l
	jb	.L259	#,
.L260:
# run.c:398:     rmsnorm(x, x, w->rms_final_weight, dim);
	movq	72(%rsp), %rax	# %sfp, transformer
	movq	112(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_final_weight, _151
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	216(%rsp), %eax	# %sfp, dim
	testl	%eax, %eax	# dim
	jle	.L276	#,
	leal	-1(%rax), %r12d	#, _1024
	movl	%eax, %ebp	# dim, niters.354
	cmpl	$2, %r12d	#, _1024
	jbe	.L331	#,
	movq	192(%rsp), %rdi	# %sfp, x
	shrl	$2, %eax	#,
# run.c:191:     float ss = 0.0f;
	pxor	%xmm0, %xmm0	# ss
	salq	$4, %rax	#, tmp1702
	movq	%rdi, %rdx	# x, ivtmp.708
	addq	%rdi, %rax	# x, _2005
.L278:
# run.c:193:         ss += x[j] * x[j];
	movups	(%rdx), %xmm2	# MEM <vector(4) float> [(float *)_2039], vect__514.361
	addq	$16, %rdx	#, ivtmp.708
	mulps	%xmm2, %xmm2	# tmp2585, vect__514.361
	addss	%xmm2, %xmm0	# stmp_ss_516.362, stmp_ss_516.362
	movaps	%xmm2, %xmm1	# vect__514.361, tmp1704
	shufps	$85, %xmm2, %xmm1	#, vect__514.361, tmp1704
	addss	%xmm0, %xmm1	# stmp_ss_516.362, stmp_ss_516.362
	movaps	%xmm2, %xmm0	# vect__514.361, tmp1705
	unpckhps	%xmm2, %xmm0	# vect__514.361, tmp1705
# run.c:193:         ss += x[j] * x[j];
	shufps	$255, %xmm2, %xmm2	#, vect__514.361, vect__514.361
	addss	%xmm1, %xmm0	# stmp_ss_516.362, stmp_ss_516.362
	addss	%xmm2, %xmm0	# stmp_ss_516.362, ss
	cmpq	%rdx, %rax	# ivtmp.708, _2005
	jne	.L278	#,
	movl	216(%rsp), %edi	# %sfp, dim
	movl	%edi, %eax	# dim, _390
	andl	$-4, %eax	#, _390
	andl	$3, %edi	#, dim
	je	.L279	#,
.L277:
# run.c:193:         ss += x[j] * x[j];
	movq	192(%rsp), %rdi	# %sfp, x
	movslq	%eax, %rcx	# _390, _390
# run.c:192:     for (int j = 0; j < size; j++) {
	movl	216(%rsp), %esi	# %sfp, dim
# run.c:193:         ss += x[j] * x[j];
	leaq	0(,%rcx,4), %rdx	#, _1122
	movss	(%rdi,%rcx,4), %xmm1	# *_1121, _1120
# run.c:192:     for (int j = 0; j < size; j++) {
	leal	1(%rax), %ecx	#, j
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _1120, tmp1711
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp1711, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%ecx, %esi	# j, dim
	jle	.L279	#,
# run.c:193:         ss += x[j] * x[j];
	movss	4(%rdi,%rdx), %xmm1	# *_398, _399
# run.c:192:     for (int j = 0; j < size; j++) {
	addl	$2, %eax	#, j
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _399, tmp1713
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp1713, ss
# run.c:192:     for (int j = 0; j < size; j++) {
	cmpl	%eax, %esi	# j, dim
	jle	.L279	#,
# run.c:193:         ss += x[j] * x[j];
	movss	8(%rdi,%rdx), %xmm1	# *_1031, _1030
# run.c:193:         ss += x[j] * x[j];
	mulss	%xmm1, %xmm1	# _1030, tmp1715
# run.c:193:         ss += x[j] * x[j];
	addss	%xmm1, %xmm0	# tmp1715, ss
.L279:
# run.c:195:     ss /= size;
	divss	220(%rsp), %xmm0	# %sfp, ss
	pxor	%xmm1, %xmm1	# tmp1717
# run.c:196:     ss += 1e-5f;
	addss	.LC6(%rip), %xmm0	#, ss
	ucomiss	%xmm0, %xmm1	# ss, tmp1717
	ja	.L436	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	sqrtss	%xmm0, %xmm0	# ss, _522
.L282:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	movss	.LC7(%rip), %xmm1	#, tmp1718
	cmpl	$1, 216(%rsp)	#, %sfp
	divss	%xmm0, %xmm1	# _522, ss
	je	.L461	#,
	movq	192(%rsp), %rcx	# %sfp, x
	leaq	4(%rbx), %rax	#, tmp1723
	movq	%rcx, %rdx	# x, tmp1724
	subq	%rax, %rdx	# tmp1723, tmp1724
	xorl	%eax, %eax	# ivtmp.694
	cmpq	$8, %rdx	#, tmp1724
	ja	.L462	#,
	movq	%rcx, %rdx	# x, x
.L293:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	(%rdx,%rax), %xmm0	# MEM[(float *)x_182 + ivtmp.694_1336 * 1], tmp1743
	mulss	%xmm1, %xmm0	# ss, tmp1743
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%rbx,%rax), %xmm0	# MEM[(float *)_151 + ivtmp.694_1336 * 1], tmp1744
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	%xmm0, (%rdx,%rax)	# tmp1744, MEM[(float *)x_182 + ivtmp.694_1336 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.694
	cmpq	%rax, 168(%rsp)	# ivtmp.694, %sfp
	jne	.L293	#,
.L276:
# run.c:401:     matmul(s->logits, x, w->wcls, p->dim, p->vocab_size);
	movq	72(%rsp), %rbx	# %sfp, transformer
	movslq	20(%rbx), %rax	# MEM[(struct Config *)transformer_180(D)].vocab_size,
	movl	(%rbx), %ecx	# MEM[(struct Config *)transformer_180(D)].dim, _153
	movq	120(%rbx), %r8	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wcls, _154
	movq	200(%rbx), %r9	# MEM[(struct RunState *)transformer_180(D) + 128B].logits, <retval>
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%eax, %eax	# _152
	jle	.L119	#,
	movl	%ecx, %edx	# _153, bnd.315
	movl	%ecx, %r11d	# _153, _1869
	movl	%ecx, %r10d	# _153, tmp1777
	movq	192(%rsp), %r12	# %sfp, x
	shrl	$2, %edx	#,
	movq	%r9, %rdi	# <retval>, ivtmp.685
	leaq	(%r9,%rax,4), %rbp	#, _1901
	andl	$-4, %r11d	#, _1869
	leal	-1(%rcx), %ebx	#, _1193
	salq	$4, %rdx	#, _147
	xorl	%esi, %esi	# ivtmp.687
	andl	$3, %r10d	#, tmp1777
.L286:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	testl	%ecx, %ecx	# _153
	jle	.L299	#,
	cmpl	$2, %ebx	#, _1193
	jbe	.L334	#,
	movslq	%esi, %rax	# ivtmp.687, _391
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
	leaq	(%r8,%rax,4), %r13	#, vectp.319
# run.c:264:             val += w[i * n + j] * x[j];
	xorl	%eax, %eax	# ivtmp.678
.L296:
# run.c:264:             val += w[i * n + j] * x[j];
	movups	(%r12,%rax), %xmm0	# MEM <vector(4) float> [(float *)x_182 + ivtmp.678_1797 * 1], vect__402.324
	movups	0(%r13,%rax), %xmm5	# MEM <vector(4) float> [(float *)vectp.319_1186 + ivtmp.678_1797 * 1], tmp2619
	addq	$16, %rax	#, ivtmp.678
	mulps	%xmm5, %xmm0	# tmp2619, vect__402.324
	addss	%xmm0, %xmm1	# stmp_val_404.325, stmp_val_404.325
	movaps	%xmm0, %xmm2	# vect__402.324, tmp1749
	shufps	$85, %xmm0, %xmm2	#, vect__402.324, tmp1749
	addss	%xmm1, %xmm2	# stmp_val_404.325, stmp_val_404.325
	movaps	%xmm0, %xmm1	# vect__402.324, tmp1750
	unpckhps	%xmm0, %xmm1	# vect__402.324, tmp1750
# run.c:264:             val += w[i * n + j] * x[j];
	shufps	$255, %xmm0, %xmm0	#, vect__402.324, tmp1753
	addss	%xmm2, %xmm1	# stmp_val_404.325, stmp_val_404.325
	addss	%xmm0, %xmm1	# stmp_val_404.325, val
	cmpq	%rax, %rdx	# ivtmp.678, _147
	jne	.L296	#,
# run.c:263:         for (int j = 0; j < n; j++) {
	movl	%r11d, %eax	# _1869, j
	testl	%r10d, %r10d	# tmp1777
	je	.L299	#,
.L295:
# run.c:264:             val += w[i * n + j] * x[j];
	leal	(%rsi,%rax), %r14d	#, tmp1756
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%eax, %r15	# j, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r14d, %r14	# tmp1756, tmp1757
# run.c:264:             val += w[i * n + j] * x[j];
	leaq	0(,%r15,4), %r13	#, _430
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r8,%r14,4), %xmm0	# *_514, *_514
	mulss	(%r12,%r15,4), %xmm0	# *_431, tmp1758
# run.c:263:         for (int j = 0; j < n; j++) {
	leal	1(%rax), %r14d	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1758, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%r14d, %ecx	# j, _153
	jle	.L299	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%esi, %r14d	# ivtmp.687, tmp1760
# run.c:263:         for (int j = 0; j < n; j++) {
	addl	$2, %eax	#, j
# run.c:264:             val += w[i * n + j] * x[j];
	movslq	%r14d, %r14	# tmp1760, tmp1761
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r8,%r14,4), %xmm0	# *_529, *_529
	mulss	4(%r12,%r13), %xmm0	# *_534, tmp1762
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1762, val
# run.c:263:         for (int j = 0; j < n; j++) {
	cmpl	%eax, %ecx	# j, _153
	jle	.L299	#,
# run.c:264:             val += w[i * n + j] * x[j];
	addl	%esi, %eax	# ivtmp.687, tmp1764
	cltq
# run.c:264:             val += w[i * n + j] * x[j];
	movss	(%r8,%rax,4), %xmm0	# *_1204, *_1204
	mulss	8(%r12,%r13), %xmm0	# *_1200, tmp1766
# run.c:264:             val += w[i * n + j] * x[j];
	addss	%xmm0, %xmm1	# tmp1766, val
.L299:
# run.c:266:         xout[i] = val;
	movss	%xmm1, (%rdi)	# val, MEM[(float *)_109]
# run.c:261:     for (i = 0; i < d; i++) {
	addq	$4, %rdi	#, ivtmp.685
	addl	%ecx, %esi	# _153, ivtmp.687
	cmpq	%rbp, %rdi	# _1901, ivtmp.685
	jne	.L286	#,
.L119:
# run.c:403: }
	addq	$424, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r9, %rax	# <retval>,
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
.L176:
	.cfi_restore_state
# run.c:348:             float* xb = s->xb + h * head_size;
	movq	48(%rsp), %rdi	# %sfp, _354
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	movq	%r13, %rdx	# _538,
	xorl	%esi, %esi	#
	movl	%r9d, 32(%rsp)	# _196, %sfp
# run.c:348:             float* xb = s->xb + h * head_size;
	addq	136(%rcx), %rdi	# MEM[(struct RunState *)transformer_180(D) + 128B].xb, _354
	movq	%r8, (%rsp)	# ivtmp.893, %sfp
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	call	memset@PLT	#
	movq	(%rsp), %r8	# %sfp, ivtmp.893
	movl	32(%rsp), %r9d	# %sfp, _196
	jmp	.L188	#
.L316:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
	jmp	.L216	#
.L305:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
	jmp	.L149	#
.L308:
	pxor	%xmm4, %xmm4	# tmp2440
# run.c:335:                 float score = 0.0f;
	pxor	%xmm1, %xmm1	# score
	ucomiss	%xmm2, %xmm4	# _87, tmp2440
	jbe	.L463	#,
.L437:
	movq	%rbx, (%rsp)	# _219, %sfp
	movq	%rdi, %rbx	# ivtmp.881, ivtmp.881
	movq	%r13, 32(%rsp)	# _538, %sfp
	movq	%r8, %r13	# ivtmp.893, ivtmp.893
	movq	%rbp, 112(%rsp)	# ivtmp.847, %sfp
	movq	%rcx, %rbp	# ivtmp.883, ivtmp.883
.L182:
# run.c:339:                 score /= sqrtf(head_size);
	movaps	%xmm2, %xmm0	# _87,
	movl	%r9d, 388(%rsp)	# _196, %sfp
# run.c:331:             for (int t = 0; t <= pos; t++) {
	addq	$4, %rbx	#, ivtmp.881
	movss	%xmm1, 128(%rsp)	# score, %sfp
	movq	%r10, 400(%rsp)	# pretmp_1157, %sfp
	movq	%rsi, 392(%rsp)	# pretmp_1147, %sfp
# run.c:339:                 score /= sqrtf(head_size);
	movss	%xmm2, 120(%rsp)	# _87, %sfp
	call	sqrtf@PLT	#
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movq	40(%rsp), %rax	# %sfp, _1039
# run.c:339:                 score /= sqrtf(head_size);
	movss	128(%rsp), %xmm1	# %sfp, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	movl	388(%rsp), %r9d	# %sfp, _196
# run.c:339:                 score /= sqrtf(head_size);
	divss	%xmm0, %xmm1	# tmp1803, score
# run.c:331:             for (int t = 0; t <= pos; t++) {
	addq	%rax, %rbp	# _1039, ivtmp.883
# run.c:341:                 att[t] = score;
	movss	%xmm1, -4(%rbx)	# score, MEM[(float *)_1506]
# run.c:331:             for (int t = 0; t <= pos; t++) {
	cmpq	%r14, %rbx	# _1430, ivtmp.881
	je	.L438	#,
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	testl	%r12d, %r12d	# tmp1217
	movss	120(%rsp), %xmm2	# %sfp, _87
# run.c:335:                 float score = 0.0f;
	pxor	%xmm1, %xmm1	# score
# run.c:336:                 for (int i = 0; i < head_size; i++) {
	movq	392(%rsp), %rsi	# %sfp, pretmp_1147
	movq	400(%rsp), %r10	# %sfp, pretmp_1157
	jle	.L182	#,
	movq	%r13, %r8	# ivtmp.893, ivtmp.893
	movq	%rbx, %rdi	# ivtmp.881, ivtmp.881
	movq	%rbp, %rcx	# ivtmp.883, ivtmp.883
	movq	(%rsp), %rbx	# %sfp, _219
	movq	32(%rsp), %r13	# %sfp, _538
	movq	112(%rsp), %rbp	# %sfp, ivtmp.847
	jmp	.L186	#
	.p2align 4,,10
	.p2align 3
.L307:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
	jmp	.L161	#
.L306:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
	jmp	.L154	#
.L311:
# run.c:214:     for (int i = 0; i < size; i++) {
	xorl	%edx, %edx	#
# run.c:219:     for (int i = 0; i < size; i++) {
	xorl	%eax, %eax	# tmp.541
	jmp	.L193	#
.L326:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
	jmp	.L261	#
.L325:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
	jmp	.L252	#
.L324:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
	jmp	.L245	#
.L233:
	movq	200(%rsp), %rdx	# %sfp, _1638
# run.c:199:     for (int j = 0; j < size; j++) {
	movq	168(%rsp), %rcx	# %sfp, _9
	xorl	%eax, %eax	# ivtmp.780
	addq	%rbx, %rdx	# _125, _1638
.L242:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	(%r10,%rax), %xmm0	# MEM[(float *)x_182 + ivtmp.780_1242 * 1], tmp1593
	mulss	%xmm1, %xmm0	# ss, tmp1593
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%rdx,%rax), %xmm0	# MEM[(float *)_1702 + ivtmp.780_1242 * 1], tmp1594
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	%xmm0, 0(%r13,%rax)	# tmp1594, MEM[(float *)prephitmp_779 + ivtmp.780_1242 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.780
	cmpq	%rax, %rcx	# ivtmp.780, _9
	jne	.L242	#,
	jmp	.L243	#
.L125:
# run.c:195:     ss /= size;
	divss	220(%rsp), %xmm0	# %sfp, ss
	pxor	%xmm1, %xmm1	# tmp1261
# run.c:196:     ss += 1e-5f;
	addss	.LC6(%rip), %xmm0	#, ss
	ucomiss	%xmm0, %xmm1	# ss, tmp1261
	ja	.L127	#,
# run.c:197:     ss = 1.0f / sqrtf(ss);
	sqrtss	%xmm0, %xmm0	# ss, _556
.L133:
# run.c:197:     ss = 1.0f / sqrtf(ss);
	movss	.LC7(%rip), %xmm2	#, tmp1772
	divss	%xmm0, %xmm2	# _556, ss
	cmpl	$1, %r15d	#, dim
	jne	.L129	#,
.L134:
	movq	200(%rsp), %rax	# %sfp, _1638
# run.c:199:     for (int j = 0; j < size; j++) {
	movq	168(%rsp), %rcx	# %sfp, _9
	leaq	(%rbx,%rax), %rdx	#, _47
	xorl	%eax, %eax	# ivtmp.967
.L143:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	(%r10,%rax), %xmm0	# MEM[(float *)x_182 + ivtmp.967_634 * 1], tmp1298
	mulss	%xmm2, %xmm0	# ss, tmp1298
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%rdx,%rax), %xmm0	# MEM[(float *)_47 + ivtmp.967_634 * 1], tmp1299
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	%xmm0, 0(%r13,%rax)	# tmp1299, MEM[(float *)_14 + ivtmp.967_634 * 1]
# run.c:199:     for (int j = 0; j < size; j++) {
	addq	$4, %rax	#, ivtmp.967
	cmpq	%rax, %rcx	# ivtmp.967, _9
	jne	.L143	#,
	jmp	.L121	#
.L460:
	cmpl	$2, 136(%rsp)	#, %sfp
	jbe	.L329	#,
.L269:
# run.c:393:             x[i] += s->xb[i];
	movups	0(%r13,%rax), %xmm0	# MEM <vector(4) float> [(float *)_826 + ivtmp.720_459 * 1], vect__148.373
	movups	(%r10,%rax), %xmm7	# MEM <vector(4) float> [(float *)x_182 + ivtmp.720_459 * 1], tmp2575
	addps	%xmm7, %xmm0	# tmp2575, vect__148.373
	movups	%xmm0, (%r10,%rax)	# vect__148.373, MEM <vector(4) float> [(float *)x_182 + ivtmp.720_459 * 1]
	addq	$16, %rax	#, ivtmp.720
	cmpq	%rax, %r12	# ivtmp.720, _56
	jne	.L269	#,
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L231	#,
	movl	%r15d, %ecx	# dim, niters.376
	subl	%r11d, %ecx	# _1915, niters.376
	cmpl	$1, %ecx	#, niters.376
	je	.L330	#,
	movl	%r11d, %esi	# _1915, i
	movl	%r11d, %eax	# _1915,
.L268:
	leaq	(%r10,%rax,4), %rdx	#, vectp_x.381
# run.c:393:             x[i] += s->xb[i];
	movq	0(%r13,%rax,4), %xmm0	# MEM <vector(2) float> [(float *)vectp.384_916], vect__973.385
# run.c:393:             x[i] += s->xb[i];
	movq	(%rdx), %xmm1	# MEM <vector(2) float> [(float *)vectp_x.381_922], vect__975.382
# run.c:393:             x[i] += s->xb[i];
	addps	%xmm1, %xmm0	# vect__975.382, vect__972.386
	movlps	%xmm0, (%rdx)	# vect__972.386, MEM <vector(2) float> [(float *)vectp_x.381_922]
	testb	$1, %cl	#, niters.376
	je	.L231	#,
	movl	%ecx, %eax	# niters.376, niters.376
	andl	$-2, %eax	#, niters.376
	addl	%esi, %eax	# i, tmp.379
.L272:
# run.c:393:             x[i] += s->xb[i];
	cltq
	leaq	(%r10,%rax,4), %rdx	#, _939
# run.c:393:             x[i] += s->xb[i];
	movss	(%rdx), %xmm0	# *_939, *_939
	addss	0(%r13,%rax,4), %xmm0	# *_937, tmp1696
	movss	%xmm0, (%rdx)	# tmp1696, *_939
	jmp	.L231	#
.L327:
# run.c:261:     for (i = 0; i < d; i++) {
	movq	168(%rsp), %rdx	# %sfp, _9
	xorl	%eax, %eax	# ivtmp.715
	jmp	.L274	#
.L458:
	cmpl	$2, 136(%rsp)	#, %sfp
	jbe	.L319	#,
.L219:
# run.c:367:             x[i] += s->xb2[i];
	movups	(%r10,%rax), %xmm0	# MEM <vector(4) float> [(float *)x_182 + ivtmp.807_551 * 1], vect__124.472
	movups	(%rcx,%rax), %xmm7	# MEM <vector(4) float> [(float *)_1472 + ivtmp.807_551 * 1], tmp2500
	addps	%xmm7, %xmm0	# tmp2500, vect__124.472
	movups	%xmm0, (%r10,%rax)	# vect__124.472, MEM <vector(4) float> [(float *)x_182 + ivtmp.807_551 * 1]
	addq	$16, %rax	#, ivtmp.807
	cmpq	%rax, %r12	# ivtmp.807, _56
	jne	.L219	#,
	cmpl	%r11d, %r15d	# _1915, dim
	je	.L220	#,
	movl	%r15d, %esi	# dim, niters.475
	subl	%r11d, %esi	# _1915, niters.475
	cmpl	$1, %esi	#, niters.475
	je	.L320	#,
	movl	%r11d, %eax	# _1915,
	movl	%r11d, %edi	# _1915, i
.L218:
	leaq	(%r10,%rax,4), %rdx	#, vectp_x.480
# run.c:367:             x[i] += s->xb2[i];
	movq	(%rcx,%rax,4), %xmm0	# MEM <vector(2) float> [(float *)vectp.483_1427], vect__1370.484
# run.c:367:             x[i] += s->xb2[i];
	movq	(%rdx), %xmm1	# MEM <vector(2) float> [(float *)vectp_x.480_1421], vect__1368.481
# run.c:367:             x[i] += s->xb2[i];
	addps	%xmm1, %xmm0	# vect__1368.481, vect__1371.485
	movlps	%xmm0, (%rdx)	# vect__1371.485, MEM <vector(2) float> [(float *)vectp_x.480_1421]
	testb	$1, %sil	#, niters.475
	je	.L224	#,
	movl	%esi, %eax	# niters.475, niters.475
	andl	$-2, %eax	#, niters.475
	addl	%edi, %eax	# i, tmp.478
.L221:
# run.c:367:             x[i] += s->xb2[i];
	cltq
	leaq	(%r10,%rax,4), %rdx	#, _1404
# run.c:367:             x[i] += s->xb2[i];
	movss	(%rdx), %xmm0	# *_1404, *_1404
	addss	(%rcx,%rax,4), %xmm0	# *_1406, tmp1546
	movss	%xmm0, (%rdx)	# tmp1546, *_1404
	jmp	.L224	#
.L459:
# run.c:389:         matmul(s->xb, s->hb, w->w2 + l*dim*hidden_dim, hidden_dim, dim);
	movq	96(%rax), %rdi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w2, _141
	jmp	.L300	#
.L135:
# run.c:261:     for (i = 0; i < d; i++) {
	movl	248(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jg	.L152	#,
.L150:
# run.c:325:         for (h = 0; h < p->n_heads; h++) {
	movq	72(%rsp), %rax	# %sfp, transformer
	movl	12(%rax), %ebp	# MEM[(struct Config *)transformer_180(D)].n_heads,
	testl	%ebp, %ebp	#
	jg	.L174	#,
.L172:
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	72(%rsp), %rax	# %sfp, transformer
# run.c:261:     for (i = 0; i < d; i++) {
	movl	252(%rsp), %ecx	# %sfp,
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	88(%rax), %rdi	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].w1, _127
# run.c:375:         matmul(s->hb, s->xb, w->w1 + l*dim*hidden_dim, dim, hidden_dim);
	movq	152(%rax), %rbx	# MEM[(struct RunState *)transformer_180(D) + 128B].hb, _130
# run.c:261:     for (i = 0; i < d; i++) {
	testl	%ecx, %ecx	#
	jle	.L231	#,
	movss	.LC7(%rip), %xmm2	#, tmp1772
	jmp	.L237	#
.L454:
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	80(%rax), %r8	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].wo, _115
# run.c:363:         matmul(s->xb2, s->xb, w->wo + l*dim*dim, dim, dim);
	movq	144(%rax), %rcx	# MEM[(struct RunState *)transformer_180(D) + 128B].xb2, _117
	jmp	.L210	#
.L334:
# run.c:262:         float val = 0.0f;
	pxor	%xmm1, %xmm1	# val
# run.c:263:         for (int j = 0; j < n; j++) {
	xorl	%eax, %eax	# j
	jmp	.L295	#
.L302:
# run.c:191:     float ss = 0.0f;
	pxor	%xmm0, %xmm0	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%edx, %edx	# j
	jmp	.L122	#
.L453:
# run.c:308:             float freq = 1.0f / powf(10000.0f, head_dim / (float)head_size);
	pxor	%xmm7, %xmm7	# _1384
	pxor	%xmm5, %xmm5	# tmp1774
	movss	.LC9(%rip), %xmm4	#, tmp1773
	leaq	412(%rsp), %rax	#, tmp1770
	cvtsi2ssl	88(%rsp), %xmm5	# %sfp, tmp1774
	movq	%rax, 56(%rsp)	# tmp1770, %sfp
	movss	.LC7(%rip), %xmm2	#, tmp1772
	xorl	%r9d, %r9d	# i
	cvtsi2ssl	140(%rsp), %xmm7	# %sfp, _1384
	movss	%xmm4, 32(%rsp)	# tmp1773, %sfp
	leaq	408(%rsp), %rbx	#, tmp1769
	movss	%xmm5, 48(%rsp)	# tmp1774, %sfp
	movss	%xmm7, (%rsp)	# _1384, %sfp
	jmp	.L167	#
.L317:
# run.c:261:     for (i = 0; i < d; i++) {
	movq	168(%rsp), %rdx	# %sfp, _9
	xorl	%eax, %eax	# ivtmp.803
	jmp	.L223	#
.L321:
# run.c:191:     float ss = 0.0f;
	pxor	%xmm1, %xmm1	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%edx, %edx	# j
	jmp	.L225	#
.L462:
	cmpl	$2, %r12d	#, _1024
	jbe	.L333	#,
	movl	216(%rsp), %edx	# %sfp, bnd.327
	movaps	%xmm1, %xmm2	# ss, vect_cst__1100
	shufps	$0, %xmm2, %xmm2	# vect_cst__1100
	shrl	$2, %edx	#,
	salq	$4, %rdx	#, _2069
.L288:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	(%rcx,%rax), %xmm0	# MEM <vector(4) float> [(float *)x_182 + ivtmp.699_1917 * 1], vect__531.336
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	(%rbx,%rax), %xmm5	# MEM <vector(4) float> [(float *)_151 + ivtmp.699_1917 * 1], tmp2609
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm2, %xmm0	# vect_cst__1100, vect__531.336
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm5, %xmm0	# tmp2609, vect__533.337
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movups	%xmm0, (%rcx,%rax)	# vect__533.337, MEM <vector(4) float> [(float *)x_182 + ivtmp.699_1917 * 1]
	addq	$16, %rax	#, ivtmp.699
	cmpq	%rdx, %rax	# _2069, ivtmp.699
	jne	.L288	#,
	movl	216(%rsp), %edi	# %sfp, dim
	movl	%edi, %eax	# dim, tmp.343
	andl	$-4, %eax	#, tmp.343
	movl	%eax, %edx	# tmp.343,
	cmpl	%eax, %edi	# tmp.343, dim
	je	.L276	#,
	subl	%eax, %edi	# tmp.343, dim
	movl	%edi, %ebp	# dim, niters.354
	movq	192(%rsp), %rdi	# %sfp, x
	cmpl	$1, %ebp	#, niters.354
	je	.L291	#,
.L287:
	movq	192(%rsp), %rdi	# %sfp, x
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movaps	%xmm1, %xmm2	# ss, tmp1734
	shufps	$0xe0, %xmm2, %xmm2	# tmp1734
	leaq	(%rdi,%rdx,4), %rcx	#, vectp_x.348
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	(%rcx), %xmm0	# MEM <vector(2) float> [(float *)vectp_x.348_1061], vect__1122.349
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm2, %xmm0	# tmp1734, vect__1121.350
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movq	(%rbx,%rdx,4), %xmm2	# MEM <vector(2) float> [(float *)vectp.345_1067], vect__1124.346
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulps	%xmm2, %xmm0	# vect__1124.346, vect__1120.351
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movlps	%xmm0, (%rcx)	# vect__1120.351, MEM <vector(2) float> [(float *)vectp_x.348_1061]
	testb	$1, %bpl	#, niters.354
	je	.L276	#,
	andl	$-2, %ebp	#, niters_vector_mult_vf.342
	addl	%ebp, %eax	# niters_vector_mult_vf.342, tmp.343
.L291:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	cltq
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	leaq	(%rdi,%rax,4), %rdx	#, _1083
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%rdx), %xmm1	# *_1083, tmp1741
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	mulss	(%rbx,%rax,4), %xmm1	# *_1085, tmp1742
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movss	%xmm1, (%rdx)	# tmp1742, *_1083
	jmp	.L276	#
.L330:
# run.c:392:         for (int i = 0; i < dim; i++) {
	movl	%r11d, %eax	# _1915, tmp.379
	jmp	.L272	#
.L329:
# run.c:261:     for (i = 0; i < d; i++) {
	movl	%r15d, %ecx	# dim, niters.376
# run.c:392:         for (int i = 0; i < dim; i++) {
	xorl	%esi, %esi	# i
# run.c:261:     for (i = 0; i < d; i++) {
	xorl	%eax, %eax	#
	jmp	.L268	#
.L461:
	movq	192(%rsp), %rdx	# %sfp, x
# run.c:197:     ss = 1.0f / sqrtf(ss);
	xorl	%eax, %eax	# ivtmp.694
	jmp	.L293	#
.L323:
# run.c:199:     for (int j = 0; j < size; j++) {
	movl	%r11d, %eax	# _1915, tmp.442
	jmp	.L240	#
.L322:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movl	%r15d, %ecx	# dim, niters.439
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%esi, %esi	# j
	xorl	%eax, %eax	#
	jmp	.L234	#
.L304:
	movl	%r11d, %eax	# _1915, tmp.613
	jmp	.L141	#
.L303:
# run.c:200:         o[j] = weight[j] * (ss * x[j]);
	movl	%r15d, %ecx	# dim, niters.610
	xorl	%eax, %eax	#
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%esi, %esi	# j
	jmp	.L137	#
.L319:
# run.c:261:     for (i = 0; i < d; i++) {
	movl	%r15d, %esi	# dim, niters.475
	xorl	%eax, %eax	#
# run.c:366:         for (int i = 0; i < dim; i++) {
	xorl	%edi, %edi	# i
	jmp	.L218	#
.L220:
# run.c:371:         rmsnorm(s->xb, x, w->rms_ffn_weight + l*dim, dim);
	movq	72(%rsp), %rax	# %sfp, transformer
	movq	48(%rax), %rbx	# MEM[(struct TransformerWeights *)transformer_180(D) + 32B].rms_ffn_weight, _125
	jmp	.L301	#
.L331:
# run.c:191:     float ss = 0.0f;
	pxor	%xmm0, %xmm0	# ss
# run.c:192:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# _390
	jmp	.L277	#
.L320:
# run.c:366:         for (int i = 0; i < dim; i++) {
	movl	%r11d, %eax	# _1915, tmp.478
	jmp	.L221	#
.L120:
# run.c:195:     ss /= size;
	pxor	%xmm5, %xmm5	# _1042
	cvtsi2ssl	216(%rsp), %xmm5	# %sfp, _1042
	movss	%xmm5, 220(%rsp)	# _1042, %sfp
	jmp	.L260	#
.L333:
# run.c:199:     for (int j = 0; j < size; j++) {
	xorl	%eax, %eax	# tmp.343
# run.c:197:     ss = 1.0f / sqrtf(ss);
	xorl	%edx, %edx	#
	jmp	.L287	#
.L432:
	movl	%r11d, 48(%rsp)	# _1915, %sfp
	movq	%r10, 32(%rsp)	# x, %sfp
	movss	%xmm2, (%rsp)	# tmp1772, %sfp
# run.c:197:     ss = 1.0f / sqrtf(ss);
	call	sqrtf@PLT	#
# run.c:197:     ss = 1.0f / sqrtf(ss);
	movss	(%rsp), %xmm2	# %sfp, tmp1772
	movq	32(%rsp), %r10	# %sfp, x
	movl	48(%rsp), %r11d	# %sfp, _1915
	movaps	%xmm2, %xmm1	# tmp1772, ss
	divss	%xmm0, %xmm1	# tmp1805, ss
	jmp	.L230	#
.L127:
	movl	%r11d, 32(%rsp)	# _1915, %sfp
	movq	%r10, (%rsp)	# x, %sfp
# run.c:197:     ss = 1.0f / sqrtf(ss);
	call	sqrtf@PLT	#
	movl	32(%rsp), %r11d	# %sfp, _1915
	movq	(%rsp), %r10	# %sfp, x
	jmp	.L133	#
.L436:
	call	sqrtf@PLT	#
	jmp	.L282	#
	.cfi_endproc
.LFE78:
	.size	forward, .-forward
	.section	.rodata.str1.1
.LC43:
	.string	"couldn't load %s\n"
.LC44:
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
	movq	%rax, 24(%rsp)	# tmp191, D.9132
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
	movdqa	.LC11(%rip), %xmm0	#, tmp122
# run.c:432:     t->sorted_vocab = NULL; // initialized lazily
	movq	$0, 16(%rbp)	#, t_38(D)->sorted_vocab
# run.c:438:     FILE *file = fopen(tokenizer_path, "rb");
	movq	%rbx, %rdi	# tokenizer_path,
# run.c:431:     t->vocab_scores = (float*)malloc(vocab_size * sizeof(float));
	movq	%rax, 8(%rbp)	# tmp184, t_38(D)->vocab_scores
# run.c:438:     FILE *file = fopen(tokenizer_path, "rb");
	leaq	.LC1(%rip), %rsi	#, tmp154
# run.c:435:         t->byte_pieces[i * 2 + 1] = '\0';
	movups	%xmm0, 32(%rbp)	# tmp122, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 32B]
	movdqa	.LC12(%rip), %xmm0	#, tmp123
	movups	%xmm0, 48(%rbp)	# tmp123, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 48B]
	movdqa	.LC13(%rip), %xmm0	#, tmp124
	movups	%xmm0, 64(%rbp)	# tmp124, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 64B]
	movdqa	.LC14(%rip), %xmm0	#, tmp125
	movups	%xmm0, 80(%rbp)	# tmp125, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 80B]
	movdqa	.LC15(%rip), %xmm0	#, tmp126
	movups	%xmm0, 96(%rbp)	# tmp126, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 96B]
	movdqa	.LC16(%rip), %xmm0	#, tmp127
	movups	%xmm0, 112(%rbp)	# tmp127, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 112B]
	movdqa	.LC17(%rip), %xmm0	#, tmp128
	movups	%xmm0, 128(%rbp)	# tmp128, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 128B]
	movdqa	.LC18(%rip), %xmm0	#, tmp129
	movups	%xmm0, 144(%rbp)	# tmp129, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 144B]
	movdqa	.LC19(%rip), %xmm0	#, tmp130
	movups	%xmm0, 160(%rbp)	# tmp130, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 160B]
	movdqa	.LC20(%rip), %xmm0	#, tmp131
	movups	%xmm0, 176(%rbp)	# tmp131, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 176B]
	movdqa	.LC21(%rip), %xmm0	#, tmp132
	movups	%xmm0, 192(%rbp)	# tmp132, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 192B]
	movdqa	.LC22(%rip), %xmm0	#, tmp133
	movups	%xmm0, 208(%rbp)	# tmp133, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 208B]
	movdqa	.LC23(%rip), %xmm0	#, tmp134
	movups	%xmm0, 224(%rbp)	# tmp134, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 224B]
	movdqa	.LC24(%rip), %xmm0	#, tmp135
	movups	%xmm0, 240(%rbp)	# tmp135, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 240B]
	movdqa	.LC25(%rip), %xmm0	#, tmp136
	movups	%xmm0, 256(%rbp)	# tmp136, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 256B]
	movdqa	.LC26(%rip), %xmm0	#, tmp137
	movups	%xmm0, 272(%rbp)	# tmp137, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 272B]
	movdqa	.LC27(%rip), %xmm0	#, tmp138
	movups	%xmm0, 288(%rbp)	# tmp138, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 288B]
	movdqa	.LC28(%rip), %xmm0	#, tmp139
	movups	%xmm0, 304(%rbp)	# tmp139, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 304B]
	movdqa	.LC29(%rip), %xmm0	#, tmp140
	movups	%xmm0, 320(%rbp)	# tmp140, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 320B]
	movdqa	.LC30(%rip), %xmm0	#, tmp141
	movups	%xmm0, 336(%rbp)	# tmp141, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 336B]
	movdqa	.LC31(%rip), %xmm0	#, tmp142
	movups	%xmm0, 352(%rbp)	# tmp142, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 352B]
	movdqa	.LC32(%rip), %xmm0	#, tmp143
	movups	%xmm0, 368(%rbp)	# tmp143, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 368B]
	movdqa	.LC33(%rip), %xmm0	#, tmp144
	movups	%xmm0, 384(%rbp)	# tmp144, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 384B]
	movdqa	.LC34(%rip), %xmm0	#, tmp145
	movups	%xmm0, 400(%rbp)	# tmp145, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 400B]
	movdqa	.LC35(%rip), %xmm0	#, tmp146
	movups	%xmm0, 416(%rbp)	# tmp146, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 416B]
	movdqa	.LC36(%rip), %xmm0	#, tmp147
	movups	%xmm0, 432(%rbp)	# tmp147, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 432B]
	movdqa	.LC37(%rip), %xmm0	#, tmp148
	movups	%xmm0, 448(%rbp)	# tmp148, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 448B]
	movdqa	.LC38(%rip), %xmm0	#, tmp149
	movups	%xmm0, 464(%rbp)	# tmp149, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 464B]
	movdqa	.LC39(%rip), %xmm0	#, tmp150
	movups	%xmm0, 480(%rbp)	# tmp150, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 480B]
	movdqa	.LC40(%rip), %xmm0	#, tmp151
	movups	%xmm0, 496(%rbp)	# tmp151, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 496B]
	movdqa	.LC41(%rip), %xmm0	#, tmp152
	movups	%xmm0, 512(%rbp)	# tmp152, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 512B]
	movdqa	.LC42(%rip), %xmm0	#, tmp153
	movups	%xmm0, 528(%rbp)	# tmp153, MEM <vector(16) unsigned char> [(unsigned char *)t_38(D) + 528B]
# run.c:438:     FILE *file = fopen(tokenizer_path, "rb");
	call	fopen@PLT	#
# run.c:439:     if (!file) { fprintf(stderr, "couldn't load %s\n", tokenizer_path); exit(EXIT_FAILURE); }
	testq	%rax, %rax	# file
	je	.L480	#,
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
	jne	.L479	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	leaq	20(%rsp), %rax	#, tmp179
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	xorl	%ebx, %ebx	# ivtmp.1009
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%rax, 8(%rsp)	# tmp179, %sfp
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	testl	%r13d, %r13d	# vocab_size
	jle	.L468	#,
	.p2align 4,,10
	.p2align 3
.L467:
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	movq	8(%rbp), %rdi	# t_38(D)->vocab_scores, tmp161
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	%r12, %rcx	# file,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	addq	%rbx, %rdi	# ivtmp.1009, tmp161
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	call	fread@PLT	#
# run.c:443:         if (fread(t->vocab_scores + i, sizeof(float), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE);}
	cmpq	$1, %rax	#, tmp187
	jne	.L479	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:212:     return __fread_alias (__ptr, __size, __n, __stream);
	movq	8(%rsp), %rdi	# %sfp,
	movq	%r12, %rcx	# file,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread@PLT	#
# run.c:444:         if (fread(&len, sizeof(int), 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	cmpq	$1, %rax	#, tmp188
	jne	.L479	#,
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
	jne	.L479	#,
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movq	0(%rbp), %rdx	# t_38(D)->vocab, t_38(D)->vocab
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movslq	20(%rsp), %rax	# len, len
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movq	(%rdx,%rbx,2), %rdx	# *_28, *_28
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	addq	$4, %rbx	#, ivtmp.1009
# run.c:447:         t->vocab[i][len] = '\0'; // add the string terminating token
	movb	$0, (%rdx,%rax)	#, *_32
# run.c:442:     for (int i = 0; i < vocab_size; i++) {
	cmpq	%rbx, (%rsp)	# ivtmp.1009, %sfp
	jne	.L467	#,
.L468:
# run.c:449:     fclose(file);
	movq	%r12, %rdi	# file,
	call	fclose@PLT	#
# run.c:450: }
	movq	24(%rsp), %rax	# D.9132, tmp192
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp192
	jne	.L481	#,
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
.L479:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC44(%rip), %rdi	#, tmp173
	call	fwrite@PLT	#
# run.c:446:         if (fread(t->vocab[i], len, 1, file) != 1) { fprintf(stderr, "failed read\n"); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
.L480:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rbx, %rcx	# tokenizer_path,
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	leaq	.LC43(%rip), %rdx	#, tmp157
	call	__fprintf_chk@PLT	#
# run.c:439:     if (!file) { fprintf(stderr, "couldn't load %s\n", tokenizer_path); exit(EXIT_FAILURE); }
	movl	$1, %edi	#,
	call	exit@PLT	#
.L481:
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
	jle	.L483	#,
	xorl	%ebx, %ebx	# ivtmp.1016
	.p2align 4,,10
	.p2align 3
.L484:
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	movq	0(%rbp), %rax	# t_13(D)->vocab, t_13(D)->vocab
	movq	(%rax,%rbx,8), %rdi	# *_4, *_4
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	addq	$1, %rbx	#, ivtmp.1016
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	call	free@PLT	#
# run.c:453:     for (int i = 0; i < t->vocab_size; i++) { free(t->vocab[i]); }
	cmpl	%ebx, 24(%rbp)	# ivtmp.1016, t_13(D)->vocab_size
	jg	.L484	#,
.L483:
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
.LC45:
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
	movq	%rax, 8(%rsp)	# tmp114, D.9155
	xorl	%eax, %eax	# tmp114
# run.c:460:     char *piece = t->vocab[token];
	movq	(%rdi), %rax	# t_15(D)->vocab, t_15(D)->vocab
	movq	(%rax,%rdx,8), %rbx	# *_4, <retval>
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %esi	#, tmp111
	jne	.L488	#,
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	xorl	%eax, %eax	# tmp108
	cmpb	$32, (%rbx)	#, *piece_17
	sete	%al	#, tmp108
	addq	%rax, %rbx	# tmp108, <retval>
.L488:
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	xorl	%eax, %eax	#
	leaq	7(%rsp), %rdx	#, tmp100
	leaq	.LC45(%rip), %rsi	#, tmp101
	movq	%rbx, %rdi	# <retval>,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp113
	jne	.L487	#,
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	7(%rsp), %eax	# byte_val, byte_val
	addl	%eax, %eax	# tmp104
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%rbp,%rax), %rbx	#, <retval>
.L487:
# run.c:470: }
	movq	8(%rsp), %rax	# D.9155, tmp115
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	jne	.L492	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L492:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE82:
	.size	decode, .-decode
	.section	.rodata.str1.1
.LC46:
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
	je	.L506	#,
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
	je	.L493	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%rdi)	#, MEM[(char *)piece_10(D) + 1B]
	jne	.L495	#,
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	call	__ctype_b_loc@PLT	#
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movq	(%rax), %rax	# *_3, *_3
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	testw	$24576, (%rax,%rbp,2)	#, *_7
	je	.L493	#,
.L495:
# run.c:484: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%rbx, %rdx	# piece,
	leaq	.LC46(%rip), %rsi	#, tmp97
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
.L493:
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
.L506:
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
.L511:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r15	# __u, __l
	jnb	.L517	#,
.L513:
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
	js	.L515	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L512	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%rbx), %r15	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r15	# __u, __l
	jb	.L513	#,
.L517:
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
.L515:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%rbx, %r14	# __idx, __u
	jmp	.L511	#
	.p2align 4,,10
	.p2align 3
.L512:
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
.LC48:
	.string	"cannot encode NULL text\n"
.LC49:
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
	je	.L594	#,
# run.c:498:     if (t->sorted_vocab == NULL) {
	cmpq	$0, 16(%rdi)	#, t_129(D)->sorted_vocab
	movq	%rsi, %r15	# tmp308, text
	movl	%edx, %r12d	# tmp309, bos
	je	.L595	#,
.L520:
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
	jne	.L524	#,
# run.c:514:     *n_tokens = 0;
	movl	$0, (%r9)	#, *n_tokens_138(D)
	xorl	%edx, %edx	#
# run.c:523:     if (text[0] != '\0') {
	cmpb	$0, (%r15)	#, *text_127(D)
	jne	.L596	#,
.L526:
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	cmpb	$0, 76(%rsp)	#, %sfp
	je	.L556	#,
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	leal	1(%rdx), %eax	#, tmp292
	movslq	%edx, %rdx	# _96, _96
	movl	%eax, (%r9)	# tmp292, *n_tokens_138(D)
# run.c:609:     if (eos) tokens[(*n_tokens)++] = 2;
	movq	64(%rsp), %rax	# %sfp, tokens
	movl	$2, (%rax,%rdx,4)	#, *_100
.L556:
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
.L524:
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
	je	.L526	#,
.L596:
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
.L529:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r11, %r10	# __u, __l
	jnb	.L597	#,
.L531:
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
	jne	.L528	#,
	movzbl	1(%rbp), %esi	# MEM <char[1:2]> [(void *)_179], MEM <char[1:2]> [(void *)_179]
	negl	%esi	# _180
.L528:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:34:       if (__comparison < 0)
	testl	%esi, %esi	# _180
	js	.L557	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L530	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%rax), %r10	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r11, %r10	# __u, __l
	jb	.L531	#,
.L597:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	$-1, %eax	#, iftmp.16_183
.L532:
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
	je	.L593	#,
	movq	%r15, 8(%rsp)	# text, %sfp
	movq	%r14, %rbp	# _27, _27
	movq	%r9, 32(%rsp)	# n_tokens, %sfp
.L533:
# run.c:544:         if ((*c & 0xC0) != 0x80) {
	movl	%eax, %edx	# _10, tmp250
	andl	$192, %edx	#, tmp250
# run.c:544:         if ((*c & 0xC0) != 0x80) {
	cmpl	$128, %edx	#, tmp250
	je	.L598	#,
	movq	$1, 24(%rsp)	#, %sfp
	movq	%rbx, %rdx	# str_buffer, _387
	movl	$1, %ecx	#, _391
.L535:
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
	jne	.L536	#,
	testb	%cl, %cl	# _391
	jne	.L599	#,
.L536:
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movq	16(%rsp), %rax	# %sfp, t
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:27:   __l = 0;
	xorl	%r12d, %r12d	# __l
# run.c:489:     TokenIndex *res = bsearch(&tok, sorted_vocab, vocab_size, sizeof(TokenIndex), compare_tokens);
	movslq	24(%rax), %r13	# t_129(D)->vocab_size, __u
	.p2align 4,,10
	.p2align 3
.L539:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r13, %r12	# __u, __l
	jnb	.L600	#,
.L541:
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
	js	.L559	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L540	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%r15), %r12	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r13, %r12	# __u, __l
	jb	.L541	#,
.L600:
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
.L543:
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movq	32(%rsp), %rdi	# %sfp, n_tokens
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movzbl	(%rbx), %eax	# *str_buffer_137, _397
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	movl	%esi, (%rdi)	# _421, *n_tokens_138(D)
# run.c:570:             for (int i=0; i < str_len; i++) {
	movq	24(%rsp), %rsi	# %sfp, str_len
# run.c:571:                 tokens[(*n_tokens)++] = (unsigned char)str_buffer[i] + 3;
	addl	$3, %eax	#, tmp263
	movl	%eax, (%rdx)	# tmp263, *_422
# run.c:570:             for (int i=0; i < str_len; i++) {
	cmpq	$1, %rsi	#, str_len
	je	.L545	#,
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
	je	.L545	#,
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
	jne	.L545	#,
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
.L545:
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movq	8(%rsp), %rax	# %sfp, text
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	addq	$1, 8(%rsp)	#, %sfp
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	movzbl	1(%rax), %eax	# MEM[(char *)c_60 + 1B], _10
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	testb	%al, %al	# _10
	jne	.L533	#,
.L602:
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movq	32(%rsp), %r9	# %sfp, n_tokens
.L593:
	movl	(%r9), %edx	# *n_tokens_138(D), _96
	movq	64(%rsp), %rbp	# %sfp, tokens
	movq	%r9, %r8	# n_tokens, n_tokens
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	$1, %edx	#, _96
	jle	.L591	#,
	.p2align 4,,10
	.p2align 3
.L601:
# run.c:581:         int best_idx = -1;
	movl	$-1, %esi	#, best_idx
# run.c:580:         int best_id = -1;
	movl	$-1, %edi	#, best_id
# run.c:579:         float best_score = -1e10;
	movss	.LC47(%rip), %xmm2	#, best_score
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movq	$0, 8(%rsp)	#, %sfp
# run.c:579:         float best_score = -1e10;
	movl	%edi, 24(%rsp)	# best_id, %sfp
	movl	%esi, 32(%rsp)	# best_idx, %sfp
	movq	%rbp, 40(%rsp)	# tokens, %sfp
	movq	%r8, 48(%rsp)	# n_tokens, %sfp
	movss	%xmm2, 72(%rsp)	# best_score, %sfp
	.p2align 4,,10
	.p2align 3
.L552:
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	16(%rsp), %r14	# %sfp, t
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	40(%rsp), %rdi	# %sfp, tokens
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$2, %esi	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:27:   __l = 0;
	xorl	%r13d, %r13d	# __l
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	8(%rsp), %rdx	# %sfp, ivtmp.1048
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movq	(%r14), %rax	# t_129(D)->vocab, _59
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movslq	4(%rdi,%rdx,4), %rcx	# MEM[(int *)tokens_142(D) + 4B + ivtmp.1048_288 * 4], MEM[(int *)tokens_142(D) + 4B + ivtmp.1048_288 * 4]
# run.c:585:             sprintf(str_buffer, "%s%s", t->vocab[tokens[i]], t->vocab[tokens[i+1]]);
	movslq	(%rdi,%rdx,4), %rdx	# MEM[(int *)tokens_142(D) + ivtmp.1048_288 * 4], MEM[(int *)tokens_142(D) + ivtmp.1048_288 * 4]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	%rbx, %rdi	# str_buffer,
	movq	(%rax,%rcx,8), %r9	# *_67,
	movq	(%rax,%rdx,8), %r8	# *_74,
	leaq	.LC49(%rip), %rcx	#,
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
.L547:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r13	# __u, __l
	jnb	.L550	#,
.L549:
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
	js	.L560	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:36:       else if (__comparison > 0)
	je	.L548	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:37: 	__l = __idx + 1;
	leaq	1(%r15), %r13	#, __l
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:29:   while (__l < __u)
	cmpq	%r14, %r13	# __u, __l
	jb	.L549	#,
.L550:
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movq	48(%rsp), %rax	# %sfp, n_tokens
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	addq	$1, 8(%rsp)	#, %sfp
	movq	8(%rsp), %rcx	# %sfp, ivtmp.1048
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	movl	(%rax), %edx	# *n_tokens_138(D), _96
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	leal	-1(%rdx), %eax	#, tmp287
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	%ecx, %eax	# tmp421, tmp287
	jg	.L552	#,
# run.c:595:         if (best_idx == -1) {
	movl	32(%rsp), %esi	# %sfp, best_idx
	movl	24(%rsp), %edi	# %sfp, best_id
	movq	40(%rsp), %rbp	# %sfp, tokens
	movq	48(%rsp), %r8	# %sfp, n_tokens
	cmpl	$-1, %esi	#, best_idx
	je	.L591	#,
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
	jle	.L553	#,
	cltq
	.p2align 4,,10
	.p2align 3
.L554:
# run.c:603:             tokens[i] = tokens[i+1];
	movl	4(%rbp,%rax,4), %edx	# MEM[(int *)tokens_142(D) + 4B + ivtmp.1040_283 * 4], MEM[(int *)tokens_142(D) + 4B + ivtmp.1040_283 * 4]
	movl	%edx, 0(%rbp,%rax,4)	# MEM[(int *)tokens_142(D) + 4B + ivtmp.1040_283 * 4], MEM[(int *)tokens_142(D) + ivtmp.1040_283 * 4]
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	movl	(%r8), %ecx	# *n_tokens_138(D), tmp423
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	addq	$1, %rax	#, ivtmp.1040
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	leal	-1(%rcx), %edx	#, _96
# run.c:602:         for (int i = best_idx+1; i < (*n_tokens-1); i++) {
	cmpl	%eax, %edx	# ivtmp.1040, _96
	jg	.L554	#,
.L553:
# run.c:605:         (*n_tokens)--; // token length decreased
	movl	%edx, (%r8)	# _96, *n_tokens_138(D)
# run.c:583:         for (int i=0; i < (*n_tokens-1); i++) {
	cmpl	$1, %edx	#, _96
	jg	.L601	#,
.L591:
	movq	%r8, %r9	# n_tokens, n_tokens
	jmp	.L526	#
	.p2align 4,,10
	.p2align 3
.L559:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%r15, %r13	# __idx, __u
	jmp	.L539	#
.L540:
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
	je	.L543	#,
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
	jne	.L533	#,
	jmp	.L602	#
	.p2align 4,,10
	.p2align 3
.L560:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%r15, %r14	# __idx, __u
	jmp	.L547	#
	.p2align 4,,10
	.p2align 3
.L548:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	8(%r12), %eax	# MEM[(struct TokenIndex *)__p_208].id, iftmp.16_213
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	cmpl	$-1, %eax	#, iftmp.16_213
	je	.L550	#,
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	movq	16(%rsp), %rdi	# %sfp, t
	movslq	%eax, %rcx	# iftmp.16_213, iftmp.16_213
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	movss	72(%rsp), %xmm1	# %sfp, best_score
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	movq	8(%rdi), %rdx	# t_129(D)->vocab_scores, t_129(D)->vocab_scores
	movss	(%rdx,%rcx,4), %xmm0	# *_81, _82
# run.c:589:                 best_score = t->vocab_scores[id];
	movl	32(%rsp), %ecx	# %sfp, best_idx
# run.c:587:             if (id != -1 && t->vocab_scores[id] > best_score) {
	comiss	%xmm1, %xmm0	# best_score, _82
# run.c:589:                 best_score = t->vocab_scores[id];
	maxss	%xmm1, %xmm0	# best_score, _82
	cmova	8(%rsp), %ecx	# %sfp,, best_idx
	cmovbe	24(%rsp), %eax	# iftmp.16_213,, %sfp, iftmp.16_213
	movl	%ecx, 32(%rsp)	# best_idx, %sfp
	movl	%eax, 24(%rsp)	# iftmp.16_213, %sfp
	movss	%xmm0, 72(%rsp)	# _82, %sfp
	jmp	.L550	#
.L599:
# run.c:537:     for (char *c = text; *c != '\0'; c++) {
	addq	$1, 8(%rsp)	#, %sfp
.L537:
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
	jmp	.L535	#
.L557:
# /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h:35: 	__u = __idx;
	movq	%rax, %r11	# __idx, __u
	jmp	.L529	#
.L530:
# run.c:490:     return res != NULL ? res->id : -1;
	movl	8(%rcx), %eax	# MEM[(struct TokenIndex *)__p_178].id, iftmp.16_183
	jmp	.L532	#
.L595:
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
	jle	.L523	#,
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	16(%rsp), %rax	# %sfp, t
	movq	%rdi, %rdx	# _6, ivtmp.1062
	movq	(%rax), %rcx	# t_129(D)->vocab, _7
	xorl	%eax, %eax	# ivtmp.1059
.L522:
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	(%rcx,%rax,8), %rsi	# MEM[(char * *)_7 + ivtmp.1059_292 * 8], _15
# run.c:503:             t->sorted_vocab[i].id = i;
	movl	%eax, 8(%rdx)	# ivtmp.1059, MEM[(int *)_297 + 8B]
# run.c:501:         for (int i = 0; i < t->vocab_size; i++) {
	addq	$1, %rax	#, ivtmp.1059
	addq	$16, %rdx	#, ivtmp.1062
# run.c:502:             t->sorted_vocab[i].str = t->vocab[i];
	movq	%rsi, -16(%rdx)	# _15, MEM[(char * *)_297]
# run.c:501:         for (int i = 0; i < t->vocab_size; i++) {
	cmpq	%rax, %rbx	# ivtmp.1059, _4
	jne	.L522	#,
.L523:
# run.c:505:         qsort(t->sorted_vocab, t->vocab_size, sizeof(TokenIndex), compare_tokens);
	leaq	compare_tokens(%rip), %rcx	#, tmp234
	movl	$16, %edx	#,
	movq	%rbx, %rsi	# _4,
	movq	%r9, 8(%rsp)	# n_tokens, %sfp
	call	qsort@PLT	#
	movq	8(%rsp), %r9	# %sfp, n_tokens
	jmp	.L520	#
.L598:
	movq	$0, 24(%rsp)	#, %sfp
	jmp	.L537	#
.L594:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$24, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC48(%rip), %rdi	#, tmp231
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
	movss	(%rdi), %xmm0	# *probabilities_12(D), max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %esi	#, n
	jle	.L608	#,
	movl	%esi, %esi	# n, _3
	movl	$1, %eax	#, ivtmp.1073
# run.c:633:     int max_i = 0;
	xorl	%edx, %edx	# <retval>
	.p2align 4,,10
	.p2align 3
.L607:
# run.c:636:         if (probabilities[i] > max_p) {
	movss	(%rdi,%rax,4), %xmm1	# MEM[(float *)probabilities_12(D) + ivtmp.1073_7 * 4], _26
# run.c:636:         if (probabilities[i] > max_p) {
	comiss	%xmm0, %xmm1	# max_p, _26
# run.c:638:             max_p = probabilities[i];
	maxss	%xmm0, %xmm1	# max_p, _26
	cmova	%eax, %edx	# ivtmp.1073,, <retval>
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1073
# run.c:638:             max_p = probabilities[i];
	movaps	%xmm1, %xmm0	# _26, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpq	%rax, %rsi	# ivtmp.1073, _3
	jne	.L607	#,
# run.c:642: }
	movl	%edx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L608:
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
	jle	.L612	#,
	movslq	%esi, %rdx	# n, _5
	xorl	%eax, %eax	# ivtmp.1085
# run.c:647:     float cdf = 0.0f;
	pxor	%xmm1, %xmm1	# cdf
	jmp	.L616	#
	.p2align 4,,10
	.p2align 3
.L620:
# run.c:648:     for (int i = 0; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1085
	cmpq	%rax, %rdx	# ivtmp.1085, _5
	je	.L612	#,
.L616:
# run.c:649:         cdf += probabilities[i];
	addss	(%rdi,%rax,4), %xmm1	# MEM[(float *)probabilities_11(D) + ivtmp.1085_16 * 4], cdf
# run.c:650:         if (coin < cdf) {
	comiss	%xmm0, %xmm1	# coin, cdf
	jbe	.L620	#,
# run.c:655: }
	ret	
	.p2align 4,,10
	.p2align 3
.L612:
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
	pxor	%xmm2, %xmm2	# tmp118
# run.c:665: int sample_topp(float* probabilities, int n, float topp, ProbIndex* probindex, float coin) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
# run.c:675:     const float cutoff = (1.0f - topp) / (n - 1);
	cvtsi2ssl	%eax, %xmm2	# tmp117, tmp118
# run.c:665: int sample_topp(float* probabilities, int n, float topp, ProbIndex* probindex, float coin) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx	# tmp129, probindex
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# run.c:675:     const float cutoff = (1.0f - topp) / (n - 1);
	movss	.LC7(%rip), %xmm3	#, tmp116
	subss	%xmm0, %xmm3	# topp, tmp115
# run.c:675:     const float cutoff = (1.0f - topp) / (n - 1);
	divss	%xmm2, %xmm3	# tmp118, cutoff
# run.c:676:     for (int i = 0; i < n; i++) {
	testl	%esi, %esi	# n
	jle	.L622	#,
	movq	%rdi, %rcx	# tmp126, probabilities
	movslq	%esi, %rsi	# n, _59
	xorl	%eax, %eax	# ivtmp.1107
# run.c:671:     int n0 = 0;
	xorl	%ebp, %ebp	# n0
	.p2align 4,,10
	.p2align 3
.L625:
# run.c:677:         if (probabilities[i] >= cutoff) {
	movss	(%rcx,%rax,4), %xmm2	# MEM[(float *)probabilities_52(D) + ivtmp.1107_61 * 4], _7
# run.c:677:         if (probabilities[i] >= cutoff) {
	comiss	%xmm3, %xmm2	# cutoff, _7
	jb	.L623	#,
# run.c:678:             probindex[n0].index = i;
	movslq	%ebp, %rdx	# n0, n0
# run.c:680:             n0++;
	addl	$1, %ebp	#, n0
# run.c:678:             probindex[n0].index = i;
	leaq	(%rbx,%rdx,8), %rdx	#, _10
# run.c:678:             probindex[n0].index = i;
	movl	%eax, 4(%rdx)	# ivtmp.1107, _10->index
# run.c:679:             probindex[n0].prob = probabilities[i];
	movss	%xmm2, (%rdx)	# _7, _10->prob
.L623:
# run.c:676:     for (int i = 0; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1107
	cmpq	%rax, %rsi	# ivtmp.1107, _59
	jne	.L625	#,
# run.c:683:     qsort(probindex, n0, sizeof(ProbIndex), compare);
	movslq	%ebp, %r12	# n0, _11
	leaq	compare(%rip), %rcx	#, tmp122
	movl	$8, %edx	#,
	movq	%rbx, %rdi	# probindex,
	movq	%r12, %rsi	# _11,
	movss	%xmm1, 8(%rsp)	# coin, %sfp
	movss	%xmm0, 12(%rsp)	# topp, %sfp
	call	qsort@PLT	#
# run.c:688:     for (int i = 0; i < n0; i++) {
	testl	%ebp, %ebp	# n0
	movss	8(%rsp), %xmm1	# %sfp, coin
# run.c:687:     int last_idx = n0 - 1; // in case of rounding errors consider all elements
	leal	-1(%rbp), %ecx	#, i
# run.c:688:     for (int i = 0; i < n0; i++) {
	jle	.L639	#,
# run.c:686:     float cumulative_prob = 0.0f;
	movss	12(%rsp), %xmm0	# %sfp, topp
# run.c:688:     for (int i = 0; i < n0; i++) {
	xorl	%eax, %eax	# ivtmp.1102
# run.c:686:     float cumulative_prob = 0.0f;
	pxor	%xmm2, %xmm2	# cumulative_prob
	jmp	.L631	#
	.p2align 4,,10
	.p2align 3
.L647:
# run.c:688:     for (int i = 0; i < n0; i++) {
	addq	$1, %rax	#, ivtmp.1102
	cmpq	%rax, %r12	# ivtmp.1102, _11
	je	.L651	#,
.L631:
# run.c:689:         cumulative_prob += probindex[i].prob;
	addss	(%rbx,%rax,8), %xmm2	# MEM[(float *)probindex_41(D) + ivtmp.1102_72 * 8], cumulative_prob
# run.c:690:         if (cumulative_prob > topp) {
	comiss	%xmm0, %xmm2	# topp, cumulative_prob
	jbe	.L647	#,
	movl	%eax, %ecx	# ivtmp.1102, i
.L628:
# run.c:697:     float r = coin * cumulative_prob;
	mulss	%xmm1, %xmm2	# coin, r
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	testl	%ecx, %ecx	# i
	js	.L633	#,
.L638:
	movq	%rbx, %rax	# probindex, ivtmp.1098
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	xorl	%edx, %edx	# i
# run.c:698:     float cdf = 0.0f;
	pxor	%xmm0, %xmm0	# cdf
	jmp	.L637	#
	.p2align 4,,10
	.p2align 3
.L649:
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	addl	$1, %edx	#, i
# run.c:699:     for (int i = 0; i <= last_idx; i++) {
	addq	$8, %rax	#, ivtmp.1098
	cmpl	%edx, %ecx	# i, i
	jl	.L633	#,
.L637:
# run.c:700:         cdf += probindex[i].prob;
	addss	(%rax), %xmm0	# MEM[(float *)_18], cdf
# run.c:701:         if (r < cdf) {
	comiss	%xmm2, %xmm0	# r, cdf
	jbe	.L649	#,
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
.L633:
	.cfi_restore_state
# run.c:705:     return probindex[last_idx].index; // in case of rounding errors
	movslq	%ecx, %rcx	# i, i
	salq	$3, %rcx	#, _85
.L627:
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
.L651:
	.cfi_restore_state
# run.c:697:     float r = coin * cumulative_prob;
	mulss	%xmm1, %xmm2	# coin, r
	jmp	.L638	#
	.p2align 4,,10
	.p2align 3
.L622:
# run.c:683:     qsort(probindex, n0, sizeof(ProbIndex), compare);
	leaq	compare(%rip), %rcx	#, tmp121
	movl	$8, %edx	#,
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# probindex,
	call	qsort@PLT	#
	movq	$-8, %rcx	#, _85
	jmp	.L627	#
.L639:
# run.c:686:     float cumulative_prob = 0.0f;
	pxor	%xmm2, %xmm2	# cumulative_prob
	jmp	.L628	#
	.cfi_endproc
.LFE89:
	.size	sample_topp, .-sample_topp
	.p2align 4
	.type	sample.part.0, @function
sample.part.0:
.LFB102:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15	# tmp280, logits
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
	movq	%rdi, %rbp	# tmp279, sampler
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movl	(%rdi), %r12d	# sampler_7(D)->vocab_size, _89
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	testl	%r12d, %r12d	# _89
	jle	.L653	#,
	movl	$1, %ecx	#, _89
	cmpl	$1, %r12d	#, _89
	je	.L654	#,
	movslq	%r12d, %rcx	# _89, _89
	leaq	16(%rdi), %rdx	#, tmp204
	leaq	(%rsi,%rcx,4), %rax	#, tmp203
	cmpq	%rax, %rdx	# tmp203, tmp204
	jnb	.L687	#,
	leaq	20(%rdi), %rax	#, tmp207
	cmpq	%rax, %rsi	# tmp207, logits
	jnb	.L687	#,
.L654:
	movq	%r15, %rax	# logits, ivtmp.1192
	leaq	(%r15,%rcx,4), %rdx	#, _10
	.p2align 4,,10
	.p2align 3
.L661:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movss	(%rax), %xmm0	# MEM[(float *)_3], MEM[(float *)_3]
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	addq	$4, %rax	#, ivtmp.1192
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	divss	16(%rbp), %xmm0	# sampler_7(D)->temperature, tmp233
	movss	%xmm0, -4(%rax)	# tmp233, MEM[(float *)_3]
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	cmpq	%rax, %rdx	# ivtmp.1192, _10
	jne	.L661	#,
# run.c:206:     float max_val = x[0];
	movss	(%r15), %xmm1	# *logits_4(D), max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpl	$1, %r12d	#, _89
	je	.L723	#,
	leal	-1(%r12), %eax	#, tmp277
	movl	%eax, 12(%rsp)	# tmp277, %sfp
.L663:
	leal	-2(%r12), %edx	#, tmp236
	leaq	4(%r15), %rax	#, ivtmp.1185
	leaq	8(%r15,%rdx,4), %rdx	#, _107
	.p2align 4,,10
	.p2align 3
.L667:
# run.c:208:         if (x[i] > max_val) {
	movss	(%rax), %xmm0	# MEM[(float *)_254], _115
# run.c:207:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.1185
# run.c:209:             max_val = x[i];
	maxss	%xmm1, %xmm0	# max_val, _115
	movaps	%xmm0, %xmm1	# _115, max_val
# run.c:207:     for (int i = 1; i < size; i++) {
	cmpq	%rax, %rdx	# ivtmp.1185, _107
	jne	.L667	#,
.L664:
	movq	%r15, %r13	# logits, ivtmp.1175
	leaq	(%r15,%rcx,4), %r14	#, _142
# run.c:213:     float sum = 0.0f;
	pxor	%xmm2, %xmm2	# sum
# run.c:209:             max_val = x[i];
	movq	%r15, %rbx	# logits, ivtmp.1179
	.p2align 4,,10
	.p2align 3
.L668:
# run.c:215:         x[i] = expf(x[i] - max_val);
	movss	(%rbx), %xmm0	# MEM[(float *)_243], MEM[(float *)_243]
	movss	%xmm2, 8(%rsp)	# sum, %sfp
# run.c:214:     for (int i = 0; i < size; i++) {
	addq	$4, %rbx	#, ivtmp.1179
# run.c:215:         x[i] = expf(x[i] - max_val);
	movss	%xmm1, 4(%rsp)	# max_val, %sfp
	subss	%xmm1, %xmm0	# max_val, tmp241
	call	expf@PLT	#
# run.c:216:         sum += x[i];
	movss	8(%rsp), %xmm2	# %sfp, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	movss	4(%rsp), %xmm1	# %sfp, max_val
# run.c:215:         x[i] = expf(x[i] - max_val);
	movss	%xmm0, -4(%rbx)	# _64, MEM[(float *)_243]
# run.c:214:     for (int i = 0; i < size; i++) {
	cmpq	%rbx, %r14	# ivtmp.1179, _142
# run.c:216:         sum += x[i];
	addss	%xmm0, %xmm2	# _64, sum
# run.c:214:     for (int i = 0; i < size; i++) {
	jne	.L668	#,
	cmpl	$2, 12(%rsp)	#, %sfp
	jbe	.L686	#,
	movl	%r12d, %edx	# _89, bnd.1121
	movaps	%xmm2, %xmm1	# sum, vect_cst__41
	shrl	$2, %edx	#,
	shufps	$0, %xmm1, %xmm1	# vect_cst__41
	salq	$4, %rdx	#, tmp257
	addq	%r15, %rdx	# logits, _240
	.p2align 4,,10
	.p2align 3
.L673:
# run.c:220:         x[i] /= sum;
	movups	0(%r13), %xmm0	# MEM <vector(4) float> [(float *)_232], vect__74.1127
	addq	$16, %r13	#, ivtmp.1175
	divps	%xmm1, %xmm0	# vect_cst__41, vect__74.1127
	movups	%xmm0, -16(%r13)	# vect__74.1127, MEM <vector(4) float> [(float *)_232]
	cmpq	%rdx, %r13	# _240, ivtmp.1175
	jne	.L673	#,
	movl	%r12d, %eax	# _89, tmp.1133
	andl	$-4, %eax	#, tmp.1133
	movl	%eax, %edx	# tmp.1133,
	cmpl	%r12d, %eax	# _89, tmp.1133
	je	.L653	#,
.L672:
	movl	%r12d, %ecx	# _89, niters.1130
	subl	%edx, %ecx	# niters_vector_mult_vf.1122, niters.1130
	cmpl	$1, %ecx	#, niters.1130
	je	.L676	#,
	leaq	(%r15,%rdx,4), %rdx	#, vectp_logits.1135
	movaps	%xmm2, %xmm1	# sum, tmp263
# run.c:220:         x[i] /= sum;
	movq	(%rdx), %xmm0	# MEM <vector(2) float> [(float *)vectp_logits.1135_151], vect__91.1136
# run.c:220:         x[i] /= sum;
	shufps	$0xe0, %xmm1, %xmm1	# tmp263
	movhps	.LC8(%rip), %xmm1	#, tmp266
	divps	%xmm1, %xmm0	# tmp266, tmp267
	movlps	%xmm0, (%rdx)	# vect__88.1137, MEM <vector(2) float> [(float *)vectp_logits.1135_151]
	testb	$1, %cl	#, niters.1130
	je	.L653	#,
	andl	$-2, %ecx	#, niters_vector_mult_vf.1132
	addl	%ecx, %eax	# niters_vector_mult_vf.1132, tmp.1133
.L676:
# run.c:220:         x[i] /= sum;
	cltq
	leaq	(%r15,%rax,4), %rax	#, _136
# run.c:220:         x[i] /= sum;
	movss	(%rax), %xmm0	# *_136, *_136
	divss	%xmm2, %xmm0	# sum, tmp272
	movss	%xmm0, (%rax)	# tmp272, *_136
.L653:
# run.c:723:     *state ^= *state >> 12;
	movq	24(%rbp), %rdx	# MEM[(long long unsigned int *)sampler_7(D) + 24B], _13
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	movss	20(%rbp), %xmm0	# sampler_7(D)->topp, _27
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	pxor	%xmm2, %xmm2	# tmp252
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	pxor	%xmm1, %xmm1	# tmp250
# run.c:723:     *state ^= *state >> 12;
	movq	%rdx, %rax	# _13, tmp243
	shrq	$12, %rax	#, tmp243
# run.c:723:     *state ^= *state >> 12;
	xorq	%rdx, %rax	# _13, _15
# run.c:724:     *state ^= *state << 25;
	movq	%rax, %rdx	# _15, tmp244
	salq	$25, %rdx	#, tmp244
# run.c:724:     *state ^= *state << 25;
	xorq	%rax, %rdx	# _15, _17
# run.c:725:     *state ^= *state >> 27;
	movq	%rdx, %rax	# _17, tmp245
	shrq	$27, %rax	#, tmp245
# run.c:725:     *state ^= *state >> 27;
	xorq	%rdx, %rax	# _17, _19
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	movabsq	$2685821657736338717, %rdx	#, tmp247
# run.c:725:     *state ^= *state >> 27;
	movq	%rax, 24(%rbp)	# _19, MEM[(long long unsigned int *)sampler_7(D) + 24B]
# run.c:726:     return (*state * 0x2545F4914F6CDD1Dull) >> 32;
	imulq	%rdx, %rax	# tmp247, tmp246
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	shrq	$40, %rax	#, tmp249
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	comiss	%xmm0, %xmm2	# _27, tmp252
# run.c:729:     return (random_u32(state) >> 8) / 16777216.0f;
	cvtsi2ssl	%eax, %xmm1	# tmp249, tmp250
	mulss	.LC50(%rip), %xmm1	#, _26
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	jnb	.L670	#,
# run.c:746:         if (sampler->topp <= 0 || sampler->topp >= 1) {
	comiss	.LC7(%rip), %xmm0	#, _27
	jb	.L720	#,
.L670:
# run.c:648:     for (int i = 0; i < n; i++) {
	testl	%r12d, %r12d	# _89
	jle	.L680	#,
	movslq	%r12d, %rdx	# _89, _195
	xorl	%eax, %eax	# ivtmp.1166
	pxor	%xmm0, %xmm0	# cdf
	jmp	.L684	#
	.p2align 4,,10
	.p2align 3
.L724:
	addq	$1, %rax	#, ivtmp.1166
	cmpq	%rax, %rdx	# ivtmp.1166, _195
	je	.L680	#,
.L684:
# run.c:649:         cdf += probabilities[i];
	addss	(%r15,%rax,4), %xmm0	# MEM[(float *)logits_4(D) + ivtmp.1166_230 * 4], cdf
# run.c:650:         if (coin < cdf) {
	comiss	%xmm1, %xmm0	# _26, cdf
	jbe	.L724	#,
# run.c:755: }
	addq	$24, %rsp	#,
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
	.p2align 4,,10
	.p2align 3
.L687:
	.cfi_restore_state
	leal	-1(%r12), %eax	#, tmp277
	movl	%r12d, %edx	# _89, niters.1150
	movl	%eax, 12(%rsp)	# tmp277, %sfp
	cmpl	$2, %eax	#, tmp277
	jbe	.L685	#,
	shrl	$2, %edx	#,
	movss	16(%rbp), %xmm1	# sampler_7(D)->temperature, vect_cst__221
	movq	%r15, %rax	# logits, ivtmp.1196
	salq	$4, %rdx	#, tmp214
	addq	%r15, %rdx	# logits, _102
	shufps	$0, %xmm1, %xmm1	# vect_cst__221
	.p2align 4,,10
	.p2align 3
.L657:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movups	(%rax), %xmm0	# MEM <vector(4) float> [(float *)_200], vect__9.1147
	addq	$16, %rax	#, ivtmp.1196
	divps	%xmm1, %xmm0	# vect_cst__221, vect__9.1147
	movups	%xmm0, -16(%rax)	# vect__9.1147, MEM <vector(4) float> [(float *)_200]
	cmpq	%rax, %rdx	# ivtmp.1196, _102
	jne	.L657	#,
	movl	%r12d, %eax	# _89, tmp.1153
	andl	$-4, %eax	#, tmp.1153
	movl	%eax, %esi	# tmp.1153,
	cmpl	%eax, %r12d	# tmp.1153, _89
	je	.L658	#,
	movl	%r12d, %edx	# _89, niters.1150
	subl	%eax, %edx	# tmp.1153, niters.1150
	cmpl	$1, %edx	#, niters.1150
	je	.L659	#,
.L656:
	movss	16(%rbp), %xmm1	# sampler_7(D)->temperature, _257
	leaq	(%r15,%rsi,4), %rsi	#, vectp_logits.1155
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movq	(%rsi), %xmm0	# MEM <vector(2) float> [(float *)vectp_logits.1155_251], vect__201.1156
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	shufps	$0xe0, %xmm1, %xmm1	# tmp220
	movhps	.LC8(%rip), %xmm1	#, tmp223
	divps	%xmm1, %xmm0	# tmp223, tmp224
	movlps	%xmm0, (%rsi)	# vect__203.1157, MEM <vector(2) float> [(float *)vectp_logits.1155_251]
	testb	$1, %dl	#, niters.1150
	je	.L658	#,
	andl	$-2, %edx	#, niters_vector_mult_vf.1152
	addl	%edx, %eax	# niters_vector_mult_vf.1152, tmp.1153
.L659:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	cltq
	leaq	(%r15,%rax,4), %rax	#, _235
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	movss	(%rax), %xmm0	# *_235, *_235
	divss	16(%rbp), %xmm0	# sampler_7(D)->temperature, tmp229
	movss	%xmm0, (%rax)	# tmp229, *_235
.L658:
# run.c:206:     float max_val = x[0];
	movss	(%r15), %xmm1	# *logits_4(D), max_val
	jmp	.L663	#
	.p2align 4,,10
	.p2align 3
.L680:
# run.c:755: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# run.c:654:     return n - 1; // in case of rounding errors
	leal	-1(%r12), %eax	#, <retval>
# run.c:755: }
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
.L720:
	.cfi_restore_state
# run.c:751:             next = sample_topp(logits, sampler->vocab_size, sampler->topp, sampler->probindex, coin);
	movq	8(%rbp), %rdx	# sampler_7(D)->probindex, sampler_7(D)->probindex
# run.c:755: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# run.c:751:             next = sample_topp(logits, sampler->vocab_size, sampler->topp, sampler->probindex, coin);
	movl	%r12d, %esi	# _89,
	movq	%r15, %rdi	# logits,
# run.c:755: }
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
# run.c:751:             next = sample_topp(logits, sampler->vocab_size, sampler->topp, sampler->probindex, coin);
	jmp	sample_topp	#
.L686:
	.cfi_restore_state
# run.c:214:     for (int i = 0; i < size; i++) {
	xorl	%edx, %edx	#
# run.c:219:     for (int i = 0; i < size; i++) {
	xorl	%eax, %eax	# tmp.1133
	jmp	.L672	#
.L685:
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	xorl	%esi, %esi	#
# run.c:740:         for (int q=0; q<sampler->vocab_size; q++) { logits[q] /= sampler->temperature; }
	xorl	%eax, %eax	# tmp.1153
	jmp	.L656	#
.L723:
	movl	$0, 12(%rsp)	#, %sfp
	jmp	.L664	#
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
	unpcklps	%xmm1, %xmm0	# tmp98, tmp91
# run.c:708: void build_sampler(Sampler* sampler, int vocab_size, float temperature, float topp, unsigned long long rng_seed) {
	movq	%rdi, %rbx	# tmp95, sampler
# run.c:709:     sampler->vocab_size = vocab_size;
	movl	%esi, (%rdi)	# vocab_size, sampler_5(D)->vocab_size
# run.c:714:     sampler->probindex = malloc(sampler->vocab_size * sizeof(ProbIndex));
	movslq	%esi, %rsi	# vocab_size, vocab_size
# run.c:712:     sampler->rng_state = rng_seed;
	movq	%rdx, 24(%rdi)	# tmp99, sampler_5(D)->rng_state
# run.c:710:     sampler->temperature = temperature;
	movlps	%xmm0, 16(%rdi)	# tmp91, MEM <vector(2) float> [(float *)sampler_5(D) + 16B]
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
	pxor	%xmm0, %xmm0	# tmp105
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
	cvtsi2ssl	%eax, %xmm0	# tmp104, tmp105
	mulss	.LC50(%rip), %xmm0	#, tmp100
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
	pxor	%xmm0, %xmm0	# tmp92
	ucomiss	16(%rdi), %xmm0	# sampler_9(D)->temperature, tmp92
	jp	.L731	#,
	jne	.L731	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%rdi), %ecx	# sampler_9(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	movss	(%rsi), %xmm0	# *logits_10(D), max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %ecx	#, _2
	jle	.L737	#,
	movl	$1, %eax	#, ivtmp.1221
# run.c:633:     int max_i = 0;
	xorl	%edx, %edx	# <retval>
	.p2align 4,,10
	.p2align 3
.L736:
# run.c:636:         if (probabilities[i] > max_p) {
	movss	(%rsi,%rax,4), %xmm1	# MEM[(float *)logits_10(D) + ivtmp.1221_6 * 4], _31
# run.c:636:         if (probabilities[i] > max_p) {
	comiss	%xmm0, %xmm1	# max_p, _31
# run.c:638:             max_p = probabilities[i];
	maxss	%xmm0, %xmm1	# max_p, _31
	cmova	%eax, %edx	# ivtmp.1221,, <retval>
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rax	#, ivtmp.1221
# run.c:638:             max_p = probabilities[i];
	movaps	%xmm1, %xmm0	# _31, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpq	%rax, %rcx	# ivtmp.1221, _15
	jne	.L736	#,
.L730:
# run.c:755: }
	movl	%edx, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L731:
	jmp	sample.part.0	#
	.p2align 4,,10
	.p2align 3
.L737:
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	xorl	%edx, %edx	# <retval>
# run.c:754:     return next;
	jmp	.L730	#
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
	movq	%rax, 24(%rsp)	# tmp99, D.9435
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
	movq	24(%rsp), %rdx	# D.9435, tmp101
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp101
	jne	.L744	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L744:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE95:
	.size	time_in_ms, .-time_in_ms
	.section	.rodata.str1.1
.LC51:
	.string	""
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC52:
	.string	"something is wrong, expected at least 1 prompt token\n"
	.section	.rodata.str1.1
.LC54:
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
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp232
	movq	%rax, 88(%rsp)	# tmp232, D.9479
	xorl	%eax, %eax	# tmp232
# run.c:772:     if (prompt == NULL) { prompt = empty_prompt; }
	testq	%rcx, %rcx	# prompt
	leaq	.LC51(%rip), %rax	#, tmp213
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
	jle	.L802	#,
# run.c:786:     int token = prompt_tokens[0]; // kick off with the first token in the prompt
	movq	32(%rsp), %rcx	# %sfp, prompt_tokens
	movl	(%rcx), %ebp	# *prompt_tokens_36, token
# run.c:788:     while (pos < steps) {
	testl	%r12d, %r12d	# steps
	jle	.L748	#,
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	subl	$1, %eax	#, _149
# run.c:784:     long start = 0;  // used to time our code, only initialized after first iteration
	movq	$0, (%rsp)	#, %sfp
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	xorl	%ebx, %ebx	# ivtmp.1247
	movl	%eax, 20(%rsp)	# _149, %sfp
	movslq	%r12d, %rax	# steps, _137
	movq	%rax, 24(%rsp)	# _137, %sfp
	jmp	.L770	#
	.p2align 4,,10
	.p2align 3
.L805:
# run.c:796:             next = prompt_tokens[pos + 1];
	movq	32(%rsp), %rax	# %sfp, prompt_tokens
	movl	4(%rax,%rbx,4), %r15d	# MEM[(int *)prompt_tokens_36 + 4B + ivtmp.1247_82 * 4], i
.L750:
# run.c:804:         if (next == 1) { break; }
	cmpl	$1, %r15d	#, i
	je	.L769	#,
.L806:
# run.c:460:     char *piece = t->vocab[token];
	movslq	%r15d, %rax	# i, i
	salq	$3, %rax	#, _158
.L753:
# run.c:460:     char *piece = t->vocab[token];
	movq	(%r14), %rdx	# tokenizer_37(D)->vocab, tokenizer_37(D)->vocab
	movq	(%rdx,%rax), %r13	# *_104, piece
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %ebp	#, token
	je	.L803	#,
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	leaq	64(%rsp), %rbp	#, tmp212
	xorl	%eax, %eax	#
	leaq	.LC45(%rip), %rsi	#,
	movq	%r13, %rdi	# piece,
	movq	%rbp, %rdx	# tmp212,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp230
	je	.L763	#,
# run.c:475:     if (piece == NULL) { return; }
	testq	%r13, %r13	# piece
	jne	.L761	#,
.L764:
# run.c:809:         fflush(stdout);
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush@PLT	#
# run.c:813:         if (start == 0) { start = time_in_ms(); }
	cmpq	$0, (%rsp)	#, %sfp
	je	.L804	#,
# run.c:788:     while (pos < steps) {
	movq	24(%rsp), %rcx	# %sfp, _137
	leaq	1(%rbx), %rax	#, ivtmp.1247
	cmpq	%rcx, %rax	# _137, ivtmp.1247
	je	.L769	#,
.L768:
# run.c:772:     if (prompt == NULL) { prompt = empty_prompt; }
	movq	%rax, %rbx	# ivtmp.1247, ivtmp.1247
	movl	%r15d, %ebp	# i, token
.L770:
# run.c:791:         float* logits = forward(transformer, token, pos);
	movq	8(%rsp), %rdi	# %sfp,
	movl	%ebp, %esi	# token,
	movl	%ebx, %edx	# pos,
	movl	%ebx, %r12d	# ivtmp.1247, pos
	call	forward	#
	movq	%rax, %rsi	# tmp226, logits
# run.c:794:         if (pos < num_prompt_tokens - 1) {
	cmpl	%ebx, 20(%rsp)	# ivtmp.1247, %sfp
	jg	.L805	#,
# run.c:735:     if (sampler->temperature == 0.0f) {
	movq	40(%rsp), %rax	# %sfp, sampler
	pxor	%xmm2, %xmm2	# tmp255
	ucomiss	16(%rax), %xmm2	# sampler_46(D)->temperature, tmp255
	jp	.L751	#,
	jne	.L751	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%rax), %eax	# sampler_46(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	movss	(%rsi), %xmm0	# *logits_45, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %eax	#, _76
	jle	.L775	#,
	movl	$1, %edx	#, ivtmp.1240
# run.c:633:     int max_i = 0;
	xorl	%r15d, %r15d	# i
	.p2align 4,,10
	.p2align 3
.L756:
# run.c:636:         if (probabilities[i] > max_p) {
	movss	(%rsi,%rdx,4), %xmm1	# MEM[(float *)logits_45 + ivtmp.1240_148 * 4], _141
# run.c:636:         if (probabilities[i] > max_p) {
	comiss	%xmm0, %xmm1	# max_p, _141
# run.c:638:             max_p = probabilities[i];
	maxss	%xmm0, %xmm1	# max_p, _141
	cmova	%edx, %r15d	# ivtmp.1240,, i
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rdx	#, ivtmp.1240
# run.c:638:             max_p = probabilities[i];
	movaps	%xmm1, %xmm0	# _141, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpq	%rdx, %rax	# ivtmp.1240, _81
	jne	.L756	#,
# run.c:804:         if (next == 1) { break; }
	cmpl	$1, %r15d	#, i
	jne	.L806	#,
	.p2align 4,,10
	.p2align 3
.L769:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
# run.c:818:     if (pos > 1) {
	testl	%ebx, %ebx	# ivtmp.1247
	je	.L771	#,
# run.c:763:     clock_gettime(CLOCK_REALTIME, &time);
	leaq	64(%rsp), %rsi	#, tmp193
	xorl	%edi, %edi	#
	call	clock_gettime@PLT	#
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	movq	72(%rsp), %rsi	# MEM[(struct timespec *)_84].tv_nsec, MEM[(struct timespec *)_84].tv_nsec
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	pxor	%xmm0, %xmm0	# tmp202
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	movabsq	$4835703278458516699, %rax	#, tmp234
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	pxor	%xmm1, %xmm1	# tmp204
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	cvtsi2sdl	%r12d, %xmm0	# pos, tmp202
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	imulq	%rsi	# MEM[(struct timespec *)_84].tv_nsec
	sarq	$63, %rsi	#, tmp201
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	movq	(%rsp), %rax	# %sfp, start
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	imulq	$1000, 64(%rsp), %rcx	#, MEM[(struct timespec *)_84].tv_sec, tmp194
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	sarq	$18, %rdx	#, tmp200
	subq	%rsi, %rdx	# tmp201, tmp196
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	$2, %esi	#,
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	addq	%rdx, %rcx	# tmp196, _67
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	leaq	.LC54(%rip), %rdx	#, tmp209
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	subq	%rax, %rcx	# start, tmp203
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	$1, %eax	#,
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	cvtsi2sdq	%rcx, %xmm1	# tmp203, tmp204
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	divsd	%xmm1, %xmm0	# tmp204, tmp205
# run.c:820:         fprintf(stderr, "\n\nachieved tok/s: %f\n", (pos-1) / (double)(end-start)*1000);
	mulsd	.LC53(%rip), %xmm0	#, tmp206
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	__fprintf_chk@PLT	#
.L771:
# run.c:823:     free(prompt_tokens);
	movq	88(%rsp), %rax	# D.9479, tmp235
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp235
	jne	.L807	#,
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
.L803:
	.cfi_restore_state
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpb	$32, 0(%r13)	#, *piece_105
	jne	.L801	#,
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	addq	$1, %r13	#, piece
.L801:
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	leaq	64(%rsp), %rbp	#, tmp212
	xorl	%eax, %eax	#
	leaq	.LC45(%rip), %rsi	#,
	movq	%r13, %rdi	# piece,
	movq	%rbp, %rdx	# tmp212,
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp228
	jne	.L761	#,
.L763:
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	64(%rsp), %eax	# MEM[(unsigned char *)_84], MEM[(unsigned char *)_84]
	addl	%eax, %eax	# tmp171
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%r14,%rax), %r13	#, piece
.L761:
# run.c:476:     if (piece[0] == '\0') { return; }
	movzbl	0(%r13), %edx	# *piece_126, _91
# run.c:476:     if (piece[0] == '\0') { return; }
	testb	%dl, %dl	# _91
	movb	%dl, 19(%rsp)	# _91, %sfp
	je	.L764	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%r13)	#, MEM[(char *)piece_126 + 1B]
	jne	.L766	#,
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	call	__ctype_b_loc@PLT	#
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movzbl	19(%rsp), %edx	# %sfp,
	movq	(%rax), %rax	# *_94, *_94
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	testw	$24576, (%rax,%rdx,2)	#, *_98
	je	.L764	#,
.L766:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%r13, %rdx	# piece,
	leaq	.LC46(%rip), %rsi	#,
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
	jmp	.L764	#
	.p2align 4,,10
	.p2align 3
.L804:
# run.c:763:     clock_gettime(CLOCK_REALTIME, &time);
	movq	%rbp, %rsi	# tmp212,
	xorl	%edi, %edi	#
	call	clock_gettime@PLT	#
# run.c:764:     return time.tv_sec * 1000 + time.tv_nsec / 1000000;
	movq	72(%rsp), %rsi	# MEM[(struct timespec *)_84].tv_nsec, MEM[(struct timespec *)_84].tv_nsec
	movabsq	$4835703278458516699, %rax	#, tmp233
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
	leaq	1(%rbx), %rax	#, ivtmp.1247
	cmpq	%rax, 24(%rsp)	# ivtmp.1247, %sfp
	jne	.L768	#,
	jmp	.L769	#
	.p2align 4,,10
	.p2align 3
.L751:
	movq	40(%rsp), %rdi	# %sfp,
	call	sample.part.0	#
	movl	%eax, %r15d	# tmp227, i
	jmp	.L750	#
	.p2align 4,,10
	.p2align 3
.L775:
# run.c:635:     for (int i = 1; i < n; i++) {
	xorl	%eax, %eax	# _158
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	xorl	%r15d, %r15d	# i
	jmp	.L753	#
.L748:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
	jmp	.L771	#
.L802:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC52(%rip), %rdi	#, tmp162
	call	fwrite@PLT	#
# run.c:780:         exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L807:
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
	leaq	.LC46(%rip), %rsi	#, tmp92
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
	je	.L808	#,
# run.c:830:         size_t len = strlen(buffer);
	movq	%rbp, %rdi	# buffer,
	call	strlen@PLT	#
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	testq	%rax, %rax	# tmp96
	je	.L808	#,
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	leaq	-1(%rbp,%rax), %rax	#, _4
# run.c:831:         if (len > 0 && buffer[len - 1] == '\n') {
	cmpb	$10, (%rax)	#, *_4
	je	.L817	#,
.L808:
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
.L817:
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
.LC55:
	.string	"Enter system prompt (optional): "
	.section	.rodata.str1.1
.LC56:
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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%r9d, %r15d	# tmp191, steps
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14	# tmp188, sampler
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r8, %r13	# tmp190, cli_system_prompt
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %rbx	# tmp189, cli_user_prompt
	subq	$2360, %rsp	#,
	.cfi_def_cfa_offset 2416
# run.c:844:           char *cli_user_prompt, char *cli_system_prompt, int steps) {
	movq	%rdi, 24(%rsp)	# tmp186, %sfp
# run.c:852:     int* prompt_tokens = (int*)malloc(1152 * sizeof(int));
	movl	$4608, %edi	#,
# run.c:844:           char *cli_user_prompt, char *cli_system_prompt, int steps) {
	movq	%rsi, 40(%rsp)	# tmp187, %sfp
	movl	%r9d, 36(%rsp)	# steps, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp199
	movq	%rax, 2344(%rsp)	# tmp199, D.9525
	xorl	%eax, %eax	# tmp199
# run.c:851:     int num_prompt_tokens = 0;
	movl	$0, 108(%rsp)	#, num_prompt_tokens
# run.c:852:     int* prompt_tokens = (int*)malloc(1152 * sizeof(int));
	call	malloc@PLT	#
	movq	%rax, 8(%rsp)	# tmp192, %sfp
# run.c:861:     while (pos < steps) {
	testl	%r15d, %r15d	# steps
	jle	.L848	#,
# run.c:870:                     read_stdin("Enter system prompt (optional): ", system_prompt, sizeof(system_prompt));
	leaq	160(%rsp), %rbp	#, tmp177
	movl	$512, %edx	#,
# run.c:868:                 if (cli_system_prompt == NULL) {
	testq	%r13, %r13	# cli_system_prompt
	je	.L878	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%r13, %rsi	# cli_system_prompt,
	movq	%rbp, %rdi	# tmp177,
	call	__strcpy_chk@PLT	#
.L822:
	leaq	672(%rsp), %rax	#, tmp178
	movl	$512, %edx	#,
	movq	%rax, 48(%rsp)	# tmp178, %sfp
# run.c:877:             if (pos == 0 && cli_user_prompt != NULL) {
	testq	%rbx, %rbx	# cli_user_prompt
	je	.L823	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%rbx, %rsi	# cli_user_prompt,
	movq	%rax, %rdi	# tmp178,
	call	__strcpy_chk@PLT	#
.L824:
# run.c:885:             if (pos == 0 && system_prompt[0] != '\0') {
	cmpb	$0, 160(%rsp)	#, system_prompt[0]
	jne	.L879	#,
	leaq	112(%rsp), %rax	#, tmp180
	xorl	%ebx, %ebx	# pos
	movq	%rax, 72(%rsp)	# tmp180, %sfp
	leaq	1184(%rsp), %rax	#, tmp181
	movq	%rax, 16(%rsp)	# tmp181, %sfp
	leaq	108(%rsp), %rax	#, tmp179
	movq	%rax, 64(%rsp)	# tmp179, %sfp
	leaq	.LC57(%rip), %rax	#, tmp176
	movq	%rax, 56(%rsp)	# tmp176, %sfp
.L825:
# run.c:889:                 char user_template[] = "[INST] %s [/INST]";
	movl	$93, %eax	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	48(%rsp), %r8	# %sfp,
	movq	72(%rsp), %rcx	# %sfp,
	movl	$1152, %edx	#,
# run.c:889:                 char user_template[] = "[INST] %s [/INST]";
	movdqa	.LC60(%rip), %xmm0	#, tmp185
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	16(%rsp), %rdi	# %sfp,
	movl	$2, %esi	#,
# run.c:889:                 char user_template[] = "[INST] %s [/INST]";
	movw	%ax, 128(%rsp)	#, MEM[(char[18] *)_87]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	xorl	%eax, %eax	#
# run.c:889:                 char user_template[] = "[INST] %s [/INST]";
	movaps	%xmm0, 112(%rsp)	# tmp185, MEM[(char[18] *)_87]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	call	__sprintf_chk@PLT	#
.L826:
# run.c:893:             encode(tokenizer, rendered_prompt, 1, 0, prompt_tokens, &num_prompt_tokens);
	movq	64(%rsp), %r9	# %sfp,
	movq	8(%rsp), %r8	# %sfp,
	xorl	%ecx, %ecx	#
# run.c:900:         if (user_idx < num_prompt_tokens) {
	xorl	%ebp, %ebp	# user_idx
# run.c:893:             encode(tokenizer, rendered_prompt, 1, 0, prompt_tokens, &num_prompt_tokens);
	movq	16(%rsp), %rsi	# %sfp,
	movq	40(%rsp), %rdi	# %sfp,
	movl	$1, %edx	#,
	call	encode	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	56(%rsp), %rsi	# %sfp,
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
# run.c:900:         if (user_idx < num_prompt_tokens) {
	movl	108(%rsp), %r13d	# num_prompt_tokens, pretmp_149
.L850:
# run.c:900:         if (user_idx < num_prompt_tokens) {
	cmpl	%r13d, %ebp	# pretmp_149, user_idx
	jge	.L827	#,
# run.c:902:             token = prompt_tokens[user_idx++];
	movq	8(%rsp), %rcx	# %sfp, prompt_tokens
# run.c:902:             token = prompt_tokens[user_idx++];
	movslq	%ebp, %rax	# user_idx, user_idx
	addl	$1, %ebp	#, user_idx
# run.c:902:             token = prompt_tokens[user_idx++];
	movl	(%rcx,%rax,4), %r12d	# *_8, next
.L827:
# run.c:911:         float* logits = forward(transformer, token, pos);
	movq	24(%rsp), %rdi	# %sfp,
	movl	%ebx, %edx	# pos,
	movl	%r12d, %esi	# next,
# run.c:913:         pos++;
	addl	$1, %ebx	#, pos
# run.c:911:         float* logits = forward(transformer, token, pos);
	call	forward	#
# run.c:735:     if (sampler->temperature == 0.0f) {
	pxor	%xmm2, %xmm2	# tmp230
	ucomiss	16(%r14), %xmm2	# sampler_54(D)->temperature, tmp230
# run.c:911:         float* logits = forward(transformer, token, pos);
	movq	%rax, %rsi	# tmp193, logits
# run.c:735:     if (sampler->temperature == 0.0f) {
	jp	.L828	#,
	jne	.L828	#,
# run.c:737:         next = sample_argmax(logits, sampler->vocab_size);
	movl	(%r14), %eax	# sampler_54(D)->vocab_size,
# run.c:634:     float max_p = probabilities[0];
	movss	(%rsi), %xmm0	# *logits_53, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	movl	$1, %edx	#, ivtmp.1265
# run.c:633:     int max_i = 0;
	xorl	%r15d, %r15d	# i
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpl	$1, %eax	#, _73
	jle	.L880	#,
	.p2align 4,,10
	.p2align 3
.L835:
# run.c:636:         if (probabilities[i] > max_p) {
	movss	(%rsi,%rdx,4), %xmm1	# MEM[(float *)logits_53 + ivtmp.1265_168 * 4], _157
# run.c:636:         if (probabilities[i] > max_p) {
	comiss	%xmm0, %xmm1	# max_p, _157
# run.c:638:             max_p = probabilities[i];
	maxss	%xmm0, %xmm1	# max_p, _157
	cmova	%edx, %r15d	# ivtmp.1265,, i
# run.c:635:     for (int i = 1; i < n; i++) {
	addq	$1, %rdx	#, ivtmp.1265
# run.c:638:             max_p = probabilities[i];
	movaps	%xmm1, %xmm0	# _157, max_p
# run.c:635:     for (int i = 1; i < n; i++) {
	cmpq	%rdx, %rax	# ivtmp.1265, _78
	jne	.L835	#,
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r13d, %ebp	# pretmp_149, user_idx
	jl	.L837	#,
.L882:
# run.c:460:     char *piece = t->vocab[token];
	movslq	%r15d, %rax	# i, i
	salq	$3, %rax	#, _161
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	$2, %r15d	#, i
	jne	.L831	#,
.L838:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
# run.c:912:         next = sample(sampler, logits);
	movl	$2, %r15d	#, i
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	putchar@PLT	#
.L832:
# run.c:861:     while (pos < steps) {
	cmpl	%ebx, 36(%rsp)	# pos, %sfp
	je	.L848	#,
.L883:
# run.c:864:         if (user_turn) {
	cmpl	$2, %r12d	#, next
	jne	.L881	#,
# run.c:882:                 read_stdin("User: ", user_prompt, sizeof(user_prompt));
	movq	48(%rsp), %rsi	# %sfp,
	movl	$512, %edx	#,
	leaq	.LC56(%rip), %rdi	#, tmp140
	movl	%r15d, %r12d	# i, next
	call	read_stdin	#
	jmp	.L825	#
	.p2align 4,,10
	.p2align 3
.L828:
	movq	%r14, %rdi	# sampler,
	call	sample.part.0	#
	movl	%eax, %r15d	# tmp194, i
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r13d, %ebp	# pretmp_149, user_idx
	jge	.L882	#,
.L837:
# run.c:921:         if (next == 2) { printf("\n"); }
	cmpl	$2, %r15d	#, i
	je	.L838	#,
# run.c:861:     while (pos < steps) {
	cmpl	%ebx, 36(%rsp)	# pos, %sfp
	jne	.L883	#,
	.p2align 4,,10
	.p2align 3
.L848:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
	call	putchar@PLT	#
# run.c:924:     free(prompt_tokens);
	movq	2344(%rsp), %rax	# D.9525, tmp200
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp200
	jne	.L884	#,
	movq	8(%rsp), %rdi	# %sfp,
# run.c:925: }
	addq	$2360, %rsp	#,
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
# run.c:924:     free(prompt_tokens);
	jmp	free@PLT	#
	.p2align 4,,10
	.p2align 3
.L881:
	.cfi_restore_state
# run.c:864:         if (user_turn) {
	movl	%r15d, %r12d	# i, next
	jmp	.L850	#
	.p2align 4,,10
	.p2align 3
.L880:
# run.c:915:         if (user_idx >= num_prompt_tokens && next != 2) {
	cmpl	%r13d, %ebp	# pretmp_149, user_idx
	jl	.L832	#,
	xorl	%eax, %eax	# _161
	.p2align 4,,10
	.p2align 3
.L831:
# run.c:460:     char *piece = t->vocab[token];
	movq	40(%rsp), %rcx	# %sfp, tokenizer
	movq	(%rcx), %rdx	# tokenizer_46(D)->vocab, tokenizer_46(D)->vocab
	movq	(%rdx,%rax), %rcx	# *_101, piece
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpl	$1, %r12d	#, next
	je	.L885	#,
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	xorl	%eax, %eax	#
	leaq	107(%rsp), %rdx	#, tmp167
	movq	%rcx, %rdi	# piece,
	movq	%rcx, 80(%rsp)	# piece, %sfp
	leaq	.LC45(%rip), %rsi	#, tmp168
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	cmpl	$1, %eax	#, tmp197
	je	.L843	#,
# run.c:475:     if (piece == NULL) { return; }
	movq	80(%rsp), %rcx	# %sfp, piece
	testq	%rcx, %rcx	# piece
	jne	.L842	#,
.L845:
# run.c:919:             fflush(stdout);
	movq	stdout(%rip), %rdi	# stdout,
	call	fflush@PLT	#
	jmp	.L832	#
	.p2align 4,,10
	.p2align 3
.L885:
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	cmpb	$32, (%rcx)	#, *piece_102
	je	.L886	#,
.L876:
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	movq	%rcx, %rdi	# piece,
	xorl	%eax, %eax	#
	leaq	107(%rsp), %rdx	#, tmp159
	movq	%rcx, 80(%rsp)	# piece, %sfp
	leaq	.LC45(%rip), %rsi	#, tmp160
	call	__isoc99_sscanf@PLT	#
# run.c:466:     if (sscanf(piece, "<0x%02hhX>", &byte_val) == 1) {
	movq	80(%rsp), %rcx	# %sfp, piece
	cmpl	$1, %eax	#, tmp195
	jne	.L842	#,
.L843:
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movzbl	107(%rsp), %eax	# byte_val, byte_val
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	movq	40(%rsp), %rdi	# %sfp, tokenizer
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	addl	%eax, %eax	# tmp163
	cltq
# run.c:467:         piece = (char*)t->byte_pieces + byte_val * 2;
	leaq	32(%rdi,%rax), %rcx	#, piece
.L842:
# run.c:476:     if (piece[0] == '\0') { return; }
	movzbl	(%rcx), %edx	# *piece_135, _88
# run.c:476:     if (piece[0] == '\0') { return; }
	testb	%dl, %dl	# _88
	movb	%dl, 80(%rsp)	# _88, %sfp
	je	.L845	#,
# run.c:477:     if (piece[1] == '\0') {
	cmpb	$0, 1(%rcx)	#, MEM[(char *)piece_135 + 1B]
	jne	.L847	#,
	movq	%rcx, 88(%rsp)	# piece, %sfp
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	call	__ctype_b_loc@PLT	#
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movzbl	80(%rsp), %edx	# %sfp,
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movq	88(%rsp), %rcx	# %sfp, piece
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	movq	(%rax), %rax	# *_91, *_91
# run.c:479:         if (!(isprint(byte_val) || isspace(byte_val))) {
	testw	$24576, (%rax,%rdx,2)	#, *_95
	je	.L845	#,
.L847:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%rcx, %rdx	# piece,
	leaq	.LC46(%rip), %rsi	#, tmp173
	movl	$2, %edi	#,
	xorl	%eax, %eax	#
	call	__printf_chk@PLT	#
	jmp	.L845	#
	.p2align 4,,10
	.p2align 3
.L879:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movq	48(%rsp), %r9	# %sfp,
	leaq	112(%rsp), %rcx	#, tmp180
	movq	%rbp, %r8	# tmp177,
# run.c:885:             if (pos == 0 && system_prompt[0] != '\0') {
	xorl	%ebx, %ebx	# pos
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$1152, %edx	#,
	movl	$2, %esi	#,
	movq	%rcx, 72(%rsp)	# tmp180, %sfp
# run.c:886:                 char system_template[] = "[INST] <<SYS>>\n%s\n<</SYS>>\n\n%s [/INST]";
	movdqa	.LC58(%rip), %xmm0	#, tmp183
	movabsq	$26269889606528859, %rax	#, tmp220
	movaps	%xmm0, 112(%rsp)	# tmp183, MEM[(char[39] *)_87]
	movdqa	.LC59(%rip), %xmm0	#, tmp184
	movaps	%xmm0, 128(%rsp)	# tmp184, MEM[(char[39] *)_87]
	movq	%rax, 143(%rsp)	# tmp220, MEM[(char[39] *)_87]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	1184(%rsp), %rax	#, tmp181
	movq	%rax, 16(%rsp)	# tmp181, %sfp
	movq	%rax, %rdi	# tmp181,
	xorl	%eax, %eax	#
	call	__sprintf_chk@PLT	#
	leaq	108(%rsp), %rax	#, tmp179
	movq	%rax, 64(%rsp)	# tmp179, %sfp
	leaq	.LC57(%rip), %rax	#, tmp176
	movq	%rax, 56(%rsp)	# tmp176, %sfp
# run.c:885:             if (pos == 0 && system_prompt[0] != '\0') {
	jmp	.L826	#
.L886:
# run.c:462:     if (prev_token == 1 && piece[0] == ' ') { piece++; }
	addq	$1, %rcx	#, piece
	jmp	.L876	#
	.p2align 4,,10
	.p2align 3
.L878:
# run.c:870:                     read_stdin("Enter system prompt (optional): ", system_prompt, sizeof(system_prompt));
	movq	%rbp, %rsi	# tmp177,
	leaq	.LC55(%rip), %rdi	#, tmp136
	call	read_stdin	#
	jmp	.L822	#
.L884:
# run.c:924:     free(prompt_tokens);
	call	__stack_chk_fail@PLT	#
.L823:
# run.c:882:                 read_stdin("User: ", user_prompt, sizeof(user_prompt));
	movq	%rax, %rsi	# tmp178,
	leaq	.LC56(%rip), %rdi	#, tmp142
	call	read_stdin	#
	jmp	.L824	#
	.cfi_endproc
.LFE98:
	.size	chat, .-chat
	.section	.rodata.str1.8
	.align 8
.LC61:
	.string	"Usage:   run <checkpoint> [options]\n"
	.align 8
.LC62:
	.string	"Example: run model.bin -n 256 -i \"Once upon a time\"\n"
	.section	.rodata.str1.1
.LC63:
	.string	"Options:\n"
	.section	.rodata.str1.8
	.align 8
.LC64:
	.string	"  -t <float>  temperature in [0,inf], default 1.0\n"
	.align 8
.LC65:
	.string	"  -p <float>  p value in top-p (nucleus) sampling in [0,1] default 0.9\n"
	.align 8
.LC66:
	.string	"  -s <int>    random seed, default time(NULL)\n"
	.align 8
.LC67:
	.string	"  -n <int>    number of steps to run for, default 256. 0 = max_seq_len\n"
	.section	.rodata.str1.1
.LC68:
	.string	"  -i <string> input prompt\n"
	.section	.rodata.str1.8
	.align 8
.LC69:
	.string	"  -z <string> optional path to custom tokenizer\n"
	.align 8
.LC70:
	.string	"  -m <string> mode: generate|chat, default: generate\n"
	.align 8
.LC71:
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
	leaq	.LC61(%rip), %rdi	#, tmp94
# run.c:932: void error_usage() {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	call	fwrite@PLT	#
	movl	$52, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC62(%rip), %rdi	#, tmp96
	call	fwrite@PLT	#
	movl	$9, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC63(%rip), %rdi	#, tmp98
	call	fwrite@PLT	#
	movl	$50, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC64(%rip), %rdi	#, tmp100
	call	fwrite@PLT	#
	movl	$71, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC65(%rip), %rdi	#, tmp102
	call	fwrite@PLT	#
	movl	$46, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC66(%rip), %rdi	#, tmp104
	call	fwrite@PLT	#
	movl	$71, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC67(%rip), %rdi	#, tmp106
	call	fwrite@PLT	#
	movl	$27, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC68(%rip), %rdi	#, tmp108
	call	fwrite@PLT	#
	movl	$48, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC69(%rip), %rdi	#, tmp110
	call	fwrite@PLT	#
	movl	$53, %edx	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$1, %esi	#,
	leaq	.LC70(%rip), %rdi	#, tmp112
	call	fwrite@PLT	#
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC71(%rip), %rdi	#, tmp114
	call	fwrite@PLT	#
# run.c:944:     exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE99:
	.size	error_usage, .-error_usage
	.section	.rodata.str1.1
.LC72:
	.string	"generate"
.LC74:
	.string	"tokenizer.bin"
.LC75:
	.string	"chat"
.LC76:
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
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp237
	movq	%rax, 920(%rsp)	# tmp237, D.9562
	xorl	%eax, %eax	# tmp237
# run.c:961:     if (argc >= 2) { checkpoint_path = argv[1]; } else { error_usage(); }
	cmpl	$1, %edi	#, argc
	jle	.L926	#,
# run.c:961:     if (argc >= 2) { checkpoint_path = argv[1]; } else { error_usage(); }
	movq	8(%rsi), %rax	# MEM[(char * *)argv_84(D) + 8B], checkpoint_path
	movq	%rax, 64(%rsp)	# checkpoint_path, %sfp
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpl	$2, %edi	#, argc
	je	.L916	#,
# run.c:964:         if (i + 1 >= argc) { error_usage(); } // must have arg after flag
	cmpl	$3, %edi	#, argc
	je	.L926	#,
	leal	-4(%rdi), %eax	#, tmp135
	leal	-3(%rdi), %ebp	#, tmp140
	movq	%rsi, %r15	# argv, ivtmp.1289
# run.c:954:     int steps = 256;            // number of steps to run for
	movl	$256, %r13d	#, steps
	shrl	%eax	#
# run.c:953:     float topp = 0.9f;          // top-p in nucleus sampling. 1.0 = off. 0.9 works well, but slower
	movss	.LC73(%rip), %xmm4	#, topp
	shrl	%ebp	#
# run.c:952:     float temperature = 1.0f;   // 0.0 = greedy deterministic. 1.0 = original. don't set higher
	movss	.LC7(%rip), %xmm5	#, tmp186
	salq	$4, %rax	#, tmp138
	salq	$4, %rbp	#, tmp143
# run.c:958:     char *system_prompt = NULL; // the (optional) system prompt to use in chat mode
	movq	$0, 48(%rsp)	#, %sfp
	leaq	.L897(%rip), %rbx	#, tmp208
	leaq	16(%rsi,%rax), %r12	#, _158
# run.c:957:     char *mode = "generate";    // generate|chat
	leaq	.LC72(%rip), %rax	#, tmp190
	addq	%rsi, %rbp	# ivtmp.1289, _165
# run.c:956:     unsigned long long rng_seed = 0; // seed rng with time by default
	movq	$0, 16(%rsp)	#, %sfp
# run.c:957:     char *mode = "generate";    // generate|chat
	movq	%rax, 56(%rsp)	# tmp190, %sfp
	movq	%rax, 24(%rsp)	# tmp190, %sfp
# run.c:951:     char *tokenizer_path = "tokenizer.bin";
	leaq	.LC74(%rip), %rax	#, tokenizer_path
# run.c:955:     char *prompt = NULL;        // prompt string
	movq	$0, 40(%rsp)	#, %sfp
# run.c:951:     char *tokenizer_path = "tokenizer.bin";
	movq	%rax, 32(%rsp)	# tokenizer_path, %sfp
# run.c:953:     float topp = 0.9f;          // top-p in nucleus sampling. 1.0 = off. 0.9 works well, but slower
	movss	%xmm4, 72(%rsp)	# topp, %sfp
	movss	%xmm4, 8(%rsp)	# topp, %sfp
# run.c:952:     float temperature = 1.0f;   // 0.0 = greedy deterministic. 1.0 = original. don't set higher
	movss	%xmm5, 76(%rsp)	# tmp186, %sfp
	movss	%xmm5, 12(%rsp)	# tmp186, %sfp
	.p2align 4,,10
	.p2align 3
.L894:
# run.c:965:         if (argv[i][0] != '-') { error_usage(); } // must start with dash
	movq	16(%r15), %r14	# MEM[(char * *)_141 + 16B], _5
# run.c:965:         if (argv[i][0] != '-') { error_usage(); } // must start with dash
	cmpb	$45, (%r14)	#, *_5
	jne	.L926	#,
# run.c:966:         if (strlen(argv[i]) != 2) { error_usage(); } // must be -x (one dash, one letter)
	movq	%r14, %rdi	# _5,
	call	strlen@PLT	#
# run.c:966:         if (strlen(argv[i]) != 2) { error_usage(); } // must be -x (one dash, one letter)
	cmpq	$2, %rax	#, tmp211
	jne	.L926	#,
	movzbl	1(%r14), %eax	# MEM[(char *)_5 + 1B], MEM[(char *)_5 + 1B]
	subl	$105, %eax	#, tmp147
	cmpb	$17, %al	#, tmp147
	ja	.L926	#,
	movzbl	%al, %eax	# tmp147, tmp149
	movslq	(%rbx,%rax,4), %rax	#, tmp152
	addq	%rbx, %rax	# tmp208, tmp153
	notrack jmp	*%rax	# tmp153
	.section	.rodata
	.align 4
	.align 4
.L897:
	.long	.L904-.L897
	.long	.L926-.L897
	.long	.L926-.L897
	.long	.L926-.L897
	.long	.L903-.L897
	.long	.L902-.L897
	.long	.L926-.L897
	.long	.L901-.L897
	.long	.L926-.L897
	.long	.L926-.L897
	.long	.L900-.L897
	.long	.L899-.L897
	.long	.L926-.L897
	.long	.L926-.L897
	.long	.L926-.L897
	.long	.L926-.L897
	.long	.L898-.L897
	.long	.L896-.L897
	.section	.text.startup
	.p2align 4,,10
	.p2align 3
.L896:
# run.c:973:         else if (argv[i][1] == 'z') { tokenizer_path = argv[i + 1]; }
	movq	24(%r15), %rax	# MEM[(char * *)_141 + 24B], tokenizer_path
	movq	%rax, 32(%rsp)	# tokenizer_path, %sfp
	.p2align 4,,10
	.p2align 3
.L905:
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpq	%rbp, %r15	# _165, ivtmp.1289
	je	.L927	#,
.L906:
# run.c:964:         if (i + 1 >= argc) { error_usage(); } // must have arg after flag
	addq	$16, %r15	#, ivtmp.1289
	cmpq	%r12, %r15	# _158, ivtmp.1289
	jne	.L894	#,
.L926:
# run.c:1005:         error_usage();
	xorl	%eax, %eax	#
	call	error_usage	#
	.p2align 4,,10
	.p2align 3
.L898:
# run.c:975:         else if (argv[i][1] == 'y') { system_prompt = argv[i + 1]; }
	movq	24(%r15), %rax	# MEM[(char * *)_141 + 24B], system_prompt
	movq	%rax, 48(%rsp)	# system_prompt, %sfp
# run.c:962:     for (int i = 2; i < argc; i+=2) {
	cmpq	%rbp, %r15	# _165, ivtmp.1289
	jne	.L906	#,
	.p2align 4,,10
	.p2align 3
.L927:
# run.c:980:     if (rng_seed <= 0) rng_seed = (unsigned int)time(NULL);
	cmpq	$0, 16(%rsp)	#, %sfp
	je	.L891	#,
.L907:
# run.c:981:     if (temperature < 0.0) temperature = 0.0;
	pxor	%xmm0, %xmm0	# tmp159
	comiss	12(%rsp), %xmm0	# %sfp, tmp159
	jbe	.L908	#,
# run.c:981:     if (temperature < 0.0) temperature = 0.0;
	movss	%xmm0, 12(%rsp)	#, %sfp
.L908:
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	movss	8(%rsp), %xmm6	# %sfp, topp
	pxor	%xmm0, %xmm0	# tmp160
	comiss	%xmm6, %xmm0	# topp, tmp160
	ja	.L919	#,
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	comiss	76(%rsp), %xmm6	# %sfp, topp
	movaps	%xmm6, %xmm7	# topp, topp
	jbe	.L909	#,
.L919:
# run.c:982:     if (topp < 0.0 || 1.0 < topp) topp = 0.9;
	movss	72(%rsp), %xmm7	# %sfp, topp
	movss	%xmm7, 8(%rsp)	# topp, %sfp
.L909:
	movss	12(%rsp), %xmm3	# %sfp, _151
# run.c:987:     build_transformer(&transformer, checkpoint_path);
	leaq	112(%rsp), %r12	#, tmp188
	movq	64(%rsp), %rsi	# %sfp,
	movq	%r12, %rdi	# tmp188,
	unpcklps	%xmm7, %xmm3	# topp, _151
	movq	%xmm3, %rbx	# _151, _151
	call	build_transformer	#
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	testl	%r13d, %r13d	# steps
	jg	.L928	#,
.L910:
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	movl	136(%rsp), %r13d	# transformer.config.seq_len, steps
.L911:
# run.c:992:     build_tokenizer(&tokenizer, tokenizer_path, transformer.config.vocab_size);
	movq	32(%rsp), %rsi	# %sfp,
	movl	132(%rsp), %edx	# transformer.config.vocab_size,
	leaq	368(%rsp), %rbp	#, tmp189
	movq	%rbp, %rdi	# tmp189,
	call	build_tokenizer	#
# run.c:712:     sampler->rng_state = rng_seed;
	movq	16(%rsp), %rcx	# %sfp, rng_seed
# run.c:710:     sampler->temperature = temperature;
	movq	%rbx, 96(%rsp)	# _151, MEM <vector(2) float> [(float *)&sampler + 16B]
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
	movq	24(%rsp), %rdi	# %sfp,
# run.c:714:     sampler->probindex = malloc(sampler->vocab_size * sizeof(ProbIndex));
	movq	%rax, 88(%rsp)	# tmp217, sampler.probindex
# run.c:999:     if (strcmp(mode, "generate") == 0) {
	call	strcmp@PLT	#
# run.c:999:     if (strcmp(mode, "generate") == 0) {
	testl	%eax, %eax	# tmp218
	je	.L929	#,
# run.c:1001:     } else if (strcmp(mode, "chat") == 0) {
	movq	24(%rsp), %rdi	# %sfp,
	leaq	.LC75(%rip), %rsi	#, tmp175
	call	strcmp@PLT	#
# run.c:1001:     } else if (strcmp(mode, "chat") == 0) {
	testl	%eax, %eax	# tmp219
	jne	.L914	#,
# run.c:1002:         chat(&transformer, &tokenizer, &sampler, prompt, system_prompt, steps);
	movq	48(%rsp), %r8	# %sfp,
	movq	40(%rsp), %rcx	# %sfp,
	movl	%r13d, %r9d	# steps,
	movq	%rbp, %rsi	# tmp189,
	leaq	80(%rsp), %rdx	#, tmp176
	movq	%r12, %rdi	# tmp188,
	call	chat	#
.L913:
# run.c:718:     free(sampler->probindex);
	movq	88(%rsp), %rdi	# sampler.probindex,
	call	free@PLT	#
# run.c:1010:     free_tokenizer(&tokenizer);
	movq	%rbp, %rdi	# tmp189,
	call	free_tokenizer	#
# run.c:1011:     free_transformer(&transformer);
	movq	%r12, %rdi	# tmp188,
	call	free_transformer	#
# run.c:1013: }
	movq	920(%rsp), %rax	# D.9562, tmp238
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp238
	jne	.L930	#,
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
.L899:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	movq	24(%r15), %rdi	# MEM[(char * *)_141 + 24B], MEM[(char * *)_141 + 24B]
	xorl	%esi, %esi	#
	call	strtod@PLT	#
# run.c:968:         if (argv[i][1] == 't') { temperature = atof(argv[i + 1]); }
	pxor	%xmm1, %xmm1	# temperature
	cvtsd2ss	%xmm0, %xmm1	# tmp212, temperature
	movss	%xmm1, 12(%rsp)	# temperature, %sfp
	jmp	.L905	#
	.p2align 4,,10
	.p2align 3
.L900:
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	24(%r15), %rdi	# MEM[(char * *)_141 + 24B], MEM[(char * *)_141 + 24B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
# run.c:970:         else if (argv[i][1] == 's') { rng_seed = atoi(argv[i + 1]); }
	cltq
	movq	%rax, 16(%rsp)	# rng_seed, %sfp
	jmp	.L905	#
	.p2align 4,,10
	.p2align 3
.L901:
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	movq	24(%r15), %rdi	# MEM[(char * *)_141 + 24B], MEM[(char * *)_141 + 24B]
	xorl	%esi, %esi	#
	call	strtod@PLT	#
# run.c:969:         else if (argv[i][1] == 'p') { topp = atof(argv[i + 1]); }
	pxor	%xmm2, %xmm2	# topp
	cvtsd2ss	%xmm0, %xmm2	# tmp213, topp
	movss	%xmm2, 8(%rsp)	# topp, %sfp
	jmp	.L905	#
	.p2align 4,,10
	.p2align 3
.L902:
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	24(%r15), %rdi	# MEM[(char * *)_141 + 24B], MEM[(char * *)_141 + 24B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, %r13d	# tmp215, steps
	jmp	.L905	#
	.p2align 4,,10
	.p2align 3
.L903:
# run.c:974:         else if (argv[i][1] == 'm') { mode = argv[i + 1]; }
	movq	24(%r15), %rax	# MEM[(char * *)_141 + 24B], mode
	movq	%rax, 24(%rsp)	# mode, %sfp
	jmp	.L905	#
	.p2align 4,,10
	.p2align 3
.L904:
# run.c:972:         else if (argv[i][1] == 'i') { prompt = argv[i + 1]; }
	movq	24(%r15), %rax	# MEM[(char * *)_141 + 24B], prompt
	movq	%rax, 40(%rsp)	# prompt, %sfp
	jmp	.L905	#
.L928:
# run.c:988:     if (steps == 0 || steps > transformer.config.seq_len) steps = transformer.config.seq_len; // override to ~max length
	cmpl	136(%rsp), %r13d	# transformer.config.seq_len, steps
	jle	.L911	#,
	jmp	.L910	#
.L929:
# run.c:1000:         generate(&transformer, &tokenizer, &sampler, prompt, steps);
	movq	40(%rsp), %rcx	# %sfp,
	leaq	80(%rsp), %rdx	#, tmp171
	movl	%r13d, %r8d	# steps,
	movq	%rbp, %rsi	# tmp189,
	movq	%r12, %rdi	# tmp188,
	call	generate	#
	jmp	.L913	#
.L916:
# run.c:958:     char *system_prompt = NULL; // the (optional) system prompt to use in chat mode
	xorl	%eax, %eax	#
# run.c:955:     char *prompt = NULL;        // prompt string
	xorl	%edx, %edx	#
# run.c:953:     float topp = 0.9f;          // top-p in nucleus sampling. 1.0 = off. 0.9 works well, but slower
	movss	.LC73(%rip), %xmm3	#, topp
# run.c:952:     float temperature = 1.0f;   // 0.0 = greedy deterministic. 1.0 = original. don't set higher
	movss	.LC7(%rip), %xmm7	#, tmp186
# run.c:958:     char *system_prompt = NULL; // the (optional) system prompt to use in chat mode
	movq	%rax, 48(%rsp)	#, %sfp
# run.c:957:     char *mode = "generate";    // generate|chat
	leaq	.LC72(%rip), %rax	#, tmp190
# run.c:954:     int steps = 256;            // number of steps to run for
	movl	$256, %r13d	#, steps
# run.c:957:     char *mode = "generate";    // generate|chat
	movq	%rax, 56(%rsp)	# tmp190, %sfp
	movq	%rax, 24(%rsp)	# tmp190, %sfp
# run.c:951:     char *tokenizer_path = "tokenizer.bin";
	leaq	.LC74(%rip), %rax	#, tokenizer_path
# run.c:955:     char *prompt = NULL;        // prompt string
	movq	%rdx, 40(%rsp)	#, %sfp
# run.c:951:     char *tokenizer_path = "tokenizer.bin";
	movq	%rax, 32(%rsp)	# tokenizer_path, %sfp
# run.c:953:     float topp = 0.9f;          // top-p in nucleus sampling. 1.0 = off. 0.9 works well, but slower
	movss	%xmm3, 72(%rsp)	# topp, %sfp
	movss	%xmm3, 8(%rsp)	# topp, %sfp
# run.c:952:     float temperature = 1.0f;   // 0.0 = greedy deterministic. 1.0 = original. don't set higher
	movss	%xmm7, 76(%rsp)	# tmp186, %sfp
	movss	%xmm7, 12(%rsp)	# tmp186, %sfp
.L891:
# run.c:980:     if (rng_seed <= 0) rng_seed = (unsigned int)time(NULL);
	xorl	%edi, %edi	#
	call	time@PLT	#
# run.c:980:     if (rng_seed <= 0) rng_seed = (unsigned int)time(NULL);
	movl	%eax, %eax	# tmp216, rng_seed
	movq	%rax, 16(%rsp)	# rng_seed, %sfp
	jmp	.L907	#
.L930:
# run.c:1013: }
	call	__stack_chk_fail@PLT	#
.L914:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	24(%rsp), %rcx	# %sfp,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC76(%rip), %rdx	#, tmp180
	xorl	%eax, %eax	#
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
	jmp	.L926	#
	.cfi_endproc
.LFE100:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC6:
	.long	925353388
	.set	.LC7,.LC8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC8:
	.long	1065353216
	.long	1065353216
	.section	.rodata.cst4
	.align 4
.LC9:
	.long	1176256512
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC10:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 16
.LC11:
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
.LC12:
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
.LC13:
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
.LC14:
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
.LC15:
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
.LC16:
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
.LC17:
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
.LC18:
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
.LC19:
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
.LC20:
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
.LC21:
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
.LC22:
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
.LC23:
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
.LC24:
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
.LC25:
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
.LC26:
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
.LC27:
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
.LC28:
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
.LC29:
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
.LC30:
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
.LC31:
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
.LC32:
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
.LC33:
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
.LC34:
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
.LC35:
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
.LC36:
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
.LC37:
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
.LC38:
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
.LC39:
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
.LC40:
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
.LC41:
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
.LC42:
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
.LC47:
	.long	-803929351
	.align 4
.LC50:
	.long	864026624
	.section	.rodata.cst8
	.align 8
.LC53:
	.long	0
	.long	1083129856
	.section	.rodata.cst16
	.align 16
.LC58:
	.quad	4332565458286692699
	.quad	2669014166577697596
	.align 16
.LC59:
	.quad	6005923040414403187
	.quad	6566374859625610814
	.align 16
.LC60:
	.quad	2675240795414350171
	.quad	6076286398487011443
	.section	.rodata.cst4
	.align 4
.LC73:
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
