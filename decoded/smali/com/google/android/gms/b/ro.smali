.class public final Lcom/google/android/gms/b/ro;
.super Lcom/google/android/gms/b/ra;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/b/ra",
        "<",
        "Lcom/google/android/gms/b/ro;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public h:[Lcom/google/android/gms/b/rp;

.field public i:Lcom/google/android/gms/b/rm;

.field public j:[B

.field public k:[B

.field public l:[B

.field public n:Lcom/google/android/gms/b/rl;

.field public o:Ljava/lang/String;

.field public p:J

.field public q:Lcom/google/android/gms/b/rn;

.field public r:[B

.field public s:I

.field public t:[I

.field public u:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/ra;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/b/ro;->a()Lcom/google/android/gms/b/ro;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/ro;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/b/ro;->a:J

    iput-wide v4, p0, Lcom/google/android/gms/b/ro;->b:J

    iput-wide v4, p0, Lcom/google/android/gms/b/ro;->c:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/b/ro;->e:I

    iput v2, p0, Lcom/google/android/gms/b/ro;->f:I

    iput-boolean v2, p0, Lcom/google/android/gms/b/ro;->g:Z

    invoke-static {}, Lcom/google/android/gms/b/rp;->a()[Lcom/google/android/gms/b/rp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    iput-object v3, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    sget-object v0, Lcom/google/android/gms/b/rj;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->j:[B

    sget-object v0, Lcom/google/android/gms/b/rj;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->k:[B

    sget-object v0, Lcom/google/android/gms/b/rj;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->l:[B

    iput-object v3, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/b/ro;->p:J

    iput-object v3, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    sget-object v0, Lcom/google/android/gms/b/rj;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->r:[B

    iput v2, p0, Lcom/google/android/gms/b/ro;->s:I

    sget-object v0, Lcom/google/android/gms/b/rj;->a:[I

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->t:[I

    iput-wide v4, p0, Lcom/google/android/gms/b/ro;->u:J

    iput-object v3, p0, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/b/ro;->B:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/b/qx;)Lcom/google/android/gms/b/ro;
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/b/ro;->a(Lcom/google/android/gms/b/qx;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/b/ro;->a:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/b/rj;->b(Lcom/google/android/gms/b/qx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/b/rp;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/b/rp;

    invoke-direct {v3}, Lcom/google/android/gms/b/rp;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/b/qx;->a(Lcom/google/android/gms/b/rg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/b/rp;

    invoke-direct {v3}, Lcom/google/android/gms/b/rp;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/qx;->a(Lcom/google/android/gms/b/rg;)V

    iput-object v2, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->i()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->j:[B

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/b/rl;

    invoke-direct {v0}, Lcom/google/android/gms/b/rl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/qx;->a(Lcom/google/android/gms/b/rg;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->i()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->k:[B

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/b/rm;

    invoke-direct {v0}, Lcom/google/android/gms/b/rm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/qx;->a(Lcom/google/android/gms/b/rg;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/b/ro;->g:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/b/ro;->e:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/b/ro;->f:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->i()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->l:[B

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->j()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/b/ro;->p:J

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/b/rn;

    invoke-direct {v0}, Lcom/google/android/gms/b/rn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/qx;->a(Lcom/google/android/gms/b/rg;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/b/ro;->b:J

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->i()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/ro;->r:[B

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/b/ro;->s:I

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/b/rj;->b(Lcom/google/android/gms/b/qx;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->t:[I

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->t:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->f()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->t:[I

    array-length v0, v0

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->f()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/b/ro;->t:[I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/b/qx;->c(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->q()I

    move-result v2

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->o()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->f()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v2}, Lcom/google/android/gms/b/qx;->e(I)V

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->t:[I

    if-nez v2, :cond_c

    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/b/ro;->t:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->f()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->t:[I

    array-length v2, v2

    goto :goto_6

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/b/ro;->t:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/b/qx;->d(I)V

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/b/ro;->c:J

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/b/qx;->e()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/b/ro;->u:J

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x78 -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x92 -> :sswitch_10
        0x98 -> :sswitch_11
        0xa0 -> :sswitch_12
        0xa2 -> :sswitch_13
        0xa8 -> :sswitch_14
        0xb0 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/google/android/gms/b/qy;)V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->a:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/b/qy;->b(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/b/qy;->a(ILcom/google/android/gms/b/rg;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->j:[B

    sget-object v2, Lcom/google/android/gms/b/rj;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->j:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(ILcom/google/android/gms/b/rg;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->k:[B

    sget-object v2, Lcom/google/android/gms/b/rj;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->k:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(ILcom/google/android/gms/b/rg;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/b/ro;->g:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/b/ro;->g:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/b/ro;->e:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v2, p0, Lcom/google/android/gms/b/ro;->e:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(II)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/b/ro;->f:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v2, p0, Lcom/google/android/gms/b/ro;->f:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->l:[B

    sget-object v2, Lcom/google/android/gms/b/rj;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->l:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(ILjava/lang/String;)V

    :cond_c
    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->p:J

    const-wide/32 v4, 0x2bf20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->p:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/b/qy;->c(IJ)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(ILcom/google/android/gms/b/rg;)V

    :cond_e
    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->b:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/b/qy;->b(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->r:[B

    sget-object v2, Lcom/google/android/gms/b/rj;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->r:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(I[B)V

    :cond_10
    iget v0, p0, Lcom/google/android/gms/b/ro;->s:I

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/b/ro;->s:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(II)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->t:[I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->t:[I

    array-length v0, v0

    if-lez v0, :cond_12

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->t:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->t:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/b/qy;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/b/ro;->c:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_13

    const/16 v0, 0x15

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/b/qy;->b(IJ)V

    :cond_13
    iget-wide v0, p0, Lcom/google/android/gms/b/ro;->u:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14

    const/16 v0, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->u:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/b/qy;->b(IJ)V

    :cond_14
    invoke-super {p0, p1}, Lcom/google/android/gms/b/ra;->a(Lcom/google/android/gms/b/qy;)V

    return-void
.end method

.method protected b()I
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/b/ra;->b()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->a:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/b/ro;->a:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/b/qy;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/b/qy;->c(ILcom/google/android/gms/b/rg;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->j:[B

    sget-object v3, Lcom/google/android/gms/b/rj;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->j:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->c(ILcom/google/android/gms/b/rg;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->k:[B

    sget-object v3, Lcom/google/android/gms/b/rj;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->k:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->c(ILcom/google/android/gms/b/rg;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-boolean v2, p0, Lcom/google/android/gms/b/ro;->g:Z

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/gms/b/ro;->g:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    iget v2, p0, Lcom/google/android/gms/b/ro;->e:I

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    iget v3, p0, Lcom/google/android/gms/b/ro;->e:I

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget v2, p0, Lcom/google/android/gms/b/ro;->f:I

    if-eqz v2, :cond_b

    const/16 v2, 0xc

    iget v3, p0, Lcom/google/android/gms/b/ro;->f:I

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->l:[B

    sget-object v3, Lcom/google/android/gms/b/rj;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->l:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->p:J

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/b/ro;->p:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/b/qy;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->c(ILcom/google/android/gms/b/rg;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->b:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_10

    const/16 v2, 0x11

    iget-wide v4, p0, Lcom/google/android/gms/b/ro;->b:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/b/qy;->d(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->r:[B

    sget-object v3, Lcom/google/android/gms/b/rj;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_11

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->r:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    iget v2, p0, Lcom/google/android/gms/b/ro;->s:I

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    iget v3, p0, Lcom/google/android/gms/b/ro;->s:I

    invoke-static {v2, v3}, Lcom/google/android/gms/b/qy;->b(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->t:[I

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->t:[I

    array-length v2, v2

    if-lez v2, :cond_14

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/b/ro;->t:[I

    array-length v3, v3

    if-ge v1, v3, :cond_13

    iget-object v3, p0, Lcom/google/android/gms/b/ro;->t:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/b/qy;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_13
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/b/ro;->t:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_14
    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->c:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_15

    const/16 v1, 0x15

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/b/qy;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->u:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_16

    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->u:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/b/qy;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/b/qx;)Lcom/google/android/gms/b/rg;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/ro;->a(Lcom/google/android/gms/b/qx;)Lcom/google/android/gms/b/ro;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/b/ro;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/b/ro;

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/b/ro;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/b/ro;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/b/ro;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/google/android/gms/b/ro;->e:I

    iget v3, p1, Lcom/google/android/gms/b/ro;->e:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/b/ro;->f:I

    iget v3, p1, Lcom/google/android/gms/b/ro;->f:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/b/ro;->g:Z

    iget-boolean v3, p1, Lcom/google/android/gms/b/ro;->g:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    invoke-static {v2, v3}, Lcom/google/android/gms/b/re;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->j:[B

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->j:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->k:[B

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->k:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->l:[B

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->l:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->p:J

    iget-wide v4, p1, Lcom/google/android/gms/b/ro;->p:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->r:[B

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->r:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/b/ro;->s:I

    iget v3, p1, Lcom/google/android/gms/b/ro;->s:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->t:[I

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->t:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/b/re;->a([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->u:J

    iget-wide v4, p1, Lcom/google/android/gms/b/ro;->u:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v2}, Lcom/google/android/gms/b/rc;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v2}, Lcom/google/android/gms/b/rc;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/rm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/rl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    iget-object v3, p1, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/rn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    iget-object v1, p1, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/rc;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->a:J

    iget-wide v4, p0, Lcom/google/android/gms/b/ro;->a:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/b/ro;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->c:J

    iget-wide v4, p0, Lcom/google/android/gms/b/ro;->c:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/b/ro;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/b/ro;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/b/ro;->g:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->h:[Lcom/google/android/gms/b/rp;

    invoke-static {v2}, Lcom/google/android/gms/b/re;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->j:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->k:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->l:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->p:J

    iget-wide v4, p0, Lcom/google/android/gms/b/ro;->p:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    if-nez v0, :cond_6

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->r:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/b/ro;->s:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->t:[I

    invoke-static {v2}, Lcom/google/android/gms/b/re;->a([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/b/ro;->u:J

    iget-wide v4, p0, Lcom/google/android/gms/b/ro;->u:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v2}, Lcom/google/android/gms/b/rc;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x4d5

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->i:Lcom/google/android/gms/b/rm;

    invoke-virtual {v0}, Lcom/google/android/gms/b/rm;->hashCode()I

    move-result v0

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->n:Lcom/google/android/gms/b/rl;

    invoke-virtual {v0}, Lcom/google/android/gms/b/rl;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/b/ro;->q:Lcom/google/android/gms/b/rn;

    invoke-virtual {v0}, Lcom/google/android/gms/b/rn;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/b/ro;->m:Lcom/google/android/gms/b/rc;

    invoke-virtual {v1}, Lcom/google/android/gms/b/rc;->hashCode()I

    move-result v1

    goto :goto_6
.end method
