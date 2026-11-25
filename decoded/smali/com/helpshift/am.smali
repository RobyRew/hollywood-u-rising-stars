.class Lcom/helpshift/am;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/helpshift/am;->b:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/am;->a:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 128
    iget-object v1, p0, Lcom/helpshift/am;->b:Lcom/helpshift/al;

    invoke-static {v1}, Lcom/helpshift/al;->a(Lcom/helpshift/al;)Lcom/helpshift/dm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/dm;->b()V

    .line 129
    iget-object v1, p0, Lcom/helpshift/am;->b:Lcom/helpshift/al;

    invoke-static {v1}, Lcom/helpshift/al;->a(Lcom/helpshift/al;)Lcom/helpshift/dm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpshift/dm;->a(Lorg/json/JSONArray;)V

    .line 130
    iget-object v0, p0, Lcom/helpshift/am;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/helpshift/am;->b:Lcom/helpshift/al;

    invoke-static {v1}, Lcom/helpshift/al;->a(Lcom/helpshift/al;)Lcom/helpshift/dm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/dm;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/helpshift/am;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/helpshift/an;

    invoke-direct {v1, p0}, Lcom/helpshift/an;-><init>(Lcom/helpshift/am;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    :cond_0
    invoke-static {}, Lcom/helpshift/al;->w()V

    .line 145
    return-void
.end method
