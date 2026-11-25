.class Lcom/jirbo/adcolony/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/bi;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/bi;)V
    .locals 0

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/jirbo/adcolony/bn;->a:Lcom/jirbo/adcolony/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/jirbo/adcolony/bn;->a:Lcom/jirbo/adcolony/bi;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/bi;->D:Z

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/jirbo/adcolony/bn;->a:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/bn;->a:Lcom/jirbo/adcolony/bi;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/bi;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/bn;->a:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/jirbo/adcolony/bn;->a:Lcom/jirbo/adcolony/bi;

    iget-object v0, v0, Lcom/jirbo/adcolony/bi;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->l:Z

    .line 1157
    iget-object v0, p0, Lcom/jirbo/adcolony/bn;->a:Lcom/jirbo/adcolony/bi;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/bi;->f()V

    .line 1160
    :cond_0
    return-void
.end method
