.class final La/t;
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
    .line 908
    iput-object p1, p0, La/t;->a:La/j;

    iput-object p2, p0, La/t;->b:La/x;

    iput-object p3, p0, La/t;->c:La/m;

    iput-object p4, p0, La/t;->d:La/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, La/t;->a:La/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/t;->a:La/j;

    invoke-virtual {v0}, La/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, La/t;->b:La/x;

    invoke-virtual {v0}, La/x;->c()V

    .line 945
    :goto_0
    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v0, p0, La/t;->c:La/m;

    iget-object v1, p0, La/t;->d:La/o;

    invoke-interface {v0, v1}, La/m;->then(La/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/o;

    .line 918
    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, La/t;->b:La/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/x;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    iget-object v0, p0, La/t;->b:La/x;

    invoke-virtual {v0}, La/x;->c()V

    goto :goto_0

    .line 921
    :cond_1
    :try_start_1
    new-instance v1, La/u;

    invoke-direct {v1, p0}, La/u;-><init>(La/t;)V

    invoke-virtual {v0, v1}, La/o;->a(La/m;)La/o;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 942
    :catch_1
    move-exception v0

    .line 943
    iget-object v1, p0, La/t;->b:La/x;

    invoke-virtual {v1, v0}, La/x;->b(Ljava/lang/Exception;)V

    goto :goto_0
.end method
