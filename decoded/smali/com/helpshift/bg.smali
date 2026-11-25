.class Lcom/helpshift/bg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/helpshift/al;


# direct methods
.method constructor <init>(Lcom/helpshift/al;Ljava/lang/String;Ljava/lang/Boolean;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/helpshift/bg;->d:Lcom/helpshift/al;

    iput-object p2, p0, Lcom/helpshift/bg;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpshift/bg;->b:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/helpshift/bg;->c:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/helpshift/bg;->d:Lcom/helpshift/al;

    invoke-static {v0}, Lcom/helpshift/al;->c(Lcom/helpshift/al;)Lcom/helpshift/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/bg;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpshift/bg;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/bk;->a(Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 581
    iget-object v0, p0, Lcom/helpshift/bg;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 582
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 583
    iget-object v1, p0, Lcom/helpshift/bg;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 584
    return-void
.end method
