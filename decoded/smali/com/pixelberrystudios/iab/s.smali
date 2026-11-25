.class Lcom/pixelberrystudios/iab/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/r;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/r;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/pixelberrystudios/iab/s;->a:Lcom/pixelberrystudios/iab/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/pixelberrystudios/iab/s;->a:Lcom/pixelberrystudios/iab/r;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/r;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-virtual {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->v()V

    .line 362
    iget-object v0, p0, Lcom/pixelberrystudios/iab/s;->a:Lcom/pixelberrystudios/iab/r;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/r;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/BaseIabActivity;->c(Z)V

    .line 363
    return-void
.end method
