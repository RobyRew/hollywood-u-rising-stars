.class Lcom/pixelberrystudios/iab/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/pixelberrystudios/iab/ac;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/ac;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/pixelberrystudios/iab/ad;->b:Lcom/pixelberrystudios/iab/ac;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/ad;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 898
    iget-object v0, p0, Lcom/pixelberrystudios/iab/ad;->b:Lcom/pixelberrystudios/iab/ac;

    iget-object v2, v0, Lcom/pixelberrystudios/iab/ac;->b:Lcom/pixelberrystudios/iab/af;

    iget-object v0, p0, Lcom/pixelberrystudios/iab/ad;->b:Lcom/pixelberrystudios/iab/ac;

    iget-object v0, v0, Lcom/pixelberrystudios/iab/ac;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pixelberrystudios/iab/Purchase;

    iget-object v1, p0, Lcom/pixelberrystudios/iab/ad;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pixelberrystudios/iab/am;

    invoke-interface {v2, v0, v1}, Lcom/pixelberrystudios/iab/af;->a(Lcom/pixelberrystudios/iab/Purchase;Lcom/pixelberrystudios/iab/am;)V

    .line 899
    return-void
.end method
