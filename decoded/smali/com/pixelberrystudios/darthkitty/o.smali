.class Lcom/pixelberrystudios/darthkitty/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/l;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/l;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/o;->a:Lcom/pixelberrystudios/darthkitty/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->DKFacebookBroadcastOnSessionStateChanged(I)V

    .line 128
    return-void
.end method
