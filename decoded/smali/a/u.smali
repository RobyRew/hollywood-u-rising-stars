.class La/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/m",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/t;


# direct methods
.method constructor <init>(La/t;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, La/u;->a:La/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/o;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/o",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, La/u;->a:La/t;

    iget-object v0, v0, La/t;->a:La/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/u;->a:La/t;

    iget-object v0, v0, La/t;->a:La/j;

    invoke-virtual {v0}, La/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, La/u;->a:La/t;

    iget-object v0, v0, La/t;->b:La/x;

    invoke-virtual {v0}, La/x;->c()V

    .line 936
    :goto_0
    return-object v2

    .line 929
    :cond_0
    invoke-virtual {p1}, La/o;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, La/u;->a:La/t;

    iget-object v0, v0, La/t;->b:La/x;

    invoke-virtual {v0}, La/x;->c()V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p1}, La/o;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, La/u;->a:La/t;

    iget-object v0, v0, La/t;->b:La/x;

    invoke-virtual {p1}, La/o;->g()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, La/x;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, La/u;->a:La/t;

    iget-object v0, v0, La/t;->b:La/x;

    invoke-virtual {p1}, La/o;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/x;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(La/o;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 921
    invoke-virtual {p0, p1}, La/u;->a(La/o;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
