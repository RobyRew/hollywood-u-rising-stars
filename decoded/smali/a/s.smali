.class final La/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:La/j;

.field final synthetic b:La/x;

.field final synthetic c:La/m;

.field final synthetic d:La/o;


# direct methods
.method constructor <init>(La/j;La/x;La/m;La/o;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, La/s;->a:La/j;

    iput-object p2, p0, La/s;->b:La/x;

    iput-object p3, p0, La/s;->c:La/m;

    iput-object p4, p0, La/s;->d:La/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, La/s;->a:La/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/s;->a:La/j;

    invoke-virtual {v0}, La/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, La/s;->b:La/x;

    invoke-virtual {v0}, La/x;->c()V

    .line 879
    :goto_0
    return-void

    .line 872
    :cond_0
    :try_start_0
    iget-object v0, p0, La/s;->c:La/m;

    iget-object v1, p0, La/s;->d:La/o;

    invoke-interface {v0, v1}, La/m;->then(La/o;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    iget-object v1, p0, La/s;->b:La/x;

    invoke-virtual {v1, v0}, La/x;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    iget-object v0, p0, La/s;->b:La/x;

    invoke-virtual {v0}, La/x;->c()V

    goto :goto_0

    .line 876
    :catch_1
    move-exception v0

    .line 877
    iget-object v1, p0, La/s;->b:La/x;

    invoke-virtual {v1, v0}, La/x;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
