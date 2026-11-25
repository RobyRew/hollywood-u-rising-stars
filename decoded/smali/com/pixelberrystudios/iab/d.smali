.class Lcom/pixelberrystudios/iab/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/iab/Purchase;

.field final synthetic b:Lcom/pixelberrystudios/iab/AmazonHelper;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/AmazonHelper;Lcom/pixelberrystudios/iab/Purchase;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/pixelberrystudios/iab/d;->b:Lcom/pixelberrystudios/iab/AmazonHelper;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/d;->a:Lcom/pixelberrystudios/iab/Purchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/pixelberrystudios/iab/d;->b:Lcom/pixelberrystudios/iab/AmazonHelper;

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Lcom/pixelberrystudios/iab/AmazonHelper;)Lcom/pixelberrystudios/iab/aj;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v2, 0x0

    const-string/jumbo v3, "Purchase complete."

    invoke-direct {v1, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/pixelberrystudios/iab/d;->a:Lcom/pixelberrystudios/iab/Purchase;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    .line 428
    return-void
.end method
