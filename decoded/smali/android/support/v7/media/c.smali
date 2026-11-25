.class public abstract Landroid/support/v7/media/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v7/media/e;

.field private b:Landroid/support/v7/media/d;

.field private c:Landroid/support/v7/media/b;

.field private d:Z

.field private e:Landroid/support/v7/media/g;

.field private f:Z


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v7/media/f;
    .locals 2

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/f;
    .locals 2

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    if-nez p2, :cond_1

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeGroupId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/media/c;->a(Ljava/lang/String;)Landroid/support/v7/media/f;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/c;->d:Z

    .line 167
    iget-object v0, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/b;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/c;->b(Landroid/support/v7/media/b;)V

    .line 168
    return-void
.end method

.method public final a(Landroid/support/v7/media/b;)V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Landroid/support/v7/media/q;->a()V

    .line 153
    iget-object v0, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/b;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/b;

    .line 154
    invoke-virtual {v0, p1}, Landroid/support/v7/media/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iput-object p1, p0, Landroid/support/v7/media/c;->c:Landroid/support/v7/media/b;

    .line 159
    iget-boolean v0, p0, Landroid/support/v7/media/c;->d:Z

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/c;->d:Z

    .line 161
    iget-object v0, p0, Landroid/support/v7/media/c;->a:Landroid/support/v7/media/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/media/e;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final b()Landroid/support/v7/media/g;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/media/c;->e:Landroid/support/v7/media/g;

    return-object v0
.end method

.method public b(Landroid/support/v7/media/b;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/c;->f:Z

    .line 239
    iget-object v0, p0, Landroid/support/v7/media/c;->b:Landroid/support/v7/media/d;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/support/v7/media/c;->b:Landroid/support/v7/media/d;

    iget-object v1, p0, Landroid/support/v7/media/c;->e:Landroid/support/v7/media/g;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/d;->a(Landroid/support/v7/media/c;Landroid/support/v7/media/g;)V

    .line 242
    :cond_0
    return-void
.end method
