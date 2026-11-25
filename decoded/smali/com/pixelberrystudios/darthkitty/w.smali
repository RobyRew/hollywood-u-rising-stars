.class Lcom/pixelberrystudios/darthkitty/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/v;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/v;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/w;->a:Lcom/pixelberrystudios/darthkitty/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/Sharer$Result;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/w;->a:Lcom/pixelberrystudios/darthkitty/v;

    iget v0, v0, Lcom/pixelberrystudios/darthkitty/v;->a:I

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->DKFacebookOnPostToFeedCompleteSuccess(I)V

    .line 297
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/w;->a:Lcom/pixelberrystudios/darthkitty/v;

    iget v0, v0, Lcom/pixelberrystudios/darthkitty/v;->a:I

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->DKFacebookOnPostToFeedCompleteCancelled(I)V

    .line 307
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/w;->a:Lcom/pixelberrystudios/darthkitty/v;

    iget v0, v0, Lcom/pixelberrystudios/darthkitty/v;->a:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->DKFacebookOnPostToFeedCompleteError(II)V

    .line 302
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 292
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/pixelberrystudios/darthkitty/w;->a(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
