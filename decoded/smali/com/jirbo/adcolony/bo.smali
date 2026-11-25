.class Lcom/jirbo/adcolony/bo;
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
    .line 1185
    iput-object p1, p0, Lcom/jirbo/adcolony/bo;->b:Lcom/jirbo/adcolony/bi;

    iput-object p2, p0, Lcom/jirbo/adcolony/bo;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/jirbo/adcolony/bo;->b:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/bo;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1189
    iget-object v0, p0, Lcom/jirbo/adcolony/bo;->b:Lcom/jirbo/adcolony/bi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/bi;->a(Z)V

    .line 1190
    iget-object v0, p0, Lcom/jirbo/adcolony/bo;->b:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/jirbo/adcolony/ADCVideo;->q:J

    .line 1191
    return-void
.end method
