.class Lcom/helpshift/ba;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/helpshift/ba;->d:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/ba;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/ba;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/helpshift/ba;->c:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 1508
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/helpshift/ba;->d:Lcom/helpshift/al;

    iget-object v1, p0, Lcom/helpshift/ba;->a:Ljava/lang/String;

    sget-object v2, Lcom/helpshift/bi;->f:Lcom/helpshift/bi;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/al;->a(Ljava/lang/String;Lcom/helpshift/bi;)Ljava/lang/Boolean;

    .line 1511
    iget-object v0, p0, Lcom/helpshift/ba;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1512
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1513
    const-string/jumbo v2, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/ba;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1517
    iget-object v1, p0, Lcom/helpshift/ba;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1519
    :cond_0
    return-void
.end method
