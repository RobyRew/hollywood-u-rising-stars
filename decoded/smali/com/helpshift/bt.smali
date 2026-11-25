.class Lcom/helpshift/bt;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/bs;


# direct methods
.method constructor <init>(Lcom/helpshift/bs;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/helpshift/bt;->a:Lcom/helpshift/bs;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/helpshift/d/b/a;->b(Lorg/json/JSONObject;)V

    .line 61
    invoke-static {}, Lcom/helpshift/bs;->c()Lcom/helpshift/dx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/dx;->c()V

    .line 62
    return-void
.end method
