.class public Landroid/support/v7/widget/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/widget/fd;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5015
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/fc;->a:Landroid/util/SparseArray;

    .line 5017
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/fc;->b:I

    return-void
.end method

.method private b(I)Landroid/support/v7/widget/fd;
    .locals 2

    .prologue
    .line 5140
    iget-object v0, p0, Landroid/support/v7/widget/fc;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fd;

    .line 5141
    if-nez v0, :cond_0

    .line 5142
    new-instance v0, Landroid/support/v7/widget/fd;

    invoke-direct {v0}, Landroid/support/v7/widget/fd;-><init>()V

    .line 5143
    iget-object v1, p0, Landroid/support/v7/widget/fc;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5145
    :cond_0
    return-object v0
.end method


# virtual methods
.method a(JJ)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x4

    .line 5078
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5081
    :goto_0
    return-wide p3

    :cond_0
    div-long v0, p1, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p3, v4

    add-long p3, v0, v2

    goto :goto_0
.end method

.method public a(I)Landroid/support/v7/widget/fn;
    .locals 2

    .prologue
    .line 5045
    iget-object v0, p0, Landroid/support/v7/widget/fc;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fd;

    .line 5046
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v7/widget/fd;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5047
    iget-object v0, v0, Landroid/support/v7/widget/fd;->a:Ljava/util/ArrayList;

    .line 5048
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fn;

    .line 5050
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(IJ)V
    .locals 4

    .prologue
    .line 5085
    invoke-direct {p0, p1}, Landroid/support/v7/widget/fc;->b(I)Landroid/support/v7/widget/fd;

    move-result-object v0

    .line 5086
    iget-wide v2, v0, Landroid/support/v7/widget/fd;->c:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/fc;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/fd;->c:J

    .line 5088
    return-void
.end method

.method public a(Landroid/support/v7/widget/fn;)V
    .locals 3

    .prologue
    .line 5065
    invoke-virtual {p1}, Landroid/support/v7/widget/fn;->h()I

    move-result v0

    .line 5066
    invoke-direct {p0, v0}, Landroid/support/v7/widget/fc;->b(I)Landroid/support/v7/widget/fd;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/fd;->a:Ljava/util/ArrayList;

    .line 5067
    iget-object v2, p0, Landroid/support/v7/widget/fc;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fd;

    iget v0, v0, Landroid/support/v7/widget/fd;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 5075
    :goto_0
    return-void

    .line 5073
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/fn;->v()V

    .line 5074
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method a(IJJ)Z
    .locals 4

    .prologue
    .line 5097
    invoke-direct {p0, p1}, Landroid/support/v7/widget/fc;->b(I)Landroid/support/v7/widget/fd;

    move-result-object v0

    iget-wide v0, v0, Landroid/support/v7/widget/fd;->c:J

    .line 5098
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(IJ)V
    .locals 4

    .prologue
    .line 5091
    invoke-direct {p0, p1}, Landroid/support/v7/widget/fc;->b(I)Landroid/support/v7/widget/fd;

    move-result-object v0

    .line 5092
    iget-wide v2, v0, Landroid/support/v7/widget/fd;->d:J

    invoke-virtual {p0, v2, v3, p2, p3}, Landroid/support/v7/widget/fc;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v7/widget/fd;->d:J

    .line 5094
    return-void
.end method

.method b(IJJ)Z
    .locals 4

    .prologue
    .line 5102
    invoke-direct {p0, p1}, Landroid/support/v7/widget/fc;->b(I)Landroid/support/v7/widget/fd;

    move-result-object v0

    iget-wide v0, v0, Landroid/support/v7/widget/fd;->d:J

    .line 5103
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
