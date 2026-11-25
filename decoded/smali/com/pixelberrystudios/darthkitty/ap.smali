.class Lcom/pixelberrystudios/darthkitty/ap;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/ao;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/ao;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/ap;->a:Lcom/pixelberrystudios/darthkitty/ao;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 155
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->DKHelpShiftOnReceiveNotificationCount(I)V

    .line 157
    return-void
.end method
