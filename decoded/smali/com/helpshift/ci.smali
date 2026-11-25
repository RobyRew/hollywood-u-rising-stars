.class Lcom/helpshift/ci;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/helpshift/bu;


# direct methods
.method constructor <init>(Lcom/helpshift/bu;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/helpshift/ci;->a:Lcom/helpshift/bu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    .line 111
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/helpshift/ci;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->a(Lcom/helpshift/bu;)V

    .line 113
    iget-object v0, p0, Lcom/helpshift/ci;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->b(Lcom/helpshift/bu;)V

    .line 114
    iget-object v0, p0, Lcom/helpshift/ci;->a:Lcom/helpshift/bu;

    invoke-static {v0}, Lcom/helpshift/bu;->d(Lcom/helpshift/bu;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/ci;->a:Lcom/helpshift/bu;

    invoke-static {v1}, Lcom/helpshift/bu;->c(Lcom/helpshift/bu;)Lcom/helpshift/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpshift/a/a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 116
    :cond_0
    return-void
.end method
