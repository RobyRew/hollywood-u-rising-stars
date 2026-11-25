.class La/p;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/x;

.field final synthetic b:La/m;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:La/j;

.field final synthetic e:La/o;


# direct methods
.method constructor <init>(La/o;La/x;La/m;Ljava/util/concurrent/Executor;La/j;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, La/p;->e:La/o;

    iput-object p2, p0, La/p;->a:La/x;

    iput-object p3, p0, La/p;->b:La/m;

    iput-object p4, p0, La/p;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, La/p;->d:La/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/o;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/o",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, La/p;->a:La/x;

    iget-object v1, p0, La/p;->b:La/m;

    iget-object v2, p0, La/p;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, La/p;->d:La/j;

    invoke-static {v0, v1, p1, v2, v3}, La/o;->a(La/x;La/m;La/o;Ljava/util/concurrent/Executor;La/j;)V

    .line 655
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(La/o;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 651
    invoke-virtual {p0, p1}, La/p;->a(La/o;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
