.class Lcom/jirbo/adcolony/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jirbo/adcolony/bi;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/bi;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/jirbo/adcolony/bq;->b:Lcom/jirbo/adcolony/bi;

    iput-object p2, p0, Lcom/jirbo/adcolony/bq;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/jirbo/adcolony/bq;->b:Lcom/jirbo/adcolony/bi;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/bi;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/bq;->b:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->N:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/bq;->b:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/bq;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1394
    return-void
.end method
