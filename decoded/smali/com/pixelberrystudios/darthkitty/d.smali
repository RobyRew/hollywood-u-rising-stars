.class Lcom/pixelberrystudios/darthkitty/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pixelberrystudios/iab/ak;


# instance fields
.field final synthetic a:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;

.field final synthetic b:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;


# direct methods
.method constructor <init>(Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/pixelberrystudios/darthkitty/d;->b:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper;

    iput-object p2, p0, Lcom/pixelberrystudios/darthkitty/d;->a:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pixelberrystudios/iab/am;)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/d;->a:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/pixelberrystudios/darthkitty/d;->a:Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;

    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/am;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/pixelberrystudios/iab/am;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pixelberrystudios/darthkitty/DKAmazonHelper$OnAmazonAuthListener;->onAmazonAuthCompleted(ZLjava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
