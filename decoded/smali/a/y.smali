.class La/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:La/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/o",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/o",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, La/y;->a:La/o;

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, La/y;->a:La/o;

    .line 32
    return-void
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 18
    :try_start_0
    iget-object v0, p0, La/y;->a:La/o;

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, La/o;->a()La/w;

    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    new-instance v2, La/z;

    invoke-virtual {v0}, La/o;->g()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v2, v3}, La/z;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0, v2}, La/w;->a(La/o;La/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 28
    return-void

    .line 26
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
