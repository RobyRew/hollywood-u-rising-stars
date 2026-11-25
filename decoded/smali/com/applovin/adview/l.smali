.class Lcom/applovin/adview/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/applovin/adview/k;


# direct methods
.method constructor <init>(Lcom/applovin/adview/k;II)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/l;->c:Lcom/applovin/adview/k;

    iput p2, p0, Lcom/applovin/adview/l;->a:I

    iput p3, p0, Lcom/applovin/adview/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/adview/l;->c:Lcom/applovin/adview/k;

    iget-object v0, v0, Lcom/applovin/adview/k;->a:Lcom/applovin/adview/j;

    iget-object v0, v0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->c(Lcom/applovin/adview/AppLovinInterstitialActivity;)Lcom/applovin/c/l;

    move-result-object v0

    const-string/jumbo v1, "AppLovinInterstitialActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media player error ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/applovin/adview/l;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/applovin/adview/l;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") - showing close button."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/c/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/adview/l;->c:Lcom/applovin/adview/k;

    iget-object v0, v0, Lcom/applovin/adview/k;->a:Lcom/applovin/adview/j;

    iget-object v0, v0, Lcom/applovin/adview/j;->a:Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialActivity;->d(Lcom/applovin/adview/AppLovinInterstitialActivity;)V

    return-void
.end method
