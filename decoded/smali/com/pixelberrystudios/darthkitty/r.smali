.class Lcom/pixelberrystudios/darthkitty/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/q;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/q;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/r;->a:Lcom/pixelberrystudios/darthkitty/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/r;->a:Lcom/pixelberrystudios/darthkitty/q;

    iget-object v0, v0, Lcom/pixelberrystudios/darthkitty/q;->a:Lcom/pixelberrystudios/darthkitty/p;

    iget v0, v0, Lcom/pixelberrystudios/darthkitty/p;->a:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->DKFacebookOnGetMeDidCompleteError(II)V

    .line 193
    return-void
.end method
