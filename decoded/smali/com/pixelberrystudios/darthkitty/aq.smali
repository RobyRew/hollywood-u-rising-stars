.class Lcom/pixelberrystudios/darthkitty/aq;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/ao;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/ao;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/aq;->a:Lcom/pixelberrystudios/darthkitty/ao;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKHelpshift;->DKHelpShiftOnReceiveNotificationCount(I)V

    .line 165
    return-void
.end method
