.class Lcom/jirbo/adcolony/cg;
.super Lcom/jirbo/adcolony/cv;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/y;

.field final synthetic b:Lcom/jirbo/adcolony/cb;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/cb;Lcom/jirbo/adcolony/cb;Lcom/jirbo/adcolony/y;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jirbo/adcolony/cg;->b:Lcom/jirbo/adcolony/cb;

    iput-object p3, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/cv;-><init>(Lcom/jirbo/adcolony/cb;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/dy;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v0, v0, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/dy;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/y;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->g:Ljava/lang/String;

    const-string/jumbo v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->b:Lcom/jirbo/adcolony/cb;

    const-string/jumbo v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"ad_slot\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v3, v3, Lcom/jirbo/adcolony/cb;->e:Lcom/jirbo/adcolony/er;

    iget v3, v3, Lcom/jirbo/adcolony/er;->j:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", \"replay\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/y;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/cb;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/y;)V

    .line 139
    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/dc;->p:Z

    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/dc;->q:Z

    .line 141
    invoke-static {}, Lcom/jirbo/adcolony/ba;->f()V

    .line 142
    iget-object v0, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v0, v0, Lcom/jirbo/adcolony/y;->d:Lcom/jirbo/adcolony/dg;

    iget-object v0, v0, Lcom/jirbo/adcolony/dg;->j:Lcom/jirbo/adcolony/d;

    iget-object v1, p0, Lcom/jirbo/adcolony/cg;->a:Lcom/jirbo/adcolony/y;

    iget-object v1, v1, Lcom/jirbo/adcolony/y;->e:Lcom/jirbo/adcolony/dc;

    iget-object v1, v1, Lcom/jirbo/adcolony/dc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/d;

    .line 144
    :cond_1
    return-void
.end method
