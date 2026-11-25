.class Lcom/helpshift/az;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/helpshift/az;->c:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/az;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/helpshift/az;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 1482
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/helpshift/az;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1485
    const-string/jumbo v2, "status"

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    const-string/jumbo v2, "id"

    iget-object v3, p0, Lcom/helpshift/az;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1488
    iget-object v1, p0, Lcom/helpshift/az;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1490
    :cond_0
    return-void
.end method
