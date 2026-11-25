.class Lcom/jirbo/adcolony/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1702
    iget-boolean v2, p0, Lcom/jirbo/adcolony/dp;->a:Z

    if-nez v2, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return v0

    .line 1703
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v3, p0, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1704
    :cond_2
    sget-object v2, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v3, p0, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/h;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1710
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1729
    :goto_0
    return v0

    .line 1712
    :cond_0
    const-string/jumbo v1, "enabled"

    invoke-virtual {p1, v1, v0}, Lcom/jirbo/adcolony/h;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/dp;->a:Z

    .line 1713
    const-string/jumbo v1, "delay"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dp;->e:I

    .line 1714
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dp;->b:I

    .line 1715
    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dp;->c:I

    .line 1716
    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/dp;->d:I

    .line 1717
    const-string/jumbo v1, "image_normal"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    .line 1718
    const-string/jumbo v1, "image_normal_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->g:Ljava/lang/String;

    .line 1719
    const-string/jumbo v1, "image_down"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    .line 1720
    const-string/jumbo v1, "image_down_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->i:Ljava/lang/String;

    .line 1721
    const-string/jumbo v1, "click_action"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->j:Ljava/lang/String;

    .line 1722
    const-string/jumbo v1, "click_action_type"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->k:Ljava/lang/String;

    .line 1723
    const-string/jumbo v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->l:Ljava/lang/String;

    .line 1724
    const-string/jumbo v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->m:Ljava/lang/String;

    .line 1725
    const-string/jumbo v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->n:Ljava/lang/String;

    .line 1726
    const-string/jumbo v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->o:Ljava/lang/String;

    .line 1727
    const-string/jumbo v1, "event"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/dp;->p:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1734
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v1, p0, Lcom/jirbo/adcolony/dp;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/dp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->c:Lcom/jirbo/adcolony/ej;

    iget-object v1, p0, Lcom/jirbo/adcolony/dp;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/dp;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    return-void
.end method
