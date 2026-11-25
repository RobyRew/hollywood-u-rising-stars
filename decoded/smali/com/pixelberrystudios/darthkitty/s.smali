.class Lcom/pixelberrystudios/darthkitty/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pixelberrystudios/darthkitty/q;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/s;->b:Lcom/pixelberrystudios/darthkitty/q;

    iput-object p2, p0, Lcom/pixelberrystudios/darthkitty/s;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/s;->b:Lcom/pixelberrystudios/darthkitty/q;

    iget-object v0, v0, Lcom/pixelberrystudios/darthkitty/q;->a:Lcom/pixelberrystudios/darthkitty/p;

    iget v0, v0, Lcom/pixelberrystudios/darthkitty/p;->a:I

    iget-object v1, p0, Lcom/pixelberrystudios/darthkitty/s;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pixelberrystudios/darthkitty/DKFacebook;->DKFacebookOnGetMeDidCompleteSuccess(ILjava/lang/String;)V

    .line 201
    return-void
.end method
