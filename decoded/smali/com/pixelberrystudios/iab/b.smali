.class Lcom/pixelberrystudios/iab/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pixelberrystudios/iab/AmazonHelper;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/iab/AmazonHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/pixelberrystudios/iab/b;->b:Lcom/pixelberrystudios/iab/AmazonHelper;

    iput-object p2, p0, Lcom/pixelberrystudios/iab/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/pixelberrystudios/iab/b;->b:Lcom/pixelberrystudios/iab/AmazonHelper;

    invoke-static {v0}, Lcom/pixelberrystudios/iab/AmazonHelper;->a(Lcom/pixelberrystudios/iab/AmazonHelper;)Lcom/pixelberrystudios/iab/aj;

    move-result-object v0

    new-instance v1, Lcom/pixelberrystudios/iab/am;

    const/4 v2, 0x4

    const-string/jumbo v3, "Purchase item unavailable."

    invoke-direct {v1, v2, v3}, Lcom/pixelberrystudios/iab/am;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pixelberrystudios/iab/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/pixelberrystudios/iab/aj;->a(Lcom/pixelberrystudios/iab/am;Lcom/pixelberrystudios/iab/Purchase;Ljava/lang/String;)V

    .line 359
    return-void
.end method
