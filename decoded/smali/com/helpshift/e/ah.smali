.class public Lcom/helpshift/e/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/helpshift/e/d;

.field static b:Lcom/helpshift/e/l;

.field static c:Lcom/helpshift/e/m;

.field static d:Lcom/helpshift/e/n;

.field static e:Lcom/helpshift/e/o;

.field static f:Lcom/helpshift/e/p;

.field static g:Lcom/helpshift/e/q;

.field static h:Lcom/helpshift/e/r;

.field static i:Lcom/helpshift/e/s;

.field static j:Lcom/helpshift/e/e;

.field static k:Lcom/helpshift/e/f;

.field static l:Lcom/helpshift/e/g;

.field static m:Lcom/helpshift/e/h;

.field static n:Lcom/helpshift/e/i;

.field static o:Lcom/helpshift/e/j;

.field static p:Lcom/helpshift/e/k;

.field private static q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/e/ah;->q:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x55

    const/16 v9, 0x33

    const/16 v8, 0x25

    const/16 v7, 0x11

    const/4 v1, 0x0

    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 74
    :cond_0
    const-string/jumbo p0, ""

    .line 133
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move v0, v1

    .line 77
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 79
    const/16 v3, 0x80

    if-le v2, v3, :cond_4

    .line 86
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_16

    aget-char v4, v0, v1

    .line 90
    const/16 v5, 0x80

    if-ge v4, v5, :cond_5

    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_5
    shr-int/lit8 v5, v4, 0x8

    .line 94
    and-int/lit16 v4, v4, 0xff

    .line 96
    if-lez v5, :cond_6

    if-ge v5, v7, :cond_6

    sget-object v6, Lcom/helpshift/e/ah;->a:Lcom/helpshift/e/d;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/d;->a(II)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 97
    sget-object v6, Lcom/helpshift/e/ah;->a:Lcom/helpshift/e/d;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/d;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 98
    :cond_6
    if-lt v5, v7, :cond_7

    if-ge v5, v8, :cond_7

    sget-object v6, Lcom/helpshift/e/ah;->b:Lcom/helpshift/e/l;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/l;->a(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 99
    sget-object v6, Lcom/helpshift/e/ah;->b:Lcom/helpshift/e/l;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/l;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 100
    :cond_7
    if-lt v5, v8, :cond_8

    if-ge v5, v9, :cond_8

    sget-object v6, Lcom/helpshift/e/ah;->c:Lcom/helpshift/e/m;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/m;->a(II)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 101
    sget-object v6, Lcom/helpshift/e/ah;->c:Lcom/helpshift/e/m;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/m;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 102
    :cond_8
    if-lt v5, v9, :cond_9

    if-ge v5, v10, :cond_9

    sget-object v6, Lcom/helpshift/e/ah;->d:Lcom/helpshift/e/n;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/n;->a(II)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 103
    sget-object v6, Lcom/helpshift/e/ah;->d:Lcom/helpshift/e/n;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/n;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 104
    :cond_9
    if-lt v5, v10, :cond_a

    const/16 v6, 0x62

    if-ge v5, v6, :cond_a

    sget-object v6, Lcom/helpshift/e/ah;->e:Lcom/helpshift/e/o;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/o;->a(II)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 105
    sget-object v6, Lcom/helpshift/e/ah;->e:Lcom/helpshift/e/o;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/o;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 106
    :cond_a
    const/16 v6, 0x62

    if-lt v5, v6, :cond_b

    const/16 v6, 0x6f

    if-ge v5, v6, :cond_b

    sget-object v6, Lcom/helpshift/e/ah;->f:Lcom/helpshift/e/p;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/p;->a(II)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 107
    sget-object v6, Lcom/helpshift/e/ah;->f:Lcom/helpshift/e/p;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/p;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 108
    :cond_b
    const/16 v6, 0x6f

    if-lt v5, v6, :cond_c

    const/16 v6, 0x79

    if-ge v5, v6, :cond_c

    sget-object v6, Lcom/helpshift/e/ah;->g:Lcom/helpshift/e/q;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/q;->a(II)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 109
    sget-object v6, Lcom/helpshift/e/ah;->g:Lcom/helpshift/e/q;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/q;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 110
    :cond_c
    const/16 v6, 0x79

    if-lt v5, v6, :cond_d

    const/16 v6, 0x83

    if-ge v5, v6, :cond_d

    sget-object v6, Lcom/helpshift/e/ah;->h:Lcom/helpshift/e/r;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/r;->a(II)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 111
    sget-object v6, Lcom/helpshift/e/ah;->h:Lcom/helpshift/e/r;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/r;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 112
    :cond_d
    const/16 v6, 0x83

    if-lt v5, v6, :cond_e

    const/16 v6, 0x8d

    if-ge v5, v6, :cond_e

    sget-object v6, Lcom/helpshift/e/ah;->i:Lcom/helpshift/e/s;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/s;->a(II)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 113
    sget-object v6, Lcom/helpshift/e/ah;->i:Lcom/helpshift/e/s;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/s;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 114
    :cond_e
    const/16 v6, 0x8d

    if-lt v5, v6, :cond_f

    const/16 v6, 0x97

    if-ge v5, v6, :cond_f

    sget-object v6, Lcom/helpshift/e/ah;->j:Lcom/helpshift/e/e;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/e;->a(II)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 115
    sget-object v6, Lcom/helpshift/e/ah;->j:Lcom/helpshift/e/e;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/e;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 116
    :cond_f
    const/16 v6, 0x97

    if-lt v5, v6, :cond_10

    const/16 v6, 0xa3

    if-ge v5, v6, :cond_10

    sget-object v6, Lcom/helpshift/e/ah;->k:Lcom/helpshift/e/f;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/f;->a(II)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 117
    sget-object v6, Lcom/helpshift/e/ah;->k:Lcom/helpshift/e/f;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/f;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 118
    :cond_10
    const/16 v6, 0xa3

    if-lt v5, v6, :cond_11

    const/16 v6, 0xb6

    if-ge v5, v6, :cond_11

    sget-object v6, Lcom/helpshift/e/ah;->l:Lcom/helpshift/e/g;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/g;->a(II)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 119
    sget-object v6, Lcom/helpshift/e/ah;->l:Lcom/helpshift/e/g;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/g;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 120
    :cond_11
    const/16 v6, 0xb6

    if-lt v5, v6, :cond_12

    const/16 v6, 0xc0

    if-ge v5, v6, :cond_12

    sget-object v6, Lcom/helpshift/e/ah;->m:Lcom/helpshift/e/h;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/h;->a(II)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 121
    sget-object v6, Lcom/helpshift/e/ah;->m:Lcom/helpshift/e/h;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/h;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 122
    :cond_12
    const/16 v6, 0xc0

    if-lt v5, v6, :cond_13

    const/16 v6, 0xcb

    if-ge v5, v6, :cond_13

    sget-object v6, Lcom/helpshift/e/ah;->n:Lcom/helpshift/e/i;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/i;->a(II)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 123
    sget-object v6, Lcom/helpshift/e/ah;->n:Lcom/helpshift/e/i;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/i;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 124
    :cond_13
    const/16 v6, 0xcb

    if-lt v5, v6, :cond_14

    const/16 v6, 0xd7

    if-ge v5, v6, :cond_14

    sget-object v6, Lcom/helpshift/e/ah;->o:Lcom/helpshift/e/j;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/j;->a(II)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 125
    sget-object v6, Lcom/helpshift/e/ah;->o:Lcom/helpshift/e/j;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/j;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 126
    :cond_14
    const/16 v6, 0xd7

    if-lt v5, v6, :cond_15

    sget-object v6, Lcom/helpshift/e/ah;->o:Lcom/helpshift/e/j;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/j;->a(II)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 127
    sget-object v6, Lcom/helpshift/e/ah;->o:Lcom/helpshift/e/j;

    invoke-virtual {v6, v5, v4}, Lcom/helpshift/e/j;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 129
    :cond_15
    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 133
    :cond_16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/helpshift/e/ah;->q:Z

    return v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/helpshift/e/ah;->q:Z

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/helpshift/e/d;

    invoke-direct {v0}, Lcom/helpshift/e/d;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->a:Lcom/helpshift/e/d;

    .line 33
    new-instance v0, Lcom/helpshift/e/l;

    invoke-direct {v0}, Lcom/helpshift/e/l;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->b:Lcom/helpshift/e/l;

    .line 34
    new-instance v0, Lcom/helpshift/e/m;

    invoke-direct {v0}, Lcom/helpshift/e/m;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->c:Lcom/helpshift/e/m;

    .line 35
    new-instance v0, Lcom/helpshift/e/n;

    invoke-direct {v0}, Lcom/helpshift/e/n;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->d:Lcom/helpshift/e/n;

    .line 36
    new-instance v0, Lcom/helpshift/e/o;

    invoke-direct {v0}, Lcom/helpshift/e/o;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->e:Lcom/helpshift/e/o;

    .line 37
    new-instance v0, Lcom/helpshift/e/p;

    invoke-direct {v0}, Lcom/helpshift/e/p;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->f:Lcom/helpshift/e/p;

    .line 38
    new-instance v0, Lcom/helpshift/e/q;

    invoke-direct {v0}, Lcom/helpshift/e/q;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->g:Lcom/helpshift/e/q;

    .line 39
    new-instance v0, Lcom/helpshift/e/r;

    invoke-direct {v0}, Lcom/helpshift/e/r;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->h:Lcom/helpshift/e/r;

    .line 40
    new-instance v0, Lcom/helpshift/e/s;

    invoke-direct {v0}, Lcom/helpshift/e/s;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->i:Lcom/helpshift/e/s;

    .line 41
    new-instance v0, Lcom/helpshift/e/e;

    invoke-direct {v0}, Lcom/helpshift/e/e;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->j:Lcom/helpshift/e/e;

    .line 42
    new-instance v0, Lcom/helpshift/e/f;

    invoke-direct {v0}, Lcom/helpshift/e/f;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->k:Lcom/helpshift/e/f;

    .line 43
    new-instance v0, Lcom/helpshift/e/g;

    invoke-direct {v0}, Lcom/helpshift/e/g;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->l:Lcom/helpshift/e/g;

    .line 44
    new-instance v0, Lcom/helpshift/e/h;

    invoke-direct {v0}, Lcom/helpshift/e/h;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->m:Lcom/helpshift/e/h;

    .line 45
    new-instance v0, Lcom/helpshift/e/i;

    invoke-direct {v0}, Lcom/helpshift/e/i;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->n:Lcom/helpshift/e/i;

    .line 46
    new-instance v0, Lcom/helpshift/e/j;

    invoke-direct {v0}, Lcom/helpshift/e/j;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->o:Lcom/helpshift/e/j;

    .line 47
    new-instance v0, Lcom/helpshift/e/k;

    invoke-direct {v0}, Lcom/helpshift/e/k;-><init>()V

    sput-object v0, Lcom/helpshift/e/ah;->p:Lcom/helpshift/e/k;

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/helpshift/e/ah;->q:Z

    .line 50
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/helpshift/e/ah;->a:Lcom/helpshift/e/d;

    .line 54
    sput-object v0, Lcom/helpshift/e/ah;->b:Lcom/helpshift/e/l;

    .line 55
    sput-object v0, Lcom/helpshift/e/ah;->c:Lcom/helpshift/e/m;

    .line 56
    sput-object v0, Lcom/helpshift/e/ah;->d:Lcom/helpshift/e/n;

    .line 57
    sput-object v0, Lcom/helpshift/e/ah;->e:Lcom/helpshift/e/o;

    .line 58
    sput-object v0, Lcom/helpshift/e/ah;->f:Lcom/helpshift/e/p;

    .line 59
    sput-object v0, Lcom/helpshift/e/ah;->g:Lcom/helpshift/e/q;

    .line 60
    sput-object v0, Lcom/helpshift/e/ah;->h:Lcom/helpshift/e/r;

    .line 61
    sput-object v0, Lcom/helpshift/e/ah;->i:Lcom/helpshift/e/s;

    .line 62
    sput-object v0, Lcom/helpshift/e/ah;->j:Lcom/helpshift/e/e;

    .line 63
    sput-object v0, Lcom/helpshift/e/ah;->k:Lcom/helpshift/e/f;

    .line 64
    sput-object v0, Lcom/helpshift/e/ah;->l:Lcom/helpshift/e/g;

    .line 65
    sput-object v0, Lcom/helpshift/e/ah;->m:Lcom/helpshift/e/h;

    .line 66
    sput-object v0, Lcom/helpshift/e/ah;->n:Lcom/helpshift/e/i;

    .line 67
    sput-object v0, Lcom/helpshift/e/ah;->o:Lcom/helpshift/e/j;

    .line 68
    sput-object v0, Lcom/helpshift/e/ah;->p:Lcom/helpshift/e/k;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/helpshift/e/ah;->q:Z

    .line 70
    return-void
.end method
