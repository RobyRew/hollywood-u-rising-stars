.class Lcom/helpshift/ax;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/helpshift/ax;->b:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/ax;->a:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 152
    const/4 v1, 0x0

    sput-boolean v1, Lcom/helpshift/al;->e:Z

    .line 153
    iget-object v1, p0, Lcom/helpshift/ax;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 154
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/helpshift/ax;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method
