.class Lcom/helpshift/as;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/helpshift/as;->c:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/as;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/as;->b:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1078
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1079
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 1080
    iget-object v0, p0, Lcom/helpshift/as;->c:Lcom/helpshift/al;

    invoke-static {v0}, Lcom/helpshift/al;->a(Lcom/helpshift/al;)Lcom/helpshift/dm;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/helpshift/dm;->a(Ljava/lang/String;)Lcom/helpshift/ew;

    move-result-object v0

    .line 1082
    iget-object v1, p0, Lcom/helpshift/as;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1083
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1084
    iget-object v0, p0, Lcom/helpshift/as;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1085
    return-void
.end method
