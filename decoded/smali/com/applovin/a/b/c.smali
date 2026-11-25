.class public Lcom/applovin/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/applovin/c/g;

.field private c:Lcom/applovin/c/h;

.field private d:Ljava/lang/String;

.field private e:Lcom/applovin/a/b/b;

.field private f:Lcom/applovin/a/a/al;

.field private g:F

.field private h:F

.field private i:I

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/a/b/a;
    .locals 20

    new-instance v2, Lcom/applovin/a/b/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/applovin/a/b/c;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/applovin/a/b/c;->b:Lcom/applovin/c/g;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/applovin/a/b/c;->c:Lcom/applovin/c/h;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/applovin/a/b/c;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/applovin/a/b/c;->e:Lcom/applovin/a/b/b;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/applovin/a/b/c;->f:Lcom/applovin/a/a/al;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/applovin/a/b/c;->g:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/applovin/a/b/c;->h:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/applovin/a/b/c;->i:I

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/applovin/a/b/c;->j:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/applovin/a/b/c;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/applovin/a/b/c;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/a/b/c;->m:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/a/b/c;->n:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/applovin/a/b/c;->o:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/applovin/a/b/a;-><init>(Ljava/lang/String;Lcom/applovin/c/g;Lcom/applovin/c/h;Ljava/lang/String;Lcom/applovin/a/b/b;Lcom/applovin/a/a/al;FFIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/a/b/cg;)V

    return-object v2
.end method

.method public a(F)Lcom/applovin/a/b/c;
    .locals 0

    iput p1, p0, Lcom/applovin/a/b/c;->g:F

    return-object p0
.end method

.method public a(I)Lcom/applovin/a/b/c;
    .locals 0

    iput p1, p0, Lcom/applovin/a/b/c;->i:I

    return-object p0
.end method

.method public a(J)Lcom/applovin/a/b/c;
    .locals 1

    iput-wide p1, p0, Lcom/applovin/a/b/c;->j:J

    return-object p0
.end method

.method public a(Lcom/applovin/a/a/al;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->f:Lcom/applovin/a/a/al;

    return-object p0
.end method

.method public a(Lcom/applovin/a/b/b;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->e:Lcom/applovin/a/b/b;

    return-object p0
.end method

.method public a(Lcom/applovin/c/g;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->b:Lcom/applovin/c/g;

    return-object p0
.end method

.method public a(Lcom/applovin/c/h;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->c:Lcom/applovin/c/h;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public b(F)Lcom/applovin/a/b/c;
    .locals 0

    iput p1, p0, Lcom/applovin/a/b/c;->h:F

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->m:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/applovin/a/b/c;
    .locals 0

    iput-object p1, p0, Lcom/applovin/a/b/c;->o:Ljava/lang/String;

    return-object p0
.end method
