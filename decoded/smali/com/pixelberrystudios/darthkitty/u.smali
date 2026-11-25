.class Lcom/pixelberrystudios/darthkitty/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/pixelberrystudios/darthkitty/t;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/t;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/u;->c:Lcom/pixelberrystudios/darthkitty/t;

    iput-boolean p2, p0, Lcom/pixelberrystudios/darthkitty/u;->a:Z

    iput-object p3, p0, Lcom/pixelberrystudios/darthkitty/u;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 258
    const-string/jumbo v0, "DKFacebook::run()"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->a(Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcom/pixelberrystudios/darthkitty/u;->a:Z

    if-eqz v0, :cond_0

    .line 260
    const-string/jumbo v0, "DKFacebookOnGetFriendsDidCompleteError"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->a(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/u;->c:Lcom/pixelberrystudios/darthkitty/t;

    iget v0, v0, Lcom/pixelberrystudios/darthkitty/t;->a:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->DKFacebookOnGetFriendsDidCompleteError(II)V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string/jumbo v0, "DKFacebookOnGetFriendsDidCompleteSuccess!"

    invoke-static {v0}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->a(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/u;->c:Lcom/pixelberrystudios/darthkitty/t;

    iget v0, v0, Lcom/pixelberrystudios/darthkitty/t;->a:I

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/u;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->DKFacebookOnGetFriendsDidCompleteSuccess(ILjava/lang/String;)V

    goto :goto_0
.end method
