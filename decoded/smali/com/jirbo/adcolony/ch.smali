.class Lcom/jirbo/adcolony/ch;
.super Lcom/jirbo/adcolony/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/y;

.field final synthetic b:D

.field final synthetic c:Lcom/jirbo/adcolony/cb;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/cb;Lcom/jirbo/adcolony/cb;Lcom/jirbo/adcolony/y;D)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jirbo/adcolony/ch;->c:Lcom/jirbo/adcolony/cb;

    iput-object p3, p0, Lcom/jirbo/adcolony/ch;->a:Lcom/jirbo/adcolony/y;

    iput-wide p4, p0, Lcom/jirbo/adcolony/ch;->b:D

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/cv;-><init>(Lcom/jirbo/adcolony/cb;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 4

    .prologue
    .line 155
    sget-boolean v0, Lcom/jirbo/adcolony/ba;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ch;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->v:Lcom/jirbo/adcolony/dl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ch;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->v:Lcom/jirbo/adcolony/dl;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/dl;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/jirbo/adcolony/ch;->b:D

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 157
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "V4VC validated."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ba;->f:Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ch;->n:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->d:Lcom/jirbo/adcolony/ep;

    iget-wide v2, p0, Lcom/jirbo/adcolony/ch;->b:D

    iget-object v1, p0, Lcom/jirbo/adcolony/ch;->a:Lcom/jirbo/adcolony/y;

    invoke-virtual {v0, v2, v3, v1}, Lcom/jirbo/adcolony/ep;->a(DLcom/jirbo/adcolony/y;)V

    .line 161
    return-void
.end method
