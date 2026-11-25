.class Lcom/helpshift/t;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/s;


# direct methods
.method constructor <init>(Lcom/helpshift/s;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/helpshift/t;->a:Lcom/helpshift/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 79
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/helpshift/t;->a:Lcom/helpshift/s;

    invoke-static {v2}, Lcom/helpshift/s;->a(Lcom/helpshift/s;)Lcom/helpshift/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/helpshift/e/u;->a(ILandroid/app/ProgressDialog;Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/helpshift/t;->a:Lcom/helpshift/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/helpshift/s;->a(Lcom/helpshift/s;Z)V

    .line 82
    return-void
.end method
