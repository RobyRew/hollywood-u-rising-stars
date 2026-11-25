.class Lcom/pixelberrystudios/iab/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/Purchase;

.field final synthetic b:Lcom/amazon/device/iap/model/RequestId;

.field final synthetic c:Lcom/pixelberrystudios/iab/AmazonHelper;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/AmazonHelper;Lcom/pixelberrystudios/iab/Purchase;Lcom/amazon/device/iap/model/RequestId;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/pixelberrystudios/iab/a;->c:Lcom/pixelberrystudios/iab/AmazonHelper;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/a;->a:Lcom/pixelberrystudios/iab/Purchase;

    iput-object p3, p0, Lcom/pixelberrystudios/iab/a;->b:Lcom/amazon/device/iap/model/RequestId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/pixelberrystudios/iab/a;->c:Lcom/pixelberrystudios/iab/AmazonHelper;

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Lcom/pixelberrystudios/iab/AmazonHelper;)Lcom/pixelberrystudios/iab/aj;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v2, 0x0

    const-string/jumbo v3, "Purchase complete."

    invoke-direct {v1, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/pixelberrystudios/iab/a;->a:Lcom/pixelberrystudios/iab/Purchase;

    iget-object v3, p0, Lcom/pixelberrystudios/iab/a;->b:Lcom/amazon/device/iap/model/RequestId;

    .line 342
    invoke-virtual {v3}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-interface {v0, v1, v2, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    .line 343
    return-void
.end method
