.class public interface abstract Lcom/pixelberrystudios/iab/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getMarketType()Lcom/pixelberrystudios/iab/ai;
.end method

.method public abstract handleActivityResult(IILandroid/content/Intent;)Z
.end method

.method public abstract hasTransaction()Z
.end method

.method public abstract isSetupDone()Z
.end method

.method public abstract launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/pixelberrystudios/iab/aj;Ljava/lang/String;)V
.end method

.method public abstract queryInventoryAsync(ZLjava/util/List;Lcom/pixelberrystudios/iab/al;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pixelberrystudios/iab/al;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startSetup(Lcom/pixelberrystudios/iab/ak;)V
.end method
