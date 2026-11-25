.class Lcom/jirbo/adcolony/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/aq;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/aq;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/jirbo/adcolony/ar;->a:Lcom/jirbo/adcolony/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/jirbo/adcolony/ar;->a:Lcom/jirbo/adcolony/aq;

    iget-object v0, v0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ar;->a:Lcom/jirbo/adcolony/aq;

    iget-object v0, v0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an;->u:Z

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/jirbo/adcolony/ar;->a:Lcom/jirbo/adcolony/aq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/aq;->b:Z

    .line 1141
    iget-object v0, p0, Lcom/jirbo/adcolony/ar;->a:Lcom/jirbo/adcolony/aq;

    iget-object v0, v0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/an;->p:Z

    .line 1142
    iget-object v0, p0, Lcom/jirbo/adcolony/ar;->a:Lcom/jirbo/adcolony/aq;

    iget-object v0, v0, Lcom/jirbo/adcolony/aq;->c:Lcom/jirbo/adcolony/an;

    iget-object v0, v0, Lcom/jirbo/adcolony/an;->K:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1144
    :cond_0
    return-void
.end method
