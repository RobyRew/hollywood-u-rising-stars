.class Lcom/pixelberrystudios/iab/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/iab/af;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/BaseIabActivity;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/BaseIabActivity;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/pixelberrystudios/iab/k;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pixelberrystudios/iab/Purchase;Lcom/pixelberrystudios/iab/am;)V
    .locals 2

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bad Consumption finished. Purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pixelberrystudios/iab/BaseIabActivity;->i(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/pixelberrystudios/iab/k;->a:Lcom/pixelberrystudios/iab/BaseIabActivity;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/BaseIabActivity;->m:Lcom/pixelberrystudios/iab/Inventory;

    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pixelberrystudios/iab/Inventory;->erasePurchase(Ljava/lang/String;)V

    .line 594
    return-void
.end method
