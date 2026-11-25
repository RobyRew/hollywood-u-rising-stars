.class Lcom/jirbo/adcolony/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/cv;

.field final synthetic b:Lcom/jirbo/adcolony/cb;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/cb;Lcom/jirbo/adcolony/cv;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jirbo/adcolony/cc;->b:Lcom/jirbo/adcolony/cb;

    iput-object p2, p0, Lcom/jirbo/adcolony/cc;->a:Lcom/jirbo/adcolony/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/jirbo/adcolony/cc;->b:Lcom/jirbo/adcolony/cb;

    iget-object v1, v0, Lcom/jirbo/adcolony/cb;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 45
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/ba;->d()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/cc;->b:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jirbo/adcolony/cc;->a:Lcom/jirbo/adcolony/cv;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/jirbo/adcolony/cc;->b:Lcom/jirbo/adcolony/cb;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/cb;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/cc;->b:Lcom/jirbo/adcolony/cb;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/cb;->g()V

    .line 49
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
