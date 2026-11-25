.class La/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/m",
        "<TTResult;",
        "La/o",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/j;

.field final synthetic b:La/m;

.field final synthetic c:La/o;


# direct methods
.method constructor <init>(La/o;La/j;La/m;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, La/r;->c:La/o;

    iput-object p2, p0, La/r;->a:La/j;

    iput-object p3, p0, La/r;->b:La/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/o;)La/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/o",
            "<TTResult;>;)",
            "La/o",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v0, p0, La/r;->a:La/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/r;->a:La/j;

    invoke-virtual {v0}, La/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, La/o;->h()La/o;

    move-result-object v0

    .line 766
    :goto_0
    return-object v0

    .line 761
    :cond_0
    invoke-virtual {p1}, La/o;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p1}, La/o;->g()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, La/o;->a(Ljava/lang/Exception;)La/o;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_1
    invoke-virtual {p1}, La/o;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    invoke-static {}, La/o;->h()La/o;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, La/r;->b:La/m;

    invoke-virtual {p1, v0}, La/o;->a(La/m;)La/o;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(La/o;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0, p1}, La/r;->a(La/o;)La/o;

    move-result-object v0

    return-object v0
.end method
