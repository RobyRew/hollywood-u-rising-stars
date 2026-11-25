.class Lcom/jirbo/adcolony/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/an;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/an;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 493
    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->m:Z

    if-eqz v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->G:Lcom/jirbo/adcolony/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->G:Lcom/jirbo/adcolony/am;

    iget-object v1, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    invoke-interface {v0, v1, v2}, Lcom/jirbo/adcolony/am;->a(Lcom/jirbo/adcolony/an;Z)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    invoke-virtual {v0, v2, v2}, Lcom/jirbo/adcolony/an;->a(ZZ)V

    .line 498
    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/an;->r:Z

    .line 507
    :cond_1
    :goto_0
    return-void

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->N:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iget-object v1, v1, Lcom/jirbo/adcolony/an;->J:Lcom/jirbo/adcolony/m;

    iget-object v1, v1, Lcom/jirbo/adcolony/m;->a:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->G:Lcom/jirbo/adcolony/am;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->G:Lcom/jirbo/adcolony/am;

    iget-object v1, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    invoke-interface {v0, v1, v3}, Lcom/jirbo/adcolony/am;->a(Lcom/jirbo/adcolony/an;Z)V

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    iput-boolean v3, v0, Lcom/jirbo/adcolony/an;->r:Z

    .line 505
    iget-object v0, p0, Lcom/jirbo/adcolony/ap;->a:Lcom/jirbo/adcolony/an;

    invoke-virtual {v0, v3, v2}, Lcom/jirbo/adcolony/an;->a(ZZ)V

    goto :goto_0
.end method
